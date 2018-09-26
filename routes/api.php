<?php

use Illuminate\Http\Request;
use App\Models\Goods;
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
    $data1 = Goods::where(['type'=>-1])->all();
    $data2 = Goods::where(['type'=>2])->all();
    $data3 = Goods::where(['type'=>2])->all();
    $data = [
        ['name'=>1,'type'=>'-1','foods'=>$data1],
        ['name'=>2,'type'=>'1','foods'=>$data2],
        ['name'=>3,'type'=>'2','foods'=>$data3],
    ];
    $return = ['errno'=>0,'data'=>$data];
    return $return;
});

Route::get('goods/{id}', function($id) {
    return Goods::find($id);
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
