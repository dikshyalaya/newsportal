<div class="card add-new-page content_{{$content_count}} bg-white" id="image_content_{{$content_count}}">
    <div class="card-header">
        <div class="card-title float-left">
            <h3>Image</h3>
        </div>
        <div class="card-toolbar float-right"><button type="button" class="btn btn-sm btn-danger row_remove"><i class="m-r-0 mdi mdi-close"></i></button></div>
    </div>
    <div class="card-body">
        <input type="hidden" value="{{ $content_count }}" id="content_count">
        <div class="row">
            <div class="col-md-4">
            <div class="form-group">
                    <!-- Large modal -->
                    <center>
                        <button type="button" id="btn_image_modal" class="btn btn-primary btn-image-modal" data-id="1" data-toggle="modal" data-target=".image-modal-lg">{{ __('add_image') }}</button>
                        <input id="image_id_content" name="new_content[{{$content_count}}][image][image_id]" type="hidden" class="form-control image_id" value="{{isset($content)? $content['image'][0]['image_id']:''}}">
                    </center>
                </div>
                <div class="form-group">
                    <div class="form-group text-center">
                        @if(isset($content) && $content['image'][0]['image_id'] != "")
                        @php
                        $image = $content['image'][0]['image'];
                        @endphp
                        @if(isFileExist(@$image, $result = @$image->thumbnail))
                        <img src=" {{basePath($image)}}/{{ $result }} " id="image_preview_content" width="100%"  alt="image" class="img-responsive image_preview">
                        @else
                        <img src="{{static_asset('default-image/default-100x100.png') }} " id="image_preview_content" width="100%"  alt="image" class="img-responsive image_preview">
                        @endif
                        @else
                        <img src="{{static_asset('default-image/default-100x100.png') }} " id="image_preview_content" width="100%"  alt="image" class="img-responsive image_preview">
                        @endif
                    </div>
                </div>
                
            </div>

        </div>
    </div>

</div>