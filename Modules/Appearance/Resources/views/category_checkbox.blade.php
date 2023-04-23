 <ul class="post_categories_select_list {{ @$depth>0?'child-list':'' }}">
     @foreach ($categories as $category)
     <li>
         <label class="custom-control- custom-checkbox">
             <input type="checkbox" name="category_id[]" value="{{ $category->id }}" class="custom-control-input-">
             <span class="custom-control-label-">{{ $category->category_name }}</span>
         </label>
         @if($category->children!=null)
         @include('appearance::category_checkbox', ['categories'=>$category->children, 'depth'=>($depth+1)])
         @endif
     </li>
     @endforeach
 </ul>