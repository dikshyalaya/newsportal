<?php

namespace Modules\Post\Entities;

use Illuminate\Database\Eloquent\Model;
use LaravelLocalization;
use Sentinel;

class Category extends Model
{
    protected $fillable = ['category_name', 'language', 'slug', 'meta_description', 'meta_keywords', 'order', 'show_on_menu', 'show_on_homepage'];


    public function posts()
    {
        return $this->belongsToMany('Modules\Post\Entities\Post');
    }

    public function post() 
    {
        return $this->hasMany('Modules\Post\Entities\Post')->limit(10);
    }

    public function rssFeed()
    {
        return $this->hasMany('Modules\Post\Entities\RssFeed');
    }
    
    
    public function parent()
    {
        return $this->belongsTo('Modules\Post\Entities\Category', 'parent_id');
    }

    public function children()
    {
        return $this->hasMany('Modules\Post\Entities\Category', 'parent_id');
    }

    public function childrenRecursive()
    {
        return $this->children()->with('childrenRecursive');
    }

    public function subCategory()
    {
        return $this->hasMany('Modules\Post\Entities\Category');
    }

   
    
}

