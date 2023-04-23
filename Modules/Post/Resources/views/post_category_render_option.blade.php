
 
 <ul class="post_categories_select_list {{ @$depth>0?'child-list':'' }}">
     @foreach ($categories as $category)

     <li>
         <input class="post-categories" name="categories_id[]" type="checkbox" value="{{ $category->id }}" {{ in_array($category->id, $selected_categories)?'checked="checked"':'' }}  > {{ $category->category_name }}

         @if($category->children!=null)
         @include('post::post_category_render_option', ['categories'=>$category->children, 'depth'=>($depth+1), 'selected_categories'=>$selected_categories])
         @endif
     </li>
     @endforeach
 </ul>