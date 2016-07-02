<?php

/*
 * 收益报表 销售额 - 入库额  今天
 */

namespace Sale\Controller;

use Common\Controller\AuthController;
//use Boss\Model\RevenueViewModel;
use Think\Auth;
use Think\Page;
use Think\Model;

class RevenueController extends AuthController {
    /*
     * 查阅商品收益   两表关联  所有商品 某种商品今天的销售额
     * 
     * 时间倒序
     * 条形码
     * 商品名
     * 销售量  主表
     * 销售价
     * 销售额
     * 进货价
     * 生产商收益 = 销售额 - 进货额
     * 
     */

    public function index() {


        $model = new Model();
        $sql = "use " . $_SESSION['dbName'];
        $model->query($sql);

        $shop_id = $_SESSION['storeId'];

        // $out = D($shop_id . "Storage");
        $where['salesman'] = $_SESSION['nameReal'];
        $this->assign("shopid", $shop_id);
        $this->assign("shopName", $shopName['shop']);
        $this->assign("nameReal", $_SESSION['nameReal']);
        $today = date("Y-m-d");
        $where ['saledate'] = array('like', "%$today%");
        $everypage = "10";
        $tbName = D($shop_id . "Sales"); // 实例化Data数据对象
        // $tbName = new RevenueViewModel("RevenueViewModel", $tablePrefix = $shop_id);
        /*
         *  使用视图子查询
         */
        // var_dump($tbName);
        //  exit();
        $subQuery = $tbName->group('product')->where($where)->order('sum(amount) desc')->select(false);

        $count = $tbName->table($subQuery . 'xc')->count('barcode');

        //$count = $tbName->count('barcode'); // 查询满足要求的总记录数


        $Page = new Page($count, $everypage); // 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show(); // 分页显示输出// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $tbName->field("sum(amount) as total,sum(num) as num,barcode,product,letter")->where($where)->order("sum(amount) desc")->limit($Page->firstRow . ',' . $Page->listRows)->group("product")->select();

        $this->assign('list', $list); // 赋值数据集
        $this->assign('page', $show); // 赋值分页输出
        //
        // $tbName = D('RevenueView');
        $sumSQL = $tbName->field('sum(amount) as total,barcode,product')->where($where)->order("sum(amount) desc")->group("barcode")->select(FALSE);
        $outsum = $tbName->table($sumSQL . 'cc')->sum('total');
        $this->assign("outsum", $outsum);

        $shopnumSQL = $tbName->field('sum(num) as shopnum,barcode,product')->where($where)->order("sum(amount) desc")->group("barcode")->select(FALSE);
        $outshopnum = $tbName->table($shopnumSQL . 'cc')->sum('shopnum');
        $this->assign("outshopnum", $outshopnum);

        /*
         * 商品样数
         */
        $productnumSQL = $tbName->field('sum(id) as productnum,letter')->where($where)->order("sum(amount) desc")->group("product")->select(FALSE);
        $outshopum = $tbName->table($productnumSQL . 'cc')->count('productnum');
        $this->assign("outproductnum", $outshopum);


        $this->display();
    }

    /*
     *  searching() 搜索
     * 
     *  $str 关键字
     * 
     *  outtime desc 
     * 
     */

    public function searching() {

        $model = new Model();
        $sql = "use " . $_SESSION['dbName'];
        $model->query($sql);

        $shop_id = $_SESSION['storeId'];

        // $out = D($shop_id . "Storage");
        $where['salesman'] = $_SESSION['nameReal'];
        $this->assign("shopid", $shop_id);
        $this->assign("shopName", $shopName['shop']);
        $this->assign("nameReal", $_SESSION['nameReal']);
        $today = date("Y-m-d");
        $where['saledate'] = array('like', "%$today%");

        $tbName = D($shop_id . "Sales"); // 实例化Data数据对象

        if (!IS_GET) {
            $this->display();
        } else {

            $shopName = $_SESSION["shop_name"];
            $this->assign("shopName", $shopName);
            $this->assign("nameReal", $_SESSION['nameReal']);


            $pro = trim($_GET['product']);
            if ($pro != "") {
                $pro = strtoupper($pro);
                $where["product|letter"] = array('like', "%$pro%");
                $this->assign("pro", $pro);
            }

            $bar = trim($_GET['barcode']);
            if ($bar != "") {

                $where['barcode'] = array('like', "%$bar%");
                $this->assign("bar", $bar);
            }

            $start = trim($_GET['start']);

            $end = trim($_GET['end']);
            if ($end != "") {

                $where['saledate'] = array('between', array($start, $end));
                //   $this->assign("date", $people);
            }

            $everypage = "10";

            $tbName = D($shop_id . "Sales");
            /*
             *  使用视图子查询
             */
            $subQuery = $tbName->group('product')->where($where)->order('sum(amount) desc')->select(false);
            $count = $tbName->table($subQuery . 'xc')->count('id');

            //$count = $tbName->count('barcode'); // 查询满足要求的总记录数


            $Page = new Page($count, $everypage); // 实例化分页类 传入总记录数和每页显示的记录数(25)
            $show = $Page->show(); // 分页显示输出// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
            $list = $tbName->field("sum(amount) as total,sum(num) as num,barcode,product,letter")->where($where)->order("sum(amount) desc")->limit($Page->firstRow . ',' . $Page->listRows)->group("product")->select();


            $this->assign('list', $list); // 赋值数据集
            $this->assign('page', $show); // 赋值分页输出
            //$tbName = D('RevenueView');
            $sumSQL = $tbName->field('sum(amount) as total,letter')->where($where)->order("sum(amount) desc")->group("product")->select(FALSE);
            $outsum = $tbName->table($sumSQL . 'cc')->sum('total');
            $this->assign("outsum", $outsum);
            /*
             * 商品总数量
             */
            $shopnumSQL = $tbName->field('sum(num) as shopnum,letter')->where($where)->order("sum(amount) desc")->group("product")->select(FALSE);
            $outshopum = $tbName->table($shopnumSQL . 'cc')->sum('shopnum');
            $this->assign("outshopnum", $outshopum);
            /*
             * 商品种类数
             */
            $productnumSQL = $tbName->field('sum(id) as productnum,letter')->where($where)->order("sum(amount) desc")->group("product")->select(FALSE);
            $outshopum = $tbName->table($productnumSQL . 'cc')->count('productnum');
            $this->assign("outproductnum", $outshopum);

            $this->display();
        }
    }

}
