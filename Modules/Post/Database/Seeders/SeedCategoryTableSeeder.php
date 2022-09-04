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

        Model::unguard();

        // $this->call("OthersTableSeeder");
    }
}
