<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Categories;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $categories = Categories::all();
        
        return response()->json([
            'status' => "success",
            'data' => $categories
        ], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
         $request->validate([
            'name'=>'required',
            'descryption'=>'required',
         ]);

         $category = new Categories([
            'name' => $request->get('name'),
            'descryption' => $request->get('descryption'),
         ]);
         $category->save();
        
         return response()->json([
            'status' => "success",
            'message' => 'Category Saved Successfully!'
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $category = Categories::find($id);

        if (!$category) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Sorry, category with id ' . $id . ' can not be found'
            ], 400);
        }

        return $category;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $request->validate([
            'name'=>'required',
            'descryption'=>'required',
         ]);

         $category = Categories::find($id);

         if (!$category) {
            return response()->json([
                'success' => false,
                'message' => 'Sorry, category with id ' . $id . ' cannot be found'
            ], 400);
         }
         
         $category->name =  $request->get('name');
         $category->descryption = $request->get('descryption');
         $category->update();
        
         return response()->json([
            'status' => "success",
            'message' => 'Category Updated successfully!'
         ], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $category = Categories::find($id);

        if (!$category) {
            return response()->json([
                'success' => false,
                'message' => 'Sorry, category with id ' . $id . ' can not be found'
            ], 400);
        }

        $category->delete();

       
        return response()->json([
            'status' => "success",
            'message' => 'Category Deleted Successfully!'
         ], 200);
    }
}
