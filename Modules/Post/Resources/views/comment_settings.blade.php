@extends('common::layouts.master')

@section('comments-show')
show
@endsection

@section('comments_active')
active
@endsection

@section('comments-setting')
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
        {!! Form::open(['route' => 'update-comment-settings','method' => 'post']) !!}

        <div class="card">
            <div class="card-header">
                <h4 class="card-title">{{ __('comment_settings') }}</h4>
                <div class="card-toolbox"></div>
            </div>
            <div class="card-body">
                <div class="col-6">
                    <div class="form-group">
                        <label for="in_build" class="col-form-label">{{ __('in_build') }}</label>
                        <select name="inbuild_comment" id="in_build" class="form-control">
                            <option @if( settingHelper('inbuild_comment')=='1' ) selected @endif value="1">{{ __('enable') }}</option>
                            <option @if( settingHelper('inbuild_comment') !='1' ) selected @endif value="0">{{ __('disable') }}</option>
                        </select>
                    </div>


                    <div class="form-group d-none">
                        <label for="disqus_comment" class="col-form-label">{{ __('disqus_comment') }}</label>
                        <select name="disqus_comment" id="disqus_comment" class="form-control">
                            <option @if( settingHelper('disqus_comment')=='1' ) selected @endif value="1">{{ __('enable') }}</option>
                            <option @if( settingHelper('disqus_comment') !='1' ) selected @endif value="0">{{ __('disable') }}</option>
                        </select>
                    </div>

                    <div class="form-group d-none">
                        <label for="disqus_short_name" class="col-form-label">{{ __('disqus_short') }}</label>
                        <input value="{{ settingHelper('disqus_short_name') }}" id="disqus_short_name" name="disqus_short_name" type="text" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="facebook_comment" class="col-form-label">{{ __('facebook_comment') }}</label>
                        <select name="facebook_comment" id="facebook_comment" class="form-control">
                            <option @if( settingHelper('facebook_comment')=='1' ) selected @endif value="1">{{ __('enable') }}</option>
                            <option @if( settingHelper('facebook_comment') !='1' ) selected @endif value="0">{{ __('disable') }}</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="facebook_app_id" class="col-form-label">{{ __('facebook_app_id') }}</label>
                        <input value="{{ settingHelper('facebook_app_id') }}" id="facebook_app_id" name="facebook_app_id" type="text" class="form-control">
                    </div>
                </div>

            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-6">
                        <div class="form-group m-t-10 m-l-15">
                        <button type="submit" class="btn btn-primary"><i class="mdi mdi-content-save-all"></i>{{ __('save_changes') }}
                        </button></div>
                    </div>
                </div>

            </div>
        </div>

        {!! Form::close() !!}
        <!-- page info end-->
    </div>
</div>
<!-- page info end-->
</div>
</div>
</div>
{{-- </div> --}}


@endsection