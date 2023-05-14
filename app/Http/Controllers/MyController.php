<?php

namespace App\Http\Controllers;

use App\Models\Products;
use Illuminate\Http\Request;

class MyController extends Controller
{
    //
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $products = Products::all();
        return view('home', compact('products'));
    }
}
