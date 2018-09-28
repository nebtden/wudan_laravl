<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Orders;
use Encore\Admin\Grid;
use Encore\Admin\Form;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;

class OrderController extends Controller
{
    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Order');
            $content->description('Order Class');

            $content->body($this->grid());
        });
    }



    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Orders::class, function (Grid $grid) {
            $grid->model()->orderBy('id', 'desc');
            $grid->location();
            $grid->phone();
            $grid->remark();

            $grid->order_goods()->display(function ($list) {

                $list = array_map(function ($goods) {
                    return "<span class='label label-success'>{$goods['goods_name']}*{$goods['count']}</span>";
                }, $list);

                return join('&nbsp;', $list);
            });
            $grid->column('price')->display(function () {
                return  '$'.$this->price;
            });
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id){
        return Admin::content(function (Content $content) use ($id) {
            $content->header('header');
            $content->description('description');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Orders::class, function (Form $form) {
            $form->display('phone');
            $form->display('location');
            $form->display('remark');
/*            $form->hasMany('order_goods','产品', function (Form\NestedForm $form) {

                $form->display('goods_name');
                $form->display('count');
                //这里的多图添加图片会报错，显示多图没问题。

            });*/
        });
    }

}
