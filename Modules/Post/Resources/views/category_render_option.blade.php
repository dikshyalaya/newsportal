 

 @foreach ($categories as $category)


    <option @if($selected_category->parent_id==$category->id) selected @endif value="{{ $category->id }}"> 
        @for($i=0; $i<$depth; $i++) {{__("-")}} 
        @endfor {{ $category->category_name }}
    </option>
    


    @if($category->children!=null)
        @include('post::category_render_option', ['selected_category'=>$selected_category,'categories'=>$category->children, 'depth'=>($depth+1)])
    @endif

 @endforeach