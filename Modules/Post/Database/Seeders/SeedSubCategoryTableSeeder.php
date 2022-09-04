<?php

namespace Modules\Post\Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use Modules\Post\Entities\SubCategory;

class SeedSubCategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        SubCategory::create([
            'sub_category_name' => 'Nepal',
            'slug'              => 'politics',
            'category_id'       => '1',
            'language'          => 'en',
        ]);



        SubCategory::create([
            'sub_category_name' => 'Computer Science',
            'slug'              => 'computer-science',
            'category_id'       => '2',
            'language'          => 'en',
        ]);

        SubCategory::create([
            'sub_category_name' => 'Life Style',
            'slug'              => 'life-style',
            'category_id'       => '3',
            'language'          => 'en',
        ]);

        SubCategory::create([
            'sub_category_name' => 'Nasa',
            'slug'              => 'nasa',
            'category_id'       => '4',
            'language'          => 'en',
        ]);

        SubCategory::create([
            'sub_category_name' => 'Wired',
            'slug'              => 'wired',
            'category_id'       => '4',
            'language'          => 'en',
        ]);

        SubCategory::create([
            'sub_category_name' => 'ABC News',
            'slug'              => 'abc-news',
            'category_id'       => '4',
            'language'          => 'en',
        ]);



        Model::unguard();

        // $this->call("OthersTableSeeder");
    }
}
