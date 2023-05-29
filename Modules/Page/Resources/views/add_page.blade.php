@extends('common::layouts.master')
@section('pages')
active
@endsection
@section('page-aria-expanded')
aria-expanded=true
@endsection
@section('add-page-active')
active
@endsection
@section('page-show')
show
@endsection
@section('modal')
@include('gallery::image-gallery')
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
        {!! Form::open(['route' => 'create_new_page','method' => 'post', 'enctype'=>'multipart/form-data']) !!}
        <input type="hidden" id="images" value="{{ $countImage }}">
        <input type="hidden" id="imageCount" value="1">

        <div class="row">
            <div class="col-9">
                <div class="card">
                    <div class="card-header p-0">

                        <div class="card-title">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="post-tab" data-toggle="tab" href="#post-content" role="tab" aria-selected="true">{{ __('add_page') }}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="seo-tab" data-toggle="tab" href="#seo-content" role="tab" aria-selected="false">{{ __('seo') }}</a>
                                </li>
                            </ul>
                        </div>
                        <div class="card-toolbox text-right p-t-5">
                            <a href="{{ route('pages') }}" class="btn btn-primary btn-add-new btn-sm"><i class="fas fa-arrow-left"></i>
                                {{ __('back_to_pages') }}
                            </a>
                        </div>

                    </div>
                    <div class="card-body">


                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="post-content" role="tabpanel" aria-labelledby="home-tab">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="page-title" class="col-form-label">{{ __('title') }}*</label>
                                            <input id="page-title" onkeyup="metaTitleSet()" value="{{ old('title') }}" name="title" type="text" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="page-slug" class="col-form-label"><b>{{ __('slug') }}</b>
                                                ({{ __('slug_message') }})</label>
                                            <input id="page-slug" name="slug" value="{{ old('slug') }}" type="text" class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-12" id="description">
                                        <div class="form-group">
                                            <label for="content" class="col-form-label">{{ __('description') }}</label>
                                            <textarea required name="description" id="content" class="form-control post-content"></textarea>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="tab-pane fade" id="seo-content" role="tabpanel">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="title-meta" class="col-form-label"><b>{{ __('title') }}</b>
                                            ({{ __('meta_tag') }})</label>
                                        <input id="title-meta" name="meta_title" value="{{ old('meta_title') }}" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="page-meta" class="col-form-label"><b>{{ __('description') }}</b>
                                            ({{ __('meta_tag') }})</label>
                                        <input id="page-meta" name="meta_description" value="{{ old('meta_description') }}" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="page-keywords" class="col-form-label"><b>{{ __('keywords') }}</b>
                                            ({{ __('meta_tag') }})</label>
                                        <input id="page-keywords" name="meta_keywords" value="{{ old('meta_keywords') }}" type="text" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Sidebar -->
            <div class="col-3 p-0">

                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">{{ __('page_layout') }}</h4>
                    </div>

                    <div class="card-body">


                        <div class="form-group d-none">
                            <label for="language" class="col-form-label">{{ __('language') }}*</label>
                            <select class="form-control" name="language" id="language">
                                @foreach ($activeLang as $lang)
                                <option @if(settingHelper('default_language')==$lang->code) Selected
                                    @endif value="{{$lang->code}}">{{$lang->name}}
                                </option>
                                @endforeach
                            </select>
                        </div>


                        <div class="form-group">
                            <label for="page_type" class="col-form-label">{{ __('page_type') }}*</label>
                            <select name="page_type" id="page_type" class="form-control">
                                <option value="1">{{__('default')}}</option>
                                <option value="2">{{__('contact_us')}}</option>
                            </select>
                        </div>

                        <div class="form-group">
                        <label for="template" class="col-form-label">{{ __('template') }}</label>
                            <select name="template" id="template" class="form-control">
                                <option value="1">{{__('without_sidebar')}}</option>
                                <option value="2">{{__('with_right_sidebar')}}</option>
                            </select>
                        </div>


                        <div class="form-group">
                            <button type="submit" class="btn btn-primary float-right"><i class="mdi mdi-plus"></i> {{ __('add_page') }}</button>
                        </div>


                    </div>
                </div>

                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">{{ __('feature_image') }}</h4>
                        <div class="card-toolbox"></div>
                    </div>
                    <div class="card-body">
                        <div class="form-group">

                            <div class="form-group text-center">
                                <img src="{{static_asset('default-image/default-100x100.png') }} " id="image_preview" width="150" alt="image" class="img-responsive">
                            </div>
                        </div>

                        <div class="form-group text-center">
                            <button type="button" id="btn_image_modal" class="btn btn-primary btn-image-modal" data-id="1" data-toggle="modal" data-target=".image-modal-lg">{{ __('add_image') }}</button>
                            <input id="image_id" name="image_id" type="hidden" class="form-control">
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">{{ __('visibility') }}</h4>
                        <div class="card-toolbox"></div>
                    </div>
                    <div class="card-body">
                        <div class="row ">
                            <div class="col-6">
                                <div class="form-title">
                                    <label for="visibility">{{ __('visibility') }}</label>
                                </div>
                            </div>
                            <div class="col-3">
                                <label class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="visibility" id="visibility_show" value="1" checked class="custom-control-input">
                                    <span class="custom-control-label">{{ __('show') }}</span>
                                </label>
                            </div>
                            <div class="col-3">
                                <label class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="visibility" id="visibility_hide" value="0" class="custom-control-input">
                                    <span class="custom-control-label">{{ __('hide') }}</span>
                                </label>
                            </div>
                        </div>

                        <div class="row ">
                            <div class="col-6">
                                <div class="form-title">
                                    <label for="show_title">{{ __('show_title') }}</label>
                                </div>
                            </div>
                            <div class="col-3">
                                <label class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="show_title" id="show_title_enable" checked value="1" class="custom-control-input">
                                    <span class="custom-control-label">{{ __('yes') }}</span>
                                </label>
                            </div>
                            <div class="col-3">
                                <label class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="show_title" id="show_title_desable" value="0" class="custom-control-input">
                                    <span class="custom-control-label">{{ __('no') }}</span>
                                </label>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col-6">
                                <div class="form-title">
                                    <label for="breadcrumb">{{ __('show_breadcrumb') }}</label>
                                </div>
                            </div>
                            <div class="col-3">
                                <label class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="show_breadcrumb" id="show_breadcumb_enable" checked value="1" class="custom-control-input">
                                    <span class="custom-control-label">{{ __('yes') }}</span>
                                </label>
                            </div>
                            <div class="col-3">
                                <label class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="show_breadcrumb" id="show_breadcumb_desable" value="0" class="custom-control-input">
                                    <span class="custom-control-label">{{ __('no') }}</span>
                                </label>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col-6">
                                <div class="form-title">
                                    <label for="show_for_register">{{ __('show_only_to_registered_users') }}</label>
                                </div>
                            </div>
                            <div class="col-3">
                                <label class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="show_for_register" id="show_only_registerd_user_enable" checked value="1" class="custom-control-input">
                                    <span class="custom-control-label">{{ __('yes') }}</span>
                                </label>
                            </div>
                            <div class="col-3">
                                <label class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="show_for_register" id="show_only_registerd_user_desable" value="0" class="custom-control-input">
                                    <span class="custom-control-label">{{ __('no') }}</span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        {{ Form::close() }}
        <!-- page info end-->
    </div>
</div>

@endsection

@section('script')
<script type="text/javascript">
    $(document).ready(function(){
        tinyMceEditor.init("textarea.post-content");
        

    });
</script>
@endsection