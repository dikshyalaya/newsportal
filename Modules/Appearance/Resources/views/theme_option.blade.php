@extends('common::layouts.master')
@section('appearance')
active
@endsection
@section('appearance-aria-expanded')
aria-expanded=true
@endsection
@section('theme_option')
active
@endsection
@section('appearance-show')
show
@endsection

@section('content')

<div class="dashboard-ecommerce">
    <div class="container-fluid dashboard-content ">
        <!-- page info start-->
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

            <!-- Main Content section start -->
            <div class="col-12">
                {!! Form::open(['route'=>'update-theme-option','method' => 'post']) !!}


                <div class="card">
                    <div class="card-header p-0">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="general-settings-tab" data-toggle="tab" href="#general-settings-content" role="tab" aria-selected="true">{{ __('general_settings') }}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="header-tab" data-toggle="tab" href="#header-settings-content" role="tab" aria-selected="false">{{ __('header') }}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="footer-tab" data-toggle="tab" href="#footer-settings-content" role="tab" aria-selected="false">{{ __('footer') }}</a>
                            </li>
                        </ul>

                        <div class="card-toolbox"></div>
                    </div>
                    <div class="card-body">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="general-settings-content" role="tabpanel" aria-labelledby="general-settings-tab">
                                <div class="row">
                                    <div class="col-3">
                                        <div class="form-group">
                                            <label for="page-title" class="col-form-label">{{ __('primary_color') }}</label>
                                            <input id="page-title" value="{{ data_get($activeTheme, 'options.primary_color') }}" name="primary_color" type="color" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="form-group">
                                            <label for="language" class="col-form-label">{{ __('font') }}</label>
                                            <select class="form-control" name="fonts" id="language">
                                                @foreach(\Config::get('site.fonts') as $key=>$font)
                                                <option value="{{$key}}" @if(data_get($activeTheme, 'options.fonts' )==$key) selected @endif>
                                                    @php
                                                    $font = explode(',',$font);
                                                    @endphp {{$font[0]}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-3">
                                        <div class="form-group">
                                            <label for="language" class="col-form-label">{{ __('default_mode') }}</label>
                                            <select class="form-control" name="mode" id="mode">
                                                @foreach(\Config::get('site.modes') as $key=>$mode)
                                                <option value="{{$mode}}" @if(data_get($activeTheme, 'options.mode' )==$mode) selected @endif>{{$key}} </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="header-settings-content" role="tabpanel" aria-labelledby="header-settings-tab">
                                <div class="row">
                                    <div class=" col-3 mb-3">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="header_style" id="header_style_1" value="header_1" {{(data_get($activeTheme, 'options.header_style') == "header_1"? 'checked':'')}} class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Header/Header_1.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class=" col-3 mb-3">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="header_style" id="header_style_2" value="header_2" {{(data_get($activeTheme, 'options.header_style') == "header_2"? 'checked':'')}} class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Header/Header_2.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class=" col-3 mb-3">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="header_style" id="header_style_3" value="header_3" {{(data_get($activeTheme, 'options.header_style') == "header_3"? 'checked':'')}} class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Header/Header_3.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class=" col-3 mb-3">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="header_style" id="header_style_4" value="header_4" {{(data_get($activeTheme, 'options.header_style') == "header_4"? 'checked':'')}} class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Header/Header_4.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class=" col-3 mb-3">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="header_style" id="header_style_5" value="header_5" {{(data_get($activeTheme, 'options.header_style') == "header_5"? 'checked':'')}} class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Header/Header_5.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class=" col-3 mb-3">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="header_style" id="header_style_6" value="header_6" {{(data_get($activeTheme, 'options.header_style') == "header_6"? 'checked':'')}} class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Header/Header_6.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="footer-settings-content" role="tabpanel" aria-labelledby="footer-settings-tab">
                                <div class="row">
                                    <div class="col-12 col-md-4">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="footer_style" id="footer_style_1" value="footer_1" {{(data_get($activeTheme, 'options.footer_style') == "footer_1"? 'checked':'')}} class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Footer/Footer_1.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="footer_style" id="footer_style_2" value="footer_2" {{(data_get($activeTheme, 'options.footer_style') == "footer_2"? 'checked':'')}} class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Footer/Footer_2.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="footer_style" id="footer_style_3" value="footer_3" {{(data_get($activeTheme, 'options.footer_style') == "footer_3"? 'checked':'')}} class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Footer/Footer_3.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="card-footer">
                        <div class="form-group  text-right">
                            <button type="submit" class="btn btn-primary pull-right"><i class="m-r-10 mdi mdi-content-save-all"></i>{{ __('update_theme') }}</button>
                        </div>
                    </div>
                </div>



                {!! Form::close() !!}

                {!! Form::open(['route' => 'update-settings', 'method' => 'post', 'enctype' => 'multipart/form-data', 'id' => 'update-settings']) !!}

                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">{{ __('preloader_option') }}</h4>
                        <div class="card-toolbox"></div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-md-4">
                                <div class="form-title">
                                    <label for="visibility">{{ __('status') }}</label>
                                </div>
                            </div>
                            <div class="col-3 col-md-2">
                                <label class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="preloader_option" id="visibility_show" value="1" {{ settingHelper('preloader_option') == 1? 'checked':"" }} class="custom-control-input">
                                    <span class="custom-control-label">{{ __('enable') }}</span>
                                </label>
                            </div>
                            <div class="col-3 col-md-2">
                                <label class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="preloader_option" id="visibility_hide" value="0" class="custom-control-input" {{ settingHelper('preloader_option') == 0? 'checked':"" }}>
                                    <span class="custom-control-label">{{ __('disable') }}</span>
                                </label>
                            </div>

                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="form-group m-10 text-right">
                            <button type="submit" class="btn btn-primary pull-right"><i class="m-r-10 mdi mdi-content-save-all"></i>{{ __('save') }}</button>
                        </div>
                    </div>
                </div>

                {!! Form::close() !!}
            </div>
            <!-- Main Content section end -->

        </div>


        <!-- page info end-->
    </div>
</div>

@endsection