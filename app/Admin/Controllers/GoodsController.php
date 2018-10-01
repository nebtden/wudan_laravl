<?php

namespace App\Admin\Controllers;

use App\Models\Goods;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Intervention\Image\ImageManagerStatic as Image;


class GoodsController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Goods');
            $content->description('Goods Class');

            $content->body($this->grid());
        });
    }




    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('header');
            $content->description('description');

            $content->body($this->form());
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
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Goods::class, function (Grid $grid) {
            $grid->model()->orderBy('id', 'desc');
            $grid->disableExport();


            $grid->name();


            $grid->description();
            $grid->sellerCount();

            $grid->column('price')->display(function () {
                return  '$'.$this->price;
            });
            $grid->column('old Price')->display(function () {
                return  '$'.$this->oldPrice;
            });
            $grid->filter(function($filter){
                $filter->disableIdFilter();
                $filter->is('sku', 'SKU');
                $filter->like('goods_name', 'Goods Name');
            });

        });
    }


    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Goods::class, function (Form $form) {


            $form->text('name', '产品名')->rules('required');
            $form->textarea('description', '描述')->rules('required');
            $form->image('icon', '图片')->name(function ($file) {
                $imgfile =  time() . '.';
                return 'icon/' . $imgfile . $file->guessExtension();
            });

            $form->select('type', 'Money Type')->options(Goods::$types);
            $form->hidden('id');


            $form->saved(function (Form $form) {
                $img = $form->model()->icon;
                if ($img) {
                    // open an image file
                    $img = Image::make(public_path() . '/icon/' . $img);
                    $height = $img->height();
                    $width = $img->width();
                    if ($height + $width > 1400) {
                        $img->resize($width / 2, $height / 2);
                        $img->save();
                    }
                }

            });

        });
    }


}
