<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018\9\26 0026
 * Time: 10:21
 */
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Orders;

class OrderController extends Controller
{
    public function create()
    {
        return view('upload/upload');
    }


}
