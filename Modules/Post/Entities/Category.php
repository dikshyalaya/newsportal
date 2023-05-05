<?php

namespace Modules\Post\Entities;

use Illuminate\Database\Eloquent\Model;
use Sentinel;

class Category extends Model
{
    protected $fillable = ['category_name', 'language', 'slug', 'meta_description', 'meta_keywords', 'order', 'show_on_menu', 'show_on_homepage'];

    // public function subCategory()
    // {
    //     return $this->hasMany('Modules\Post\Entities\SubCategory');
    // }

       

    public function rssFeed()
    {
        return $this->hasMany('Modules\Post\Entities\RssFeed');
    }

    // public function post()
    // {
    //     return $this->hasMany('Modules\Post\Entities\Post')->limit(10);
    // } 

    public function post()
    {
        return $this->hasMany('Modules\Post\Entities\Post', 'category_post','category_id','post_id')->limit(10);
    }

    public function categoryPosts()
    {
        //return $this->belongsToMany(RelatedModel, pivot_table_name, foreign_key_of_current_model_in_pivot_table, foreign_key_of_other_model_in_pivot_table);
        return $this->belongsToMany('Modules\Post\Entities\Post','category_post')->orderBy('id','desc');
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
    
    
}

