<div class="card add-new-page content_{{$content_count}} bg-white">
    <div class="card-header">
        <div class="card-title float-left">
            <h3>Text Content</h3>
        </div>
        <div class="card-toolbar float-right"><button type="button" class="btn btn-sm btn-danger row_remove"><i class="m-r-0 mdi mdi-close"></i></button></div>
    </div>
    <div class="card-body">
        <div class="form-group">
            <label for="post_content" class="col-form-label">{{ __('content') }}*</label>
            <textarea class="form-control" class="form-control" name="new_content[{{$content_count}}][text][text]" id="post_content_1" cols="30" rows="5">{{isset($content)? $content['text'][0]['text']:''}}</textarea>
        </div>
    </div>
</div>