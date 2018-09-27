<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018\9\26 0026
 * Time: 10:15
 */

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class Goods extends Model
{
    public $timestamps= false;

    public static $types = [
        '-1'=>'热销榜',
        '1'=>'套餐',
        '2'=>'折扣',
    ];

}
