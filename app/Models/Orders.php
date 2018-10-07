<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018\9\26 0026
 * Time: 10:15
 */

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class Orders extends Model
{
//    public $timestamps= false;

    public function order_goods(){
        return $this->hasMany(OrdersGoods::class,'order_id');
    }
}
