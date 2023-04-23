<div class="card add-new-page content_{{$content_count}} bg-white">
    <div class="card-header">
        <div class="card-title float-left">
            <h3>Text Image Text Content</h3>
        </div>
        <div class="card-toolbar float-right"><button type="button" class="btn btn-sm btn-danger row_remove"><i class="m-r-0 mdi mdi-close"></i></button></div>
    </div>
    <div class="card-body">
    <input type="hidden" value="{{ $content_count }}" id="content_count">
        <div class="row">
            <div class="col-md-5">
                
                <textarea required class="form-control post-content" name="new_content[{{$content_count}}][text-image-text][text_1]" id="" cols="40" rows="5">{{isset($content)? $content['text-image-text'][0]['text_1']:''}}</textarea>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <div class="form-group text-center">
                        @if(isset($content) && $content['text-image-text'][1]['image_id'] != "")

                        @php
                        $image = $content['text-image-text'][1]['image'];

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
                <div class="form-group">
                    <!-- Large modal -->
                    <button type="button" id="btn_image_modal" class="btn btn-primary btn-image-modal" data-id="1" data-toggle="modal" data-target=".image-modal-lg">{{ __('add_image') }}</button>
                    <input id="image_id_content" name="new_content[{{$content_count}}][text-image-text][image_id]" type="hidden" class="form-control image_id" value="{{isset($content)? $content['text-image-text'][1]['image_id']:''}}">
                </div>



            </div>
            <div class="col-md-5">                           
                <textarea required class="form-control post-content" name="new_content[{{$content_count}}][text-image-text][text_2]" id="" cols="40" rows="5">{{isset($content)? $content['text-image-text'][2]['text_2']:''}}</textarea>
            </div>
        </div>
    </div>
</div>