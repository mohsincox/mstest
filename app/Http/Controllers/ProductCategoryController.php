<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Models\ProductCategory;
use App\Models\Product;
use Cart;

class ProductCategoryController extends Controller
{
	protected $productCart = 'msProductCart';

    public function show($id)
    {
    	$proCats = ProductCategory::with(['product', 'category'])->where('category_id', $id)->get();

    	$addedList = Cart::instance($this->productCart)->content();

        return view('product_category.show', compact('proCats'));
    }

    public function product($id)
    {
    	// return $addedList = Cart::instance($this->productCart)->content();
    	$product = Product::find($id);

        return view('product_category.c_product', compact('product'));
    }

    public function addToCart(Request $request)
    {
        $addProduct = Product::find($request->product_id);

        Cart::instance($this->productCart)->add([
                      'id' => $addProduct->id,
                      'name' => $addProduct->name,
                      'qty' => $request->quantity,
                      'price' => $addProduct->price,
                      'weight' => 0,
                  ]);

      $addedList = Cart::instance($this->productCart)->content();

      flash()->success('Product has been added to Cart.');
      
      // return view('product_category.cart_show', compact('addedList'));
    }

    public function removeOneItem($id)
    {
        Cart::instance($this->productCart)->remove($id);
        
        flash()->warning('One Item is removed from Cart.');

        return redirect()->back();

        // $addedList = Cart::instance($this->productCart)->content();

        // return view('product_category.cart_show', compact('addedList'));
    }


    public function cart()
    {
        $addedList = Cart::instance($this->productCart)->content();

        return view('product_category.cart_show', compact('addedList'));
    }
}
