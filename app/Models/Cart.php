<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\Models\Categories;
use App\Models\Products;
use Illuminate\Database\Eloquent\SoftDeletes;

class Cart extends Model
{
    use SoftDeletes;
    //
    protected $table = "cart";

    protected $fillable = [
        'id',
        'selected_date',
        'category_id',
        'product_id',
        'selected_by',
        'created_at',
        'created_at',
        'updated_at'
    ];

    public function user()
    {
        return $this->belongsTo(User::class,'selected_by','id');
    }
    public function category()
    {
        return $this->belongsTo(Categories::class,'category_id','id');
    }
    public function product()
    {
        return $this->belongsTo(Products::class,'product_id','id');
    }
}
