<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018\9\26 0026
 * Time: 10:21
 */
namespace App\Http\Controllers;

use App\Models\Goods;
use App\Models\OrdersGoods;
use Illuminate\Http\Request;
use App\Models\Orders;

class OrderController extends Controller
{
    public function create(Request $request)
    {
        $goods=  session('goods');
        $phone =   $request->input('phone');
        session(['phone' => $phone]);


        $location =   $request->input('location');
        session(['location' => $location]);

        $order = new Orders();
        $order->phone = $phone;
        $order->location = $location;
        $order->save();

        $goods_list = Goods::all()->pluck('name','id')->toArray();
//        dd($goods_list);

        foreach($goods as $good){
            $order_goods = new OrdersGoods();
            $order_goods->order_id = $order->id;
            $order_goods->goods_id = $good->id;
            $order_goods->count= $good->count;
            $order_goods->goods_name = $goods_list[$good->id];
            $order_goods->save();
        }
        return redirect('/success');
    }

    public function success(){
        return view('order/success');
    }



}
