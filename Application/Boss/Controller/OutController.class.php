<?php

/*
 *  出库商品
 */

namespace Boss\Controller;

use Common\Controller\AuthController;
use Think\Model;
use Think\Page;

class OutController extends AuthController {
    /*
     * 显示本地数据库的商品
     * 
     */

    public function index() {

        $model = new Model();
        $sql = "use " . $_SESSION['dbName'];
        $model->query($sql);

        $shop_id = $_GET['shopid'];

        if ($shop_id == "") {
            $shop_id = $_SESSION["shop_id"];
        }
        if ($shop_id == "") {
            $this->error("请先点击具体的店铺，再回来点此！");
        }
        $shopName = $_SESSION["shop_name"];
        $this->assign("shopName", $shopName);

        $this->assign("shopid", $shop_id);

        $out = D($shop_id . "Storage");
        $res = $out->select();
        if ($res == "") {
            $res = "没有任何数据";
            $this->assign("res", $res);
        } else {
            $this->assign("res", $res);

            //   parent::showPage($shop_id . "Storage", "10", $where = "", $order = "id desc", $group = "product");
            $tbName = D($shop_id . "Storage"); // 实例化Data数据对象
            $count = $tbName->where($where = "")->count(); // 查询满足要求的总记录数

            $Page = new Page($count, $everypage = "10"); // 实例化分页类 传入总记录数和每页显示的记录数(25)
            $show = $Page->show(); // 分页显示输出// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
            $list = $tbName->field("id,encode,barcode,product,outtime,sum(outamount) as outamount,outprice,outpresell,outsum,people")->where($where = "")->group($group = "product")->order($order = "id desc")->limit($Page->firstRow . ',' . $Page->listRows)->select();
            $this->assign('list', $list); // 赋值数据集
            $this->assign('page', $show); // 赋值分页输出
        }

        /*
         * 金额
         */
        $total = $out->where($where)->sum("outsum");
        $this->assign("total", $total);
        /*
         * 数量
         */
        $num = $out->where($where)->sum("outamount");
        $this->assign("num", $num);
        /*
         * 单子数
         */
        $id = $out->where($where)->count("id");
        $this->assign("id", $id);


        $this->display();
    }

    /*
     *  look()  查看主库商品的详细信息
     * 
     *  1、 根据get传来的 barcode 查主库
     *  
     *  2、 信息显示在弹出层上
     */

    public function look() {

        $id = $_GET['id'];
        $where['barcode'] = $id;
        $goods = D('Goods');

        $res = $goods->where($where)->select();

        $shopName = $_SESSION["shop_name"];
        $this->assign("shopName", $shopName);

        $this->assign("look", $res);

        $this->display();

        if (!$res) {
            $this->error("不存在这个条形码对应的商品 ？？");
        } else {
            $this->assign("look", $res);
        }
    }

    /*
     *  add() 商品出库 主要先添加 tb_out  后更新 tb_in
     * 
     *  1、根据 ajax 通过 get 传递的 barcode 值 查询 tb_in 的 总inamount ，然后显示到前端指定的位置
     * 
     *  2、获取前端所有的数据，并写入 tb_out
     * 
     *  3、条件 barcode inamount>0 查询 tb_in 中的 id  inamount 排序 id ASC  的一条数据，根据 所得的id 条件更新 inamount 的值
     * 
     *  4、根据 outamount 数值循环执行 3 步骤
     * 
     */

    public function add() {
        $model = new Model();
        $sql = "use " . $_SESSION['dbName'];
        $model->query($sql);

        if (!IS_POST) {
            $shop_id = $_GET['shopid'];
            if ($shop_id == "") {
                $shop_id = $_SESSION["shop_id"];
            }
            if ($shop_id == "") {
                $this->error("请先点击具体的店铺，再回来点此！");
            }
            $shopName = $_SESSION["shop_name"];
            $this->assign("shopName", $shopName);
            $this->assign("shopid", $shop_id);
            $this->display();
        } else {
            $shop_id = $_POST['shopid'];
            if ($shop_id == "") {
                $shop_id = $_SESSION["shop_id"];
            }
            if ($shop_id == "") {
                $this->error("请先点击具体的店铺，再回来点此！");
            }
            $shopName = $_SESSION["shop_name"];
            $this->assign("shopName", $shopName);

            $out = D($shop_id . "Storage");
            $code = $_POST['code'];
            $outamount = $_POST['outamount'];

            $shop = D($shop_id . "Goods");

            $sh = $shop->field("id, product, letter, price")->where("barcode = $code")->find();

            /*
             * 获取所有数据
             */
            $data['encode'] = "OUT" . time();
            $data['barcode'] = $code;
            $data['product'] = $sh['product'];
            $data['letter'] = $sh['letter'];

            $data['outprice'] = $_POST['outprice'];
            $data['outpresell'] = $_POST['outpresell'];
            $data['outamount'] = $outamount;
            $data['outsum'] = $outamount * $_POST['outprice'];
            $data['people'] = $_SESSION['nameReal'];
            $data['outtime'] = date("Y-m-d H:i:s");




            $res = $out->add($data);
            if (!$res) {
                $this->error("商品入库失败");
                return false;
            } else {
                $this->success("商品入库成功 ！！", U('Out/index', array('shopid' => $shop_id)));
            }
        }
    }

    /*
     * shopID() 获取零售商的ID  货要送到哪
     * 
     */



    /*
     * 
     * ajax()   异步提交条形码 根据条形码 查出库存的商品名、总数量  然后把名称返回到前端
     *
     * 1、接收get传来的条形码 barcode
     * 
     * 2、根据 barcode 提取  tb_in 表中的    product   总的inamount
     * 
     *          
     *    如果条形码找不到该商品，提示去采购该商品
     *    
     *    如果找到商品，请选择订单的商品 ， 把选择订单的 id 传回 提取 tb_in 表的 inamount 
     * 
     * 3、在特定的位置输出对应的值
     * 
     */

    public function ajax() {

        /*
         *  查询条形码
         * 
         * 1、本地库没有,就去找主库
         * 
         * 2、主库没有，向主库添加商品
         * 
         */
        $model = new Model();
        $sql = "use " . $_SESSION['dbName'];
        $model->query($sql);

        $shop_id = $_GET['shopid'];
        if ($shop_id == "") {
            $shop_id = $_SESSION["shop_id"];
        }
        if ($shop_id == "") {
            $this->error("请先点击具体的店铺，再回来点此！");
        }
        $shopName = $_SESSION["shop_name"];
        $this->assign("shopName", $shopName);

        $out = D($shop_id . "Goods");

        $code = trim($_POST['code']);
        if ($code != "") {
            $where['barcode'] = array("like", "%$code%");
            $s = strtoupper($code);
            $where['letter'] = array("like", "%$s%");
            $where['_logic'] = 'OR';


            $res = $out->field("id, barcode, product, price, letter")->where($where)->order('id desc')->select(); // 商品名

            if ($res) {
                $this->assign("res", $res);
            } else {

                echo "<div class = 'form-group' style = 'margin-top:30px;'>
<label for = 'inputPassword3' class = 'col-sm-2 control-label'></label>
<div class = 'col-sm-7' ><font style = 'color:red;font-size:20px;margin-top:6px'>自有商品中没有这个商品，请先去<a href = '" . U('Goods/erpGoods') . "'> 添 加 </a>该商品</font><input type = 'text' style = 'display:none'/></div>
</div>";
            }
            $this->assign("shopid", $shop_id);
            $this->display();
        }
    }

    /*
     * 更新出库商品
     */

    public function update() {
        $model = new Model();
        $sql = "use " . $_SESSION['dbName'];
        $model->query($sql);



        if (!IS_POST) {
            $shop_id = $_GET['shopid'];
            if ($shop_id == "") {
                $shop_id = $_SESSION["shop_id"];
            }
            if ($shop_id == "") {
                $this->error("请先点击具体的店铺，再回来点此！");
            }
            $shopName = $_SESSION["shop_name"];
            $this->assign("shopName", $shopName);

            $out = D($shop_id . "Storage");
            $outid = $_GET['outid'];
            if (empty($outid)) {
                $this->error("非法操作！", U('Out /index'));
            } else {
                $where['id'] = $outid;

                $this->assign("shopid", $shop_id);

                $res = $out->where($where)->select();
                $this->assign("res", $res);
                $this->display();
            }
        } else {
            $shop_id = $_POST['shopid'];

            $out = D($shop_id . "Storage");
            $where['id'] = $_POST ['outid'];
            $shop_id = $_POST['shopid'];

            $data['outpresell'] = $_POST['presell'];
            $res = $out->where($where)->save($data);

            if (!$res) {
                $this->error("数据更新失败 ？？");
            } else {
                $this->success("数据更新成功 ！！", U('Out/index', array('shopid' => $shop_id)));
            }
        }
    }

    /*
     * 删除出库商品
     */

    public function delete() {
        $model = new Model();
        $sql = "use " . $_SESSION['dbName'];
        $model->query($sql);

        $outid = $_GET['outid'];
        $shop_id = $_GET['shopid'];
        if ($shop_id == "") {
            $shop_id = $_SESSION["shop_id"];
        }
        if ($shop_id == "") {
            $this->error("请先点击具体的店铺，再回来点此！");
        }
        $shopName = $_SESSION["shop_name"];
        $this->assign("shopName", $shopName);
        if (empty($outid)) {
            $this->error("非法操作！", U('Out /index'));
        } else {

            $out = D($shop_id . "Storage");
            $where['id'] = $outid;
            $res = $out->where($where)->delete();
            if ($res) {
                $this->success("删除成功", U('Out/index', array('shopid' => $shop_id)));
            } else {
                $this->error("删除失败！");
            }
        }
    }

    /*
     * 用户搜索 searching（）
     * 
     * $str  关键字
     * 
     */

    public function searching() {
        if (!IS_GET) {
            $this->display();
        } else {
            $model = new Model();
            $sql = "use " . $_SESSION['dbName'];
            $model->query($sql);

            $bar = trim($_GET['barcode']);
            if ($bar != "") {

                $where['barcode'] = array('like', "%$bar%");
                $this->assign("bar", $bar);
            }

            $pro = trim($_GET['product']);
            if ($pro != "") {

                $where['product'] = array('like', "%$pro%");
                $this->assign("pro", $pro);
            }

            $presell = trim($_GET['presell']);
            if ($presell != "") {

                $where['outpresell'] = array('like', "%$presell%");
                $this->assign("presell", $presell);
            }

            $let = trim($_GET['letter']);
            if ($let != "") {
                $let = strtoupper($let);
                $where['letter'] = array('like', "%$let%");
                $this->assign("let", $let);
            }
            // 库存
            $amount = trim($_GET['outamount']);
            if ($amount != "") {
                $where['outamount'] = array('gt', "$amount");
                $this->assign("amount", $amount);
            }

            $price = trim($_GET['outprice']);
            if ($price != "") {

                $where['outprice'] = array('like', "%$price%");
                $this->assign("price", $price);
            }

            $sum = trim($_GET['outsum']);
            if ($sum != "") {

                $where['outsum'] = array('like', "%$sum%");
                $this->assign("sum", $sum);
            }

            $people = trim($_GET['people']);
            if ($people != "") {

                $where['people'] = array('like', "%$people%");
                $this->assign("people", $people);
            }

            $start = trim($_GET['start']);

            $end = trim($_GET['end']);
            if ($end != "") {

                $where['outtime'] = array('between', array($start . " 00:00:00", $end . " 59:59:59"));
                $this->assign("date", $people);
            }

            $shop_id = $_GET['shopid'];


            $shopName = $_SESSION["shop_name"];
            $this->assign("shopName", $shopName);

            $this->assign("shop", U('Out/index', array('shopid' => $shop_id)));
            $this->assign("shopid", $shop_id);


            //  parent::showPage($shop_id . "Storage", "10", $where);

            $tbName = D($shop_id . "Storage"); // 实例化Data数据对象
            $count = $tbName->where($where)->count(); // 查询满足要求的总记录数

            $Page = new Page($count, $everypage = "10"); // 实例化分页类 传入总记录数和每页显示的记录数(25)
            $show = $Page->show(); // 分页显示输出// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
            $list = $tbName->field("id,encode,barcode,product,outtime,sum(outamount) as outamount,outprice,outpresell,outsum,people")->where($where)->group($group = "product")->order($order = "id desc")->limit($Page->firstRow . ',' . $Page->listRows)->select();
            $this->assign('list', $list); // 赋值数据集
            $this->assign('page', $show); // 赋值分页输出

            $tb = D($shop_id . "Storage");
            $total = $tb->where($where)->sum("outsum");
            $this->assign("total", $total);
            /*
             * 数量
             */
            $num = $tb->where($where)->sum("outamount");
            $this->assign("num", $num);
            /*
             * 单子数
             */
            $id = $tb->where($where)->count("id");
            $this->assign("id", $id);

            $this->display();
        }
    }

}
