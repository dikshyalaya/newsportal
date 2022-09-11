 @foreach ($categories as $category)

 <option value="{{ $category->id }}">
 <option value="{{ $category->id }}"> @for($i=0; $i<$depth; $i++) {{__("-")}} @endfor {{ $category->category_name }}</option>{{ $category->category_name }}</option>

 @if($category->children!=null)
 @include('post::post_category_option_render', ['categories'=>$category->children, 'depth'=>($depth+1)])
 @endif

 @endforeach