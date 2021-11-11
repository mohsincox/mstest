<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Models\Product;

class ProductController extends Controller
{
    public function index()
    {
    	$products = Product::paginate(6);

    	return view('product.index', compact('products'));
    }
}
