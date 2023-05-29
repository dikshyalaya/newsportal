<?php

namespace Modules\Post\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Cache;
use Modules\Language\Entities\Language;
use Modules\Post\Entities\Category;
use Modules\Post\Entities\SubCategory;
use Validator;
use DB;

class CategoryController extends Controller
{
    public function categories()
    {
        $categories       = Category::with('childrenRecursive')->orderBy('category_name', 'ASC')->where('parent_id',NULL)->paginate(10);
        $activeLang     = Language::where('status', 'active')->orderBy('name', 'ASC')->get();
        $category=new Category();

        return view('post::categories', compact('activeLang', 'categories', 'category'));
    }

    public function saveNewCategory(Request $request)
    {
        if (strtolower(\Config::get('app.demo_mode')) == 'yes'):
            return redirect()->back()->with('error', __('You are not allowed to add/modify in demo mode.'));
        endif;
        Validator::make($request->all(), [
            'category_name' => 'required|unique:categories|min:2|max:40',
            'slug'          => 'nullable|min:2|unique:categories|max:30|regex:/^\S*$/u',
            'language'      => 'required'
        ])->validate();

        $category                   = new Category();
        if($request->parent_id>0)
            $category->parent_id        = $request->parent_id;
        $category->category_name    = $request->category_name;
        $category->language         = $request->language;
        $category->is_featured      = $request->is_featured;

        if ($request->slug != null) :
            $category->slug = $request->slug;
        else :
            $category->slug = $this->make_slug($request->category_name);
        endif;

        $category->meta_description     = $request->meta_description;
        $category->meta_keywords        = $request->meta_keywords;
        $category->order                = $request->order;
       // $category->show_on_menu         = $request->show_on_menu;
//        $category->block_style          = $request->block_style;

        $category->save();

        Cache::Flush();

        return redirect()->back()->with('success', __('successfully_added'));
    }

    public function editCategory($id)
    {
        $category       = Category::find($id);
        $activeLang     = Language::where('status', 'active')->orderBy('name', 'ASC')->get();
        $categories       = Category::with('childrenRecursive')->orderBy('category_name', 'ASC')->where('parent_id',NULL)->paginate(10);

        return view('post::edit_category', compact('category', 'categories', 'activeLang'));
    }

    public function updateCategory(Request $request)
    {
        if (strtolower(\Config::get('app.demo_mode')) == 'yes'):
            return redirect()->back()->with('error', __('You are not allowed to add/modify in demo mode.'));
        endif;
        Validator::make($request->all(), [
            'category_name'     => 'required|min:2|max:40|unique:categories,category_name,' . $request->category_id,
            'slug'              => 'nullable|min:2|max:30|regex:/^\S*$/u|unique:categories,slug,' . $request->category_id,
            'language'          => 'required'
        ])->validate();

        $category                   = Category::find($request->category_id);
        if($request->parent_id>0)
            $category->parent_id        = $request->parent_id;
        $category->category_name    = $request->category_name;
        $category->language         = $request->language;
        $category->is_featured      = $request->is_featured;

        if ($request->slug != null) :
            $category->slug     = $request->slug;
        else :
            $category->slug     = $this->make_slug($request->category_name);
        endif;

        $category->meta_description = $request->meta_description;
        $category->meta_keywords    = $request->meta_keywords;
        $category->order            = $request->order;
 //       $category->show_on_menu     = $request->show_on_menu;
//        $category->block_style      = $request->block_style;

        $category->save();

        Cache::Flush();

        return redirect()->route('categories')->with('success', __('successfully_updated'));
    }

    private function make_slug($string, $delimiter = '-') {

        $string = preg_replace("/[~`{}.'\"\!\@\#\$\%\^\&\*\(\)\_\=\+\/\?\>\<\,\[\]\:\;\|\\\]/", "", $string);

        $string = preg_replace("/[\/_|+ -]+/", $delimiter, $string);
        $result = mb_strtolower($string);

        if ($result):
            return $result;
        else:
            return $string;
        endif;
    }
}
