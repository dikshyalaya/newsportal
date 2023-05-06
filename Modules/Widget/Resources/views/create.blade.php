<!-- msater layout -->
@extends('common::layouts.master')
<!-- active menu -->
@section('widgets')
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

        <div class="card">
            <div class="card-header">
                <h4 class="card-title">{{ __('add_widget') }}</h4>
                <div class="card-toolbox text-right"> <a href="{{ route('widgets') }}" class="btn btn-primary btn-add-new btn-sm"><i class="fas fa-arrow-left"></i>
                        {{ __('back_to_widgets') }}
                    </a></div>
            </div>
            <div class="card-body">
                <!-- page info start-->
                {!! Form::open(['route' => 'store-widget','method' => 'post', 'enctype'=>'multipart/form-data']) !!}
                <div class="row ">
                    <div class="col-4">



                        <div class="form-group">
                            <label for="widget_title" class="col-form-label">{{ __('title') }}*</label>
                            <input id="widget_title" name="title" type="text" class="form-control">
                        </div>

                        <div class="form-group d-none">
                            <label for="language">{{ __('language') }}</label>
                            <select class="form-control" name="language" id="language">
                                @foreach ($activeLang as $lang)
                                <option @if(settingHelper('default_language')==$lang->code) Selected
                                    @endif value="{{$lang->code}}">{{$lang->name}}
                                </option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="language">{{ __('location') }}</label>
                            <select class="form-control" name="location" id="location">
                                @foreach (__('widget::widget.location') as $value => $item)
                                <option value="{{$value}}">{{$item}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="language">{{ __('content_type') }}</label>
                            <select class="form-control" name="content_type" id="content_type">
                                @foreach (__('widget::widget.content_type') as $value => $item)
                                <option value="{{$value}}">{{$item}}</option>
                                @endforeach
                            </select>
                            <select class="form-control d-none" name="content_type_footer" id="content_type_footer">
                                @foreach (__('widget::widget.content_type_footer') as $value => $item)
                                <option value="{{$value}}">{{$item}}</option>
                                @endforeach
                            </select>
                            <select class="form-control d-none" name="content_type_header" id="content_type_header">
                                @foreach (__('widget::widget.content_type_header') as $value => $item)
                                <option value="{{$value}}">{{$item}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group d-none" id="addBlocekerDetected">
                            <label for="widget-order" class="col-form-label alert-danger">Please Unblock the
                                adBlocker</label>
                        </div>

                        <div class="form-group d-none" id="ad-area">
                            <label for="language">{{ __('ads') }}</label>
                            <select class="form-control" name="ad" id="ad">
                                @foreach ($ads as $value => $ad)
                                <option value="{{$ad->id}}">{{$ad->ad_name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group d-none" id="poll-area">
                            <label for="language">{{ __('polls') }}</label>
                            <select class="form-control" name="poll" id="poll">
                                @foreach ($polls as $value => $poll)
                                <option value="{{$poll->id}}">{{$poll->question}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-groupd-none" id="tags_container">
                            <label for="widget_title" class="col-form-label">{{ __('tags') }}*</label>
                            <input id="widget_title" name="tags" type="text" class="form-control" data-role="tagsinput">
                        </div>

                        <div class="form-group">
                            <label for="widget-order" class="col-form-label">{{ __('order') }}</label>
                            <input id="widget-order" name="order" type="number" value="{{ $order }}" class="form-control">
                        </div>

                        <div class="form-group d-none" id="content_container">
                            <label for="content" class="col-form-label">{{ __('content') }}</label>
                            <textarea id="content" class="post-content" name="content" cols="30" rows="5"></textarea>
                        </div>

                        <div class="row">
                            <div class="form-group col-4">
                                <div class="form-title">
                                    <label for="status">{{ __('status') }}</label>
                                </div>
                            </div>
                            <div class="form-group col-3">
                                <label class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="status" value="1" checked class="custom-control-input">
                                    <span class="custom-control-label">{{ __('show') }}</span>
                                </label>
                            </div>
                            <div class="form-group col-3">
                                <label class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="status" value="0" class="custom-control-input">
                                    <span class="custom-control-label">{{ __('hide') }}</span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group ">
                            <button type="submit" class="btn btn-primary float-right"><i class="mdi mdi-plus"></i>{{ __('add_widget') }}</button>
                        </div>
                    </div>



                </div>
              
            </div>
            {!! Form::close() !!}
            <!-- page info end-->
        </div>
    </div>

</div>
</div>

@endsection



@push('include_js')

    <script>
        $(document).ready(function () {
            $('#content_type').change(function () {
                let contentType = $(this).val();
                if (contentType == {{ \Modules\Widget\Enums\WidgetContentType::CUSTOM }}) {
                    $('#content_container').removeClass('d-none');
                } else {
                    $('#content_container').addClass('d-none');
                    tinymce.get('content').setContent('');
                }
            });
            $('#content_type').change(function () {
                let contentType = $(this).val();
                if (contentType == {{ \Modules\Widget\Enums\WidgetContentType::TAGS }}) {
                    $('#tags_container').removeClass('d-none');
                } else {
                    $('#tags_container').addClass('d-none');
                }
            });

            $('#location').change(function () {
                let location = $(this).val();
                if (location == {{ \Modules\Widget\Enums\WidgetLocation::RIGHT_SIDEBAR }}) {
                    
                    if($('#content_type').val() == {{ \Modules\Widget\Enums\WidgetContentType::VOTING_POLL }}){
                        $('#poll-area').removeClass('d-none');
                    }
                    $('#content_type').removeClass('d-none');
                    $('#content_type_header').addClass('d-none');
                    $('#content_type_footer').addClass('d-none');
                    $('#ad-area').addClass('d-none');
                    $('#poll-area').addClass('d-none');
                } else if (location == {{ \Modules\Widget\Enums\WidgetLocation::FOOTER }}) {
                    $('#content_type').addClass('d-none');
                    $('#content_type_header').addClass('d-none');
                    $('#content_type_footer').removeClass('d-none');
                    $('#ad-area').addClass('d-none');
                    $('#poll-area').addClass('d-none');
                } else {
                    $('#content_type').addClass('d-none');
                    $('#content_type_header').removeClass('d-none');
                    $('#content_type_footer').addClass('d-none');
                    $('#ad-area').removeClass('d-none');
                }
            });

            $('#content_type, #content_type_footer, #content_type_header').change(function () {
                let type = $(this).val();
                if (type == {{ \Modules\Widget\Enums\WidgetContentType::AD }}) {
                    $('#ad-area').removeClass('d-none');
                    if (window.canRunAds === undefined) {
                        $('#addBlocekerDetected').removeClass('d-none');
                    }
                    if (window.canRunAds !== undefined) {
                        $('#addBlocekerDetected').addClass('d-none');
                    }
                } else {
                    $('#ad-area').addClass('d-none');
                    $('#addBlocekerDetected').addClass('d-none');
                }

                if (type == {{ \Modules\Widget\Enums\WidgetContentType::VOTING_POLL }}) {
                    $('#poll-area').removeClass('d-none');
                } else {
                    $('#poll-area').addClass('d-none');
                }


            });

        });
    </script>
    <script src="{{static_asset('js/tagsinput.js')}}"></script>
@endpush