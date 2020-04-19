<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\Models\Categories;
use App\Models\Products;
use Illuminate\Database\Eloquent\SoftDeletes;



class Orders extends Model
{
    use SoftDeletes;
    //
    protected $table = "orders";

    protected $fillable = [
        'id',
        'order_date',
        'category_id',
        'product_id',
        'ordered_by',
        'created_at',
        'created_at',
        'updated_at'
    ];

    public function user()
    {
        return $this->belongsTo(User::class,'ordered_by','id');
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
