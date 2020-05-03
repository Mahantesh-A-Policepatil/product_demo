<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Products;
use App\Models\Categories;

class GuestUserController extends Controller
{
    //
    public function productListView()
    {
        //
        $categories = Categories::select("id","name")->get();
        return view('productList', compact('categories'));
    }
}
