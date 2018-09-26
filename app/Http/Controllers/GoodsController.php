<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018\9\26 0026
 * Time: 10:21
 */
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Goods;

class GoodsController extends Controller
{
    public function index()
    {
        return Goods::all();
    }

    public function show($id)
    {
        return Goods::find($id);
    }

    public function store(Request $request)
    {
        return Goods::create($request->all());
    }

    public function update(Request $request, $id)
    {
        $Goods = Goods::findOrFail($id);
        $Goods->update($request->all());

        return $Goods;
    }

    public function delete(Request $request, $id)
    {
        $Goods = Goods::findOrFail($id);
        $Goods->delete();

        return 204;
    }
}
