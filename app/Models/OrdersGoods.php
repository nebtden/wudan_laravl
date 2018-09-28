<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018\9\26 0026
 * Time: 10:15
 */

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class OrdersGoods extends Model
{
    public $timestamps= false;

    public $table = 'orders_goods';

    public function order(){
        return $this->belongsTo(Orders::class);
    }
}
