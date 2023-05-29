<?php

namespace Modules\Appearance\Entities;

use Modules\Post\Entities\Post;
use Illuminate\Database\Eloquent\Model;
use Sentinel;

class ThemeSection extends Model
{
    protected $fillable = [
        'theme_id',
        'label',
        'order',
        'category_id',
        'post_amount',
        'section_style',
        'is_primary',
    ];

    public function category()
    {
        return $this->belongsTo('Modules\Post\Entities\Category', 'category_id', 'id');
    }

    public function ad()
    {
        return $this->belongsTo('Modules\Ads\Entities\Ad');
    }

     public function posts()
    {
       return $this->hasManyThrough('Modules\Post\Entities\Post','Modules\Post\Entities\CategoryPost','category_id','id','category_id', 'post_id')->with('categories','image', 'user')->orderBy('id', 'desc');
    }

    public function post()
    {
        return $this->posts()->take(10);
    }
}

