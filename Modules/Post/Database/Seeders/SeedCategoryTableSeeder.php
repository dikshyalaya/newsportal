<?php

namespace Modules\Post\Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use Modules\Post\Entities\Category;

class SeedCategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::create([
            'category_name' => 'World',
            'language'      => 'en',
            'slug'          => 'world',
            'order'         => '1'
        ]);

        Category::create([
            'category_name' => 'Science',
            'language'      => 'en',
            'slug'          => 'science',
            'order'         => '2'
        ]);

        Category::create([
            'category_name' => 'Life Style',
            'language'      => 'en',
            'slug'          => 'life-style',
            'order'         => '3'
        ]);

        Category::create([
            'category_name' => 'RSS News',
            'language'      => 'en',
            'slug'          => 'rss-news',
            'order'         => '4'
        ]);




        Category::create([
            'sub_category_name' => 'Nepal',
            'parent_id'         => 1,
            'slug'              => 'politics',
            'category_id'       => '1',
            'language'          => 'en',
        ]);



        Category::create([
            'sub_category_name' => 'Computer Science',
            'parent_id'         => 2,
            'slug'              => 'computer-science',
            'category_id'       => '2',
            'language'          => 'en',
        ]);

      

        Model::unguard();

        // $this->call("OthersTableSeeder");
    }
}
