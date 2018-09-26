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
    $data = Goods::all();
    $return = ['errno'=>0,'data'=>$data];
    return Goods::all();
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
