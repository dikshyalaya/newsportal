 <ul class="post_categories_select_list {{ @$depth>0?'child-list':'' }}">
     @foreach ($categories as $category)

     <li>
         <input name="categories_id[]" type="checkbox" value="{{ $category->id }}"> {{ $category->category_name }}

         @if($category->children!=null)
         @include('post::post_category_render_option', ['categories'=>$category->children, 'depth'=>($depth+1)])
         @endif
     </li>
     @endforeach
 </ul>