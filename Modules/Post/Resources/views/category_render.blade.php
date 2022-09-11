 @foreach ($categories as $category)
 <tr role="row" class="odd" id="row_{{ $category->id }}">
    
     <td>
        @for($i=0; $i<$depth; $i++) 
        {{__("-")}}
        @endfor
     {{ $category->category_name }}</td>
     <td>{{ $category->is_featured ? __('yes') : __('no') }}</td>
     @if(Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
     <td>
         <div class="dropdown">
             <button class="btn bg-primary dropdown-toggle btn-select-option" type="button" data-toggle="dropdown">...
                 <span class="caret"></span>
             </button>
             <ul class="dropdown-menu options-dropdown">
                 @if(Sentinel::getUser()->hasAccess(['category_write']))
                 <li>
                     <a href="{{ route('edit-category',['id'=>$category->id]) }}"><i class="fa fa-edit option-icon"></i>{{ __('edit') }}
                     </a>
                 </li>
                 @endif
                 @if(Sentinel::getUser()->hasAccess(['category_delete']))
                 <li>
                     <a href="javascript:void(0)" onclick="delete_item('categories','{{ $category->id }}')"><i class="fa fa-trash option-icon"></i>{{ __('delete') }}
                     </a>
                 </li>
                 @endif
             </ul>
         </div>
     </td>
     @endif
 </tr>
 @if($category->children!=null)
 @include('post::category_render', ['categories'=>$category->children, 'depth'=>($depth+1)])
 @endif

 @endforeach