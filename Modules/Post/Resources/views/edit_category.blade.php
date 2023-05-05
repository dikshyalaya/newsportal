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
@section('category-active')
    active
@endsection

@section('content')


<div class="dashboard-ecommerce">
    <div class="container-fluid dashboard-content ">
        <!-- page info start-->
        <div class="row clearfix">
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
                    <!-- Main Content section start -->
                    <div class="col-12 col-lg-4">
                       
                       
                        {!! Form::open(['route'=>'update-category','method' => 'post']) !!}     
                       
                       
                        <div class="add-new-page  bg-white p-20 m-b-20">
                            <div class="block-header">
                                <h2>{{ __('add_category') }}</h2>
                            </div>

                            <div class="col-sm-12 d-none">
                                <div class="form-group">
                                    <label for="language">{{ __('select_language') }}*</label>
                                    <select class="form-control" name="language" id="language">
                                        @foreach ($activeLang as $lang)
                                        <option @if(App::getLocale()==$lang->code) Selected
                                            @endif value="{{$lang->code}}">{{$lang->name}}
                                        </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                <input name="category_id" value="{{ $category->id }}" type="hidden">
                                    <label for="category-name" class="col-form-label">{{ __('category_name') }}
                                        *</label>
                                    <input id="category-name" name="category_name" type="text" class="form-control" value="{{ $category->category_name }}" required>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="category-slug" class="col-form-label"><b>{{ __('slug') }}</b>
                                        ({{ __('slug_message') }})</label>
                                    <input id="category-slug" name="slug" type="text" class="form-control" value="{{ $category->slug }}">
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="parent_id">{{ __('parent_category') }}*</label>
                                    <select class="form-control dynamic" id="parent_id" name="parent_id">
                                        <option value="">{{ __('select_category') }}</option>
                                        @include('post::category_render_option', ['selected_category'=>$category, 'categories'=>$categories, 'depth'=>0])
                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="category-keywords" class="col-form-label"><b>{{ __('keywords') }}</b> ({{ __('meta_tag') }})</label>
                                    <input id="category-keywords" name="meta_keywords" type="text" class="form-control" value="{{ $category->meta_keywords }}">
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="category-desc" class="col-form-label"><b>{{ __('description') }}</b>
                                        ({{ __('meta_tag') }})</label>
                                    <textarea id="category-desc" name="meta_description" type="text" class="form-control">{{ $category->meta_description }}</textarea>
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="category-order" class="col-form-label">{{ __('order') }}</label>
                                    <input id="category-order" value="1" name="order" type="number" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="block-header">
                                    <h2>{{__('featured')}}</h2>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-12 col-md-4">
                                        <div class="form-title">
                                            <label for="is_featured">{{__('status')}}</label>
                                        </div>
                                    </div>
                                    <div class="col-3 col-md-2">
                                        <label class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="is_featured" id="visibility_show" value="1" class="custom-control-input" data-parsley-multiple="visibility">
                                            <span class="custom-control-label">{{__('yes')}}</span>
                                        </label>
                                    </div>
                                    <div class="col-3 col-md-2">
                                        <label class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="is_featured" id="visibility_hide" checked value="0" class="custom-control-input" data-parsley-multiple="visibility">
                                            <span class="custom-control-label">{{__('no')}}</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 m-t-20">
                                    <div class="form-group form-float form-group-sm text-right">
                                        <button type="submit" name="btnsubmit" class="btn btn-primary pull-right"><i class="m-r-10 mdi mdi-floppy"></i>{{ __('save_category') }}</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                        {!! Form::close() !!}
                    </div>
                    <!-- Main Content section end -->

                    <!-- right sidebar start -->
                    <div class="col-12 col-lg-8">
                        <div class="add-new-page  bg-white p-20 m-b-20">
                            <div class="block-header m-b-20">
                                <h2>{{__('categories')}}</h2>
                            </div>
                            <div class="table-responsive all-pages">
                                <table class="table table-bordered table-hover">
                                    <thead>
                                        <tr role="row">
                                            <th>{{ __('category_name') }}</th>
                                            <th>{{ __('featured') }}</th>
                                            @if(Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
                                            <th>{{ __('options') }}</th>
                                            @endif
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @include('post::category_render', ['categories'=>$categories, 'depth'=>0])
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-12 col-sm-6">
                                    <div class="block-header">
                                        <h2>{{ __('showing')}} {{ $categories->firstItem()}} {{ __('to') }} {{ $categories->lastItem()}}
                                            of {{ $categories->total()}} {{ __('entries') }}</h2>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6 text-right">
                                    <div class="table-info-pagination float-right">
                                        <nav aria-label="Page navigation example">
                                            {!! $categories->render() !!}
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- right sidebar end -->
                </div>
            </div>
        </div>
        <!-- page info end-->
    </div>
</div>

@endsection
