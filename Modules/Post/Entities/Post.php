<?php

namespace Modules\Post\Entities;

use App\NewsItemFeed;
use Illuminate\Database\Eloquent\Model;
use Spatie\Feed\Feedable;
use Spatie\Feed\FeedItem;

class Post extends Model implements Feedable
{
    protected $fillable = ['title'];

    public function image(){
        //   return $this->hasOne(Media::class ,'id', 'avatar_id');
        return $this->belongsTo('Modules\Gallery\Entities\Image');
    }
    public function videoThumbnail(){
        return $this->belongsTo('Modules\Gallery\Entities\Image', 'video_thumbnail_id','id');
    }
    public function video(){
        return $this->belongsTo('Modules\Gallery\Entities\Video', 'video_id','id');
    }

     public function category(){
        return $this->belongsToMany('Modules\Post\Entities\Category','category_post');
    }    

    public function categories()
    {
            //return $this->belongsToMany(RelatedModel, pivot_table_name, foreign_key_of_current_model_in_pivot_table, foreign_key_of_other_model_in_pivot_table);
            return $this->belongsToMany(
                    'Modules\Post\Entities\Category',
                    'category_post',
                    'post_id',
                    'category_id');
    }
    
    public function user(){
        return $this->belongsTo('Modules\User\Entities\User');
    }
    public function comments()
    {
        return $this->hasMany('Modules\Post\Entities\Comment');
    }

    public function postContents()
    {
        return $this->hasOne('Modules\Post\Entities\PostContent');
    }

    public function replay()
    {
        return $this->hasMany('Modules\Post\Entities\Comment', 'comment_id')->where('comment_id',null)->with('replay');
    }
    public function audio(){
        return $this->belongsToMany('Modules\Gallery\Entities\Audio')->withTimestamps();
    }

    public function quizQuestions(){
        return $this->hasMany('Modules\Post\Entities\QuizQuestion');
    }

    public function quizResults(){
        return $this->hasMany('Modules\Post\Entities\QuizResult');
    }

    public function toFeedItem(): FeedItem
    {
        return FeedItem::create([
            'id'        => $this->id,
            'title'     => $this->title,
            'summary'   => @$this->content,
            'updated'   => $this->created_at,
            'link'      => route('article.detail', ['id' => $this->slug]),
            'author'    => $this->user->first_name,
            'enclosure' => $this->image ? @$this->image->og_image: 'default-image/default-730x400.png',
        ]);
    }

    public static function getFeedItems()
    {
        return Post::with(['category','image'])
            ->where('visibility', 1)
            ->where('status',1)
            ->whereNotNull('image_id')
            ->where('language', \App::getLocale() ?? settingHelper('default_language'))
            ->orderBY('id', 'desc')
            ->limit(50)->get();
    }

    protected $casts = [
    	"contents" => "array"
    ];


}
