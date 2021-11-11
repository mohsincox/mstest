<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use Cart;
use App\Models\Product;

class HomeController extends Controller
{
    protected $productCart = 'msProductCart';
    
    public function index()
    {
        $hotProducts = Product::take(8)->get();
        $newProducts = Product::take(8)->orderBy('id', 'desc')->get();
        // return $addedList = Cart::instance($this->productCart)->content();
        return view('home', compact('hotProducts', 'newProducts'));
    
    }
}
