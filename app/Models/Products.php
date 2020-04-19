<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Categories;
use Illuminate\Database\Eloquent\SoftDeletes;

class Products extends Model
{
    use SoftDeletes;
    //
    
    protected $table = "products";

    protected $fillable = [
        'id',
        'name',
        'descryption',
        'category_id',
        'price',
        'image_path',
        'created_at',
        'updated_at',
    ];

    public function category()
    {
        return $this->belongsTo(Categories::class,'category_id','id');
    }
}
