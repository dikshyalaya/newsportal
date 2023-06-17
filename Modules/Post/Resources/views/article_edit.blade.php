@extends('common::layouts.master')
@section('post-aria-expanded')
aria-expanded="true"
@endsection
@section('post-show')
show
@endsection
@section('post')
active
@endsection
@section('post-active')
active
@endsection
@section('modal')
@include('gallery::image-gallery')
@include('gallery::video-gallery')
@endsection


@section('content')

<div class="dashboard-ecommerce">
    <div class="container-fluid dashboard-content ">
        <!-- page info start-->
        {!! Form::open(['route'=>['update-post','article',$post->id],'method' => 'post','enctype'=>'multipart/form-data']) !!}
        <input type="hidden" id="images" value="{{ $countImage }}">
        <input type="hidden" id="videos" value="{{ $countVideo }}">
        <input type="hidden" id="imageCount" value="1">
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-12">
                        @if(session('error'))
                        <div id="error_m" class="alert alert-danger">
                            {{session('error')}}
                        </div>
                        @endif
                        @if(session('success'))
                        <div id="success_m" class="alert alert-success">
                            {{session('success')}}
                        </div>
                        @endif
                        @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                        @endif
                    </div>
                </div>

                <div class="row">
                    <div class="col-9 p-l-0">




                        <div class="card ">
                            <div class="card-header p-0">
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="post-tab" data-toggle="tab" href="#post-content-tab" role="tab" aria-selected="true">Post Content</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="seo-tab" data-toggle="tab" href="#seo-content" role="tab" aria-selected="false">SEO</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-body px-0">
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active " id="post-content-tab" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="post_title" class="col-form-label">{{ __('title') }}*</label>
                                                <input id="post_title" name="title" value="{{ $post->title }}" type="text" class="form-control" required>
                                            </div>



                                            <div class="form-group">
                                                <label for="post-slug" class="col-form-label"><b>{{ __('slug') }}</b>
                                                    ({{ __('slug_message') }})</label>
                                                <input id="post-slug" value="{{ $post->slug }}" name="slug" type="text" class="form-control">
                                            </div>

                                            <!-- tinemcey start -->

                                            <div class="form-group">
                                                <label for="post_content" class="col-form-label">{{ __('content') }}*</label>
                                                <textarea required name="content" class="form-control post-content" value="{{ $post->content }}" id="post_content" rows="3">
                                                        {!! $post->content !!}
                                                    </textarea>
                                            </div>

                                            <!-- tinemcey end -->
                                        </div>

                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h3 class="card-title">{{ __('add_content') }}</h3>
                                                </div>
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-1 pr-0 text-center area">
                                                            <div class="item content-item" onclick="addContent('text')">
                                                                <img src="{{static_asset('default-image/content-icon/text.png') }}">
                                                                <!-- <label>{{ __('text') }}</label> -->
                                                            </div>
                                                        </div>
                                                        <div class="col-md-1 pr-0 text-center area">
                                                            <div class="item content-item" onclick="addContent('image')">
                                                                <img src="{{static_asset('default-image/content-icon/image.png') }}">
                                                                <!-- <label>{{ __('image') }}</label> -->
                                                            </div>
                                                        </div>
                                                        <div class="col-md-1 pr-0 text-center area">
                                                            <div class="item content-item" onclick="addContent('image-text')">
                                                                <img src="{{static_asset('default-image/content-icon/image-text.png') }}">
                                                                <!-- <label>{{ __('image_left') }}</label> -->
                                                            </div>
                                                        </div>
                                                        <div class="col-md-1 pr-0 text-center area">
                                                            <div class="item content-item" onclick="addContent('text-image')">
                                                                <img src="{{static_asset('default-image/content-icon/text-image.png') }}">
                                                                <!-- <label>{{ __('image_right') }}</label> -->
                                                            </div>
                                                        </div>
                                                        <div class="col-md-1 pr-0 text-center area">
                                                            <div class="item content-item" onclick="addContent('text-image-text')">
                                                                <img src="{{static_asset('default-image/content-icon/text-image-text.png') }}">
                                                                <!-- <label>{{ __('image_center') }}</label> -->
                                                            </div>
                                                        </div>
                                                        <div class="col-md-1 pr-0 text-center area">
                                                            <div class="item content-item" onclick="addContent('video')">
                                                                <img src="{{static_asset('default-image/content-icon/video.png') }}">
                                                                <!-- <label>{{ __('video') }}</label> -->
                                                            </div>
                                                        </div>

                                                        <div class="col-md-1 pr-0 text-center area">
                                                            <div class="item content-item" onclick="addContent('code')">
                                                                <img src="{{static_asset('default-image/content-icon/code.png') }}">
                                                                <!-- <label>{{ __('code') }}</label> -->
                                                            </div>
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="content-area">
                                                {{-- all content  --}}
                                                @php
                                                $content_count = 0;
                                                @endphp
                                                @foreach($post_contents as $page => $content)
                                                @php
                                                $page = array_keys($content);
                                                $content_count++;

                                                @endphp
                                                @include('post::contents/'.$page[0], compact('content_count', 'content'))
                                                @endforeach
                                                {{-- all content  --}}
                                            </div>
                                        </div>

                                    </div>
                                    <div class="tab-pane fade" id="seo-content" role="tabpanel">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="meta_title"><b>{{ __('title') }}</b> ({{ __('meta_title') }})</label>
                                                <input class="form-control meta" value="{{ $post->meta_title ?? $post->title }}" id="meta_title" name="meta_title" data-type="title">
                                                <p class="display-nothing alert alert-danger mt-2" role="alert">
                                                    {{__('current_characters')}}: <span class="characters"></span>, {{ __('meta_title').' '. __('should_bd') .' '. __('in_between') .' '. '30-60 ' . __('characters') }}
                                                </p>
                                                <p class="display-nothing alert alert-success mt-2" role="alert">
                                                    {{__('current_characters')}}: <span class="characters"></span>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="post-keywords" class="col-form-label"><b>{{ __('keywords') }}</b>
                                                </label>
                                                <input id="post-keywords" name="meta_keywords" value="{{ $post->meta_keywords }}" type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="post_tags" class="col-form-label">{{ __('tags') }}({{ __('meta_tag') }})</label>
                                                <input id="post_tags" name="tags" type="text" value="{{ $post->tags }}" data-role="tagsinput" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="post_desc"><b>{{ __('description') }}</b> ({{ __('meta_description') }}
                                                    )</label>
                                                <textarea class="form-control meta" id="meta_description" name="meta_description" data-type="description" rows="3">{{ $post->meta_description }}</textarea>
                                                <p class="display-nothing alert alert-danger mt-2" role="alert">
                                                    {{__('current_characters')}}: <span class="characters"></span>, {{ __('meta_title').' '. __('should_bd') .' '. __('in_between') .' '. '30-60 ' . __('characters') }}
                                                </p>
                                                <p class="display-nothing alert alert-success mt-2" role="alert">
                                                    {{__('current_characters')}}: <span class="characters"></span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>



                    <!-- right sidebar start -->
                    <div class="col-3 p-l-0">

                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title"> {{ __('status') }}</h4>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <select class="form-control" id="post_status" name="status" required>
                                        <option @if($post->status==1 && $post->scheduled==0) selected
                                            @endif value="1">{{ __('published') }}</option>
                                        <option @if($post->status==0 && $post->scheduled==0) selected
                                            @endif value="0">{{ __('draft') }}</option>
                                        <option @if($post->status==0 && $post->scheduled==1) selected
                                            @endif value="2">{{ __('scheduled') }}</option>
                                    </select>
                                </div>
                                <div class="form-group divScheduleDate" @if($post->post_status==0 && $post->scheduled==1) @else id="display-nothing" @endif>
                                    <label for="scheduled_date">{{ __('schedule_date') }}</label>
                                    <div class="input-group">
                                        <label class="input-group-text" for="scheduled_date"><i class="fa fa-calendar-alt"></i></label>
                                        <input type="text" class="form-control date" id="scheduled_date" value="{{ Carbon\Carbon::parse($post->scheduled_date)->format('m/d/Y g:i A') }}" name="scheduled_date" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <a href="{{ route('post') }}" class="btn btn-light"><i class="fas fa-chevron-circle-left"></i> {{ __('cancel') }} </a>

                                    <button type="submit" name="btnSubmit" class="btn btn-primary pull-right"><i class="fas fa-save"></i> {{ __('update_post') }}
                                    </button>

                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title"><label for="category_id">{{ __('category') }}*</label></h4>
                            </div>
                            <div class="card-body">
                                <input type="text" style='display:none' name="selected_post_categories" required value="{{$post->categories->count()}}">
                                <div class="form-group">
                                    @include('post::post_category_render_option', ['categories'=>$categories, 'depth'=>0, 'selected_categories'=>$post->categories->pluck("id")->toArray()])
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title"> {{ __('post_type') }}*</h4>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <select class="form-control" id="post_type" name="post_type" required>
                                        <option value="article">Article </option>
                                        <option value="audio">Audio </option>
                                        <option value="video">Video </option>

                                    </select>
                                </div>


                                <div class="form-group">

                                    <label for="post_language ">{{ __('post_layout') }}*</label>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group text-center">

                                                <img src="{{static_asset('default-image/Detail/detail_1.png') }}" alt="" class="img-responsive cat-block-img">
                                                <label class="custom-control custom-radio detail-control-inline">
                                                    {{-- {{(data_get($activeTheme, 'options.detail_style') == "style_1"? 'checked':'')}}--}}
                                                    <input type="radio" name="layout" id="detail_style_1" value="default" {{@$post->layout=="default" ? 'checked': ''}} class="custom-control-input">
                                                    <span class="custom-control-label"></span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group text-center">

                                                <img src="{{static_asset('default-image/Detail/detail_2.png') }}" alt="" class="img-responsive cat-block-img">
                                                <label class="custom-control custom-radio detail-control-inline">
                                                    <input type="radio" name="layout" id="detail_style_2" value="style_2" {{@$post->layout=="style_2" ? 'checked': ''}} class="custom-control-input">
                                                    <span class="custom-control-label"></span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group text-center">

                                                <img src="{{static_asset('default-image/Detail/detail_3.png') }}" alt="" class="img-responsive cat-block-img">
                                                <label class="custom-control custom-radio detail-control-inline">
                                                    <input type="radio" name="layout" id="detail_style_3" value="style_3" {{@$post->layout=="style_3" ? 'checked': ''}} class="custom-control-input">
                                                    <span class="custom-control-label"></span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">{{ __('featured_image') }}</h4>
                            </div>
                            <div class="card-body">
                                <div class="form-group text-center">
                                    <div class="form-group text-center">
                                        @if(isFileExist($post->image, $result = @$post->image->thumbnail))
                                        <img src=" {{basePath($post->image)}}/{{ $result }} " id="image_preview" width="100%" class="img-responsive  image_preview" alt="{!! $post->title !!}">
                                        @else
                                        <img src="{{static_asset('default-image/default-100x100.png') }} " id="image_preview" width="100%" class="img-responsive  image_preview" alt="{!! $post->title !!}">
                                        @endif
                                    </div>
                                </div>
                                <div class="form-group text-center">
                                    <!-- Large modal -->
                                    <button type="button" id="btn_image_modal" class="btn btn-primary btn-image-modal" data-id="1" data-toggle="modal" data-target=".image-modal-lg">{{ __('add_image') }}</button>
                                    <input id="image_id" value="{{ $post->image_id }}" name="image_id" type="hidden" class="form-control image_id">
                                </div>
                            </div>
                        </div>


                        <div class="add-new-page  bg-white p-20 m-b-20 d-none">
                            <div class="col-sm-12 ">
                                <div class="form-group">
                                    <label for="post_language">{{ __('select_language') }}*</label>
                                    <select class="form-control dynamic-category" id="post_language" name="language" data-dependent="category_id">
                                        @foreach ($activeLang as $lang)
                                        <option @if($post->language==$lang->code) Selected
                                            @endif value="{{ $lang->code }}">{{ $lang->name }}
                                        </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>


                        <!-- visibility section start -->
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">{{ __('visibility') }}</h4>
                            </div>
                            <div class='card-body'>
                                <div class="row">
                                    <div class="col-12 col-md-5">
                                        <div class="form-title">
                                            <label for="visibility">{{ __('visibility') }}</label>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <label class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" @if($post->visibility==1) checked
                                            @endif name="visibility" id="visibility_show" value="1"
                                            class="custom-control-input">
                                            <span class="custom-control-label">{{ __('show') }}</span>
                                        </label>
                                    </div>
                                    <div class="col-3 col-md-2">
                                        <label class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" @if($post->visibility==0) checked
                                            @endif name="visibility" id="visibility_hide" value="0"
                                            class="custom-control-input">
                                            <span class="custom-control-label">{{ __('hide') }}</span>
                                        </label>
                                    </div>
                                </div>
                                <div class="row ">
                                <div class="col-10">
                                    <div class="form-title">
                                        <label for="featured_post">{{ __('add_to_featured') }}</label>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" @if($post->featured==1) checked
                                        @endif id="featured_post" name="featured"
                                        class="custom-control-input">
                                        <span class="custom-control-label"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-10">
                                    <div class="form-title">
                                        <label for="add_to_breaking">{{ __('add_to_breaking') }}</label>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" id="add_to_breaking" @if($post->breaking==1) checked
                                        @endif name="breaking" class="custom-control-input">
                                        <span class="custom-control-label"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-10">
                                    <div class="form-title">
                                        <label for="add_to_slide">{{ __('add_to_slider') }}</label>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" id="add_to_slide" @if($post->slider==1) checked
                                        @endif name="slider" class="custom-control-input">
                                        <span class="custom-control-label"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-10">
                                    <div class="form-title">
                                        <label for="recommended">{{ __('add_to_recommended') }}</label>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" id="recommended" @if($post->recommended==1) checked
                                        @endif name="recommended" class="custom-control-input">
                                        <span class="custom-control-label"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-10">
                                    <div class="form-title">
                                        <label for="editor_picks">{{ __('add_to_editor_picks') }}</label>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" id="editor_picks" name="editor_picks" class="custom-control-input" @if($post->editor_picks==1) checked
                                        @endif>
                                        <span class="custom-control-label"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-10">
                                    <div class="form-title">
                                        <label for="auth_required">{{ __('show_only_to_authenticate_users') }}</label>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" id="auth_required" @if($post->auth_required==1) checked @endif name="auth_required"
                                        class="custom-control-input">
                                        <span class="custom-control-label"></span>
                                    </label>
                                </div>
                            </div>
                            </div>
                           
                        </div>
                    </div>
                </div>
                <!-- right sidebar end -->
            </div>
        </div>
    </div>
</div>
{!! Form::close() !!}
<!-- page info end-->
</div>
</div>

<input type="hidden" value="{{ $content_count }}" id="content_number">

@endsection
@section('script')
<script type="text/javascript">


    $(document).ready(function() {

        $('.dynamic-category').change(function() {
            if ($(this).val() != '') {
                var select = $(this).attr("id");
                var value = $(this).val();
                var dependent = $(this).data('dependent');
                var _token = "{{ csrf_token() }}";
                $.ajax({
                    url: "{{ route('category-fetch') }}",
                    method: "POST",
                    data: {
                        select: select,
                        value: value,
                        _token: _token
                    },
                    success: function(result) {
                        $('#' + dependent).html(result);
                    }

                })
            }
        });

        $('#post_language').change(function() {
            $('#category_id').val('');
            $('#sub_category_id').val('');
        });



        $('.dynamic').change(function() {
            if ($(this).val() != '') {
                var select = $(this).attr("id");
                var value = $(this).val();
                var dependent = $(this).data('dependent');
                var _token = "{{ csrf_token() }}";
                $.ajax({
                    url: "{{ route('subcategory-fetch') }}",
                    method: "POST",
                    data: {
                        select: select,
                        value: value,
                        _token: _token
                    },
                    success: function(result) {
                        $('#' + dependent).html(result);
                    }

                })
            }
        });

        $('#category_id').change(function() {
            $('#sub_category_id').val('');
        });

        $('.post-categories').click(function() {
        checked = $("input[type=checkbox].post-categories:checked").length;
        if(checked==0) checked="";
        $("input[name=selected_post_categories]").val(checked);
        console.log("check clicked "+ checked);
});



    });
</script>
<script>
    addContent = function(value) {

        var content_number = $("#content_number").val();
        content_number++;

        $.ajax({
            url: "{{ route('add-content') }}",
            method: "GET",
            data: {
                value: value,
                content_count: content_number
            },
            success: function(result) {
                $('.content-area').append(result);

                if ($.inArray(value, ["text", "image-text", "text-image", "text-image-text"]) >= 0) {
                    console.log("init tinyMce");
                    tinyMceEditor.init("textarea.post-content");
                }

                $("#content_number").val(content_number);

                // auto scrolling to newly added element
                var newlyAdded = 'content_' + content_number;
                $('body, html').animate({
                    scrollTop: $('.' + newlyAdded).offset().top
                }, 1000);
            }

        });
    }


    $(document).on("click", ".add-new-page .row_remove", function() {
        let element = $(this).parents('.add-new-page');
        //element.remove(1000);
        element.hide("slow", function() {
            $(this).remove();
        })
    });
</script>

<script type="text/javascript" src="{{static_asset('js/post.js')}}"></script>
<script src="{{static_asset('js/tagsinput.js')}}"></script>
@endsection