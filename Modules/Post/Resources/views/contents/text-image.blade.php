<div class="card add-new-page content_{{$content_count}}" id="image_content_{{$content_count}}">
    <div class="card-header">
        <div class="card-title float-left">
            <h3>Text Image</h3>
        </div>
        <div class="card-toolbar float-right"><button type="button" class="btn btn-sm btn-danger row_remove"><i class="m-r-0 mdi mdi-close"></i></button></div>
    </div>
    <div class="card-body">
        <input type="hidden" value="{{ $content_count }}" id="content_count">
        <div class="row">
            <div class="col-md-8">
                <label for="" class="col-form-label">{{ __('content') }}*</label>
                <textarea class="form-control post-content" name="new_content[{{$content_count}}][text-image][text]" id="" cols="60" rows="10">{{isset($content)? $content['text-image'][0]['text']:''}}</textarea>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for="" class="col-form-label">{{ __('image') }}*</label>
                    <div class="form-input text-center">
                        @if(isset($content) && $content['text-image'][1]['image_id'] != "")

                        @php
                        $image = $content['text-image'][1]['image'];

                        @endphp
                        @if(isFileExist(@$image, $result = @$image->thumbnail))

                        <img src=" {{basePath($image)}}/{{ $result }} " id="image_preview_content" width="200" height="200" alt="image" class="img-responsive img-thumbnail image_preview">
                        @else
                        <img src="{{static_asset('default-image/default-100x100.png') }} " id="image_preview_content" width="200" height="200" alt="image" class="img-responsive img-thumbnail image_preview">
                        @endif

                        @else
                        <img src="{{static_asset('default-image/default-100x100.png') }} " id="image_preview_content" width="200" height="200" alt="image" class="img-responsive img-thumbnail image_preview">
                        @endif
                    </div>
                </div>
                <div class="form-group">
                    <!-- Large modal -->
                    <center>
                        <button type="button" id="btn_image_modal" class="btn btn-primary btn-image-modal" data-id="1" data-toggle="modal" data-target=".image-modal-lg">{{ __('add_image') }}</button>
                        <input id="image_id_content" name="new_content[{{$content_count}}][text-image][image_id]" type="hidden" class="form-control image_id" value="{{isset($content)? $content['text-image'][1]['image_id']:''}}">
                    </center>
                </div>
            </div>
        </div>
    </div>

</div>