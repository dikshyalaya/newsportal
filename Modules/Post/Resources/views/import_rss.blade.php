@extends('common::layouts.master')
@section('rss')
active
@endsection

@section('content')
<div class="dashboard-ecommerce">
    <div class="container-fluid dashboard-content ">

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

        <!-- page info start-->
        {!! Form::open(['route' => ['save-rss-feed'],'method' => 'post']) !!}

        <div class="row">
            <div class="col-8">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">{{ __('add_rss_source') }}</h4>
                        <div class="card-toolbox text-right">
                            <a href="{{ route('rss-feeds') }}" class="btn btn-primary btn-add-new"><i class="fas fa-list"></i> {{ __('rss_feeds') }}
                            </a>
                        </div>
                    </div>
                    <div class="card-body">

                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="feed_name" class="col-form-label">{{ __('feed_name') }} *</label>
                                    <input id="feed_name" name="name" value="{{ old('name') }}" type="text" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label for="feed_url" class="col-form-label"> <b>{{ __('feed_url') }} * </b>
                                        ({{ __('valid_feed_url') }})</label>
                                    <input id="feed_url" name="feed_url" placeholder="{{ __('feed_url') }}" value="{{ old('feed_url') }}" type="text" required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="post_content" class="col-form-label">{{ __('number_of_post_to_import') }} *</label>
                                    <input type="number" class="form-control max-100 col-2" name="post_limit" placeholder="{{ __('number_of_post_to_import') }}" value="" min="1" max="100" required>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>



                <div class="card">

                    <div class="card-header">
                        <h4 class="card-title">{{ __('article_layout') }}</h4>
                    </div>

                    <div class="card-body">
                        <div class="row">


                            <div class="col-md-4 text-center">
                                <img src="{{static_asset('default-image/Detail/detail_1.png') }}" alt="" class="img-responsive cat-block-img">
                                <div class="form-group">


                                    <label class="custom-control custom-radio detail-control-inline">
                                        <input type="radio" name="layout" id="detail_style_1" value="default" checked class="custom-control-input">
                                        <span class="custom-control-label"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-4 text-center">
                                <img src="{{static_asset('default-image/Detail/detail_2.png') }}" alt="" class="img-responsive cat-block-img">
                                <div class="form-group">


                                    <label class="custom-control custom-radio detail-control-inline">
                                        <input type="radio" name="layout" id="detail_style_2" value="style_2" class="custom-control-input">
                                        <span class="custom-control-label"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-4 text-center">
                                <img src="{{static_asset('default-image/Detail/detail_3.png') }}" alt="" class="img-responsive cat-block-img">
                                <div class="form-group">


                                    <label class="custom-control custom-radio detail-control-inline">
                                        <input type="radio" name="layout" id="detail_style_3" value="style_3" class="custom-control-input">
                                        <span class="custom-control-label"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>

                    <!-- options section start -->
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">{{ __('options') }}</h4>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-title">
                                        <label for="auto_update">{{ __('auto_update') }}</label>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <label class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="auto_update" id="auto_update" checked value="1" class="custom-control-input">
                                        <span class="custom-control-label">{{ __('yes') }}</span>
                                    </label>
                                </div>
                                <div class="col-3">
                                    <label class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="auto_update" id="auto_update" value="0" class="custom-control-input">
                                        <span class="custom-control-label">{{ __('no') }}</span>
                                    </label>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-6">
                                    <div class="form-title">
                                        <label for="show_read_more">{{ __('show_read_more') }}</label>
                                    </div>
                                </div>
                                <div class="col-3 ">
                                    <label class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="show_read_more" id="show_read_more" checked value="1" class="custom-control-input">
                                        <span class="custom-control-label">{{ __('yes') }}</span>
                                    </label>
                                </div>
                                <div class="col-3 ">
                                    <label class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="show_read_more" id="show_read_more" value="0" class="custom-control-input">
                                        <span class="custom-control-label">{{ __('no') }}</span>
                                    </label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-title">
                                        <label for="show_author">{{ __('keep_post_original_publish_date') }}</label>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <label class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="keep_date" id="keep_date" checked value="1" class="custom-control-input">
                                        <span class="custom-control-label">{{ __('yes') }}</span>
                                    </label>
                                </div>
                                <div class="col-3 ">
                                    <label class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="keep_date" id="keep_date" value="0" class="custom-control-input">
                                        <span class="custom-control-label">{{ __('no') }}</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- options section end -->


                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">{{ __('seo_details') }}</h4>
                    </div>
                    <div class="card-body">

                        <!-- SEO section start -->
                        <div class="row">

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="post-keywords" class="col-form-label"><b>{{ __('keywords') }}</b>
                                        ({{ __('meta_tag') }})</label>
                                    <input id="post-keywords" name="meta_keywords" value="{{ old('meta_keywords') }}" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="post_tags" class="col-form-label">{{ __('tags') }}</label>
                                    <input id="post_tags" name="tags" type="text" value="{{ old('tags') }}" data-role="tagsinput" class="form-control" />
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="post_desc"><b>{{ __('description') }}</b> ({{ __('meta_tag') }})</label>
                                    <textarea class="form-control" id="meta_description" value="{{ old('meta_description') }}" name="meta_description" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                        <!-- SEO section end -->
                    </div>
                </div>
            </div>

            <!-- right sidebar start -->
            <div class="col-4">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">{{ __('publish') }}*</h4>
                    </div>
                    <div class="card-body">

                        <div class="form-group">
                            <select class="form-control" id="post_status" name="status" required>
                                <option value="1">{{ __('published') }}</option>
                                <option value="0">{{ __('draft') }}</option>
                                <option value="2">{{ __('scheduled') }}</option>
                            </select>
                        </div>

                        <div class="form-group divScheduleDate">
                            <label for="scheduled_date">{{ __('schedule_date') }}</label>
                            <div class="input-group">
                                <label class="input-group-text" for="scheduled_date"><i class="fa fa-calendar-alt"></i></label>
                                <input type="text" class="form-control date" id="scheduled_date" name="scheduled_date" />
                            </div>
                        </div>

                        <div class="form-group">

                            <button type="submit" name="btnSubmit" class="btn btn-primary pull-right"><i class="m-r-10 mdi mdi-plus"></i>{{ __('add_feed') }}</button>

                        </div>

                    </div>

                </div>

                <div class="add-new-page card">
                    <div class="card-header">
                        <h4 class="card-title">{{__("category")}}</h4>
                    </div>
                    <div class="card-body">

                        <div class="form-group d-none">
                            <label for="post_language">{{ __('select_language') }}*</label>
                            <select class="form-control dynamic-category" id="post_language" name="language" data-dependent="category_id" required>
                                @foreach ($activeLang as $lang)
                                <option @if(App::getLocale()==$lang->code) Selected
                                    @endif value="{{ $lang->code }}">{{ $lang->name }}
                                </option>
                                @endforeach
                            </select>
                        </div>


                        <div class="form-group-">
                            @include('post::post_category_render_radio', ['categories'=>$categories, 'depth'=>0, "selected_categories"=>[]])
                        </div>

                    </div>
                </div>
                

            </div>
            <!-- right sidebar end -->
        </div>

        {!! Form::close() !!}
        <!-- page info end-->
    </div>
</div>

@endsection
@section('script')
<script>
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

        $('#category').change(function() {
            $('#sub_category_id').val('');
        });
    });
</script>

<script type="text/javascript" src="{{static_asset('js/post.js') }}"></script>
<script src="{{static_asset('js/tagsinput.js')}}"></script>
@endsection