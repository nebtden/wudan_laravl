<?php

use Illuminate\Http\Request;
use App\Models\Goods;
use App\Models\Seller;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('test', function() {
    return 'test';
});


Route::get('goods', function() {
    // If the Content-Type and Accept headers are set to 'application/json',
    // this will return a JSON structure. This will be cleaned up later.
    $goods = Goods::all()->groupBy('type');
    $types= Goods::$types;

    $data = [
        ['name'=>$types[-1],'type'=>'-1','foods'=>$goods['-1']],
        ['name'=>$types[1],'type'=>'1','foods'=>$goods['1']],
        ['name'=>$types[2],'type'=>'2','foods'=>$goods['2']],
    ];

    $return = ['errno'=>0,'data'=>$data];
    return $return;
});

//http://api.hand-angel.top/api/seller/1
Route::get('seller/{id}', function($id) {
    $data = Seller::find($id)->toArray();
    $data['supports'] = json_decode($data['supports']);
    $data['pics'] = json_decode($data['pics']);
    $data['infos'] = json_decode($data['infos']);
    $return = ['errno'=>0,'data'=>$data];
    return $return;
});


Route::get('goods/{id}', function($id) {
    return Goods::find($id)->toArray();
});

Route::post('goods', function(Request $request) {
    return Goods::create($request->all);
});

Route::put('goods/{id}', function(Request $request, $id) {
    $article = Goods::findOrFail($id);
    $article->update($request->all());

    return $article;
});

Route::delete('goods/{id}', function($id) {
    Goods::find($id)->delete();

    return 204;
});
