<?php

namespace Modules\Widget\Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use Modules\Widget\Entities\Widget;
use DB;


class WidgetTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        DB::statement('SET FOREIGN_KEY_CHECKS=0;');


            Widget::create([
                'title'         => 'Popular Posts',
                'short_code'    => 'popular_posts',
                'language'      => 'en',
                'order'         => '1',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '1',
                'content_type'  => '1'
                ]);

            Widget::create([
                'title'         => 'Follow Us',
                'short_code'    => 'follow_us',
                'language'      => 'en',
                'order'         => '2',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '1',
                'content_type'  => '5'
                ]);

            Widget::create([
                'title'         => 'Newsletter',
                'short_code'    => 'newletter',
                'language'      => 'en',
                'order'         => '3',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '1',
                'content_type'  => '4'
                ]);
            Widget::create([
                'title'         => 'Recent Posts',
                'short_code'    => 'recent_posts',
                'language'      => 'en',
                'order'         => '4',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '1',
                'content_type'  => '6'
                ]);

            Widget::create([
                'title'         => 'Categories',
                'short_code'    => 'categories',
                'language'      => 'en',
                'order'         => '5',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '1',
                'content_type'  => '11'
                ]);

            Widget::create([
                'title'         => 'Recommended Posts',
                'short_code'    => 'recommended_posts',
                'language'      => 'en',
                'order'         => '6',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '1',
                'content_type'  => '7'
                ]);

            Widget::create([
                'title'         => 'Tags',
                'short_code'    => 'tags',
                'content'       => 'politics,world',
                'language'      => 'en',
                'order'         => '7',
                'is_custom'     => '1',
                'status'        => '1',
                'content_type'  => '2'
                ]);
            Widget::create([
                'title'         => 'Featured Posts',
                'short_code'    => 'featured_posts',
                'language'      => 'en',
                'order'         => '8',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '1',
                'content_type'  => '13'
                ]);
            Widget::create([
                'title'         => 'Popular Posts',
                'language'      => 'en',
                'order'         => '1',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '2',
                'content_type'  => '1'
                ]);
            Widget::create([
                'title'         => 'Editor Picks',
                'language'      => 'en',
                'order'         => '2',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '2',
                'content_type'  => '12'
                ]);
            Widget::create([
                'title'         => 'Newsletter',
                'language'      => 'en',
                'order'         => '3',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '2',
                'content_type'  => '4'
            ]);

            Widget::create([
                'title'         => 'Buy now',
                'language'      => 'en',
                'order'         => '3',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '3',
                'content_type'  => '9',
                'ad_id'         => 1
            ]);

            Widget::create([
                'title'         => 'Buy now',
                'language'      => 'en',
                'order'         => '3',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '2',
                'content_type'  => '9',
                'ad_id'         => 1
            ]);

             Widget::create([
                'title'         => 'Poll',
                'language'      => 'en',
                'order'         => '3',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '1',
                'content_type'  => '8',
            ]);

            
        else:
            Widget::create([
                'title'         => 'Popular Posts',
                'short_code'    => 'popular_posts',
                'language'      => 'en',
                'order'         => '1',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '1',
                'content_type'  => '1'
            ]);

            Widget::create([
                'title'         => 'Follow Us',
                'short_code'    => 'follow_us',
                'language'      => 'en',
                'order'         => '2',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '1',
                'content_type'  => '5'
            ]);

            Widget::create([
                'title'         => 'Newsletter',
                'short_code'    => 'newletter',
                'language'      => 'en',
                'order'         => '3',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '1',
                'content_type'  => '4'
            ]);


            Widget::create([
                'title'         => 'Popular Posts',
                'language'      => 'en',
                'order'         => '1',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '2',
                'content_type'  => '1'
            ]);

            Widget::create([
                'title'         => 'Newsletter',
                'language'      => 'en',
                'order'         => '3',
                'is_custom'     => '1',
                'status'        => '1',
                'location'      => '2',
                'content_type'  => '4'
            ]);
       
        Model::unguard();


    }
}
