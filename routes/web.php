<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

Route::get('registration/create',  'Auth\AuthController@create')->name('registration_create');
Route::post('registration/store',  'Auth\AuthController@store')->name('registration_store');

// Route::get('/home', 'HomeController@index')->name('home');

Route::get('/', 'HomeController@index');

Route::get('/product-category/{id}', 'ProductCategoryController@show');
Route::get('/product/{id}', 'ProductCategoryController@product');

Route::post('/product-cart/add-to-cart', 'ProductCategoryController@addToCart');
Route::get('/product-cart/remove-one-item/{id?}', 'ProductCategoryController@removeOneItem');

Route::get('/cart/', 'ProductCategoryController@cart');

Route::get('/product/', 'ProductController@index');

Route::get('/profile/', 'ProfileController@index');

