<?php

namespace Modules\Post\Entities;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Sentinel;


class CategoryPost extends Model
{
    use HasFactory;
    protected $table = 'category_post';

    // public function Category(){
    //     $this->belongsTo('Modules\Post\Entities\Category');
    // }

    // public function Post(){
    //     $this->belongsTo('Modules\Post\Entities\Post');
    // }

    // public function ThemeSection(){
    //     $this->hasManyThrough('Modules\Appearence\Entities\ThemeSection');
        
    // }
}
