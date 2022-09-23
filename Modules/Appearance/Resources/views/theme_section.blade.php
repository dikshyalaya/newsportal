@extends('common::layouts.master')
@section('sections')
active
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

        <div class="card">
            <div class="card-header">
                <h4 class="card-title">{{ __('primary_section') }}</h4>
                <div class="card-toolbox"></div>
            </div>
            <div class="card-body">
                {!! Form::open(['route'=>'update-primary-section','method' => 'post']) !!}
                <div class="row p-l-15">

                    <div class="col-12 col-md-4">
                        <div class="primary_section_style">
                            <label class="custom-control custom-radio custom-control-inline">
                                <input type="radio" name="primary_section_style" id="primary_section_style_1" value="style_1" @if($primarySection->section_style == "style_1") checked="" @endif class="custom-control-input">
                                <span class="custom-control-label"></span>
                            </label>
                            <img src="{{static_asset('default-image/primary_section/Style_1.png') }}" alt="image" class="img-responsive cat-block-img">
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="primary_section_style">
                            <label class="custom-control custom-radio custom-control-inline">
                                <input type="radio" name="primary_section_style" id="primary_section_style_2" value="style_2" @if($primarySection->section_style == "style_2") checked="" @endif class="custom-control-input">
                                <span class="custom-control-label"></span>
                            </label>
                            <img src="{{static_asset('default-image/primary_section/Style_2.png') }}" alt="image" class="img-responsive cat-block-img">
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="primary_section_style">
                            <label class="custom-control custom-radio custom-control-inline">
                                <input type="radio" name="primary_section_style" id="primary_section_style_3" value="style_3" @if($primarySection->section_style == "style_3") checked="" @endif class="custom-control-input">
                                <span class="custom-control-label"></span>
                            </label>
                            <img src="{{static_asset('default-image/primary_section/Style_3.png') }}" alt="image" class="img-responsive cat-block-img">
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="primary_section_style">
                            <label class="custom-control custom-radio custom-control-inline">
                                <input type="radio" name="primary_section_style" id="primary_section_style_none" value="" @if($primarySection->section_style == null) checked="" @endif class="custom-control-input">
                                <span class="custom-control-label"></span>
                            </label>
                            <span>{{ __('none') }}</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 m-t-20">
                        <div class="form-group form-float form-group-sm text-right">
                            <button type="submit" name="btnsubmit" class="btn btn-primary pull-right"><i class="m-r-10 mdi mdi-content-save-all"></i>{{ __('update_section') }}</button>
                        </div>
                    </div>
                </div>
                {!! Form::close() !!}
            </div>
        </div>

        <div class="card">
            <div class="card-header">
                <h4 class="card-title">{{ __('page_sections') }}</h4>
                <div class="card-toolbox"></div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-5">
                        <!-- Main Content section start -->

                        {!! Form::open(['route'=>'save-new-section','method' => 'post', 'id' => 'save-new-section']) !!}
                        <div class="add-new-page  bg-white ">


                            <div class="col-sm-12 d-none">
                                <div class="form-group">
                                    <label for="section_label" class="col-form-label">{{ __('section_label') }}</label>
                                    <input id="section_label" name="label" type="text" class="form-control" required>
                                </div>
                            </div>


                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="type">{{ __('type') }}</label>
                                    <select class="form-control" name="type" id="type" required>

                                        <option value="{{\Modules\Appearance\Enums\ThemeSectionType::CATEGORY}}" selected>{{ __('category') }}</option>
                                        <option value="{{\Modules\Appearance\Enums\ThemeSectionType::VIDEO}}">{{ __('videos') }}</option>
                                        <option value="{{\Modules\Appearance\Enums\ThemeSectionType::LATEST_POST}}">{{ __('latest_post') }}</option>

                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-12" id="category-area">
                                <div class="form-group">
                                    <label for="category_id">{{ __('category') }}</label>
                                    <select class="form-control" name="category_id" id="category_id" required>
                                        <option value="">{{ __('select_category') }}</option>
                                        @foreach ($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->category_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="category-order" class="col-form-label">{{ __('order') }}</label>
                                    <input id="category-order" value="{{$order}}" name="order" type="number" class="form-control">
                                </div>
                            </div>
                            <div class="row p-l-15">
                                <div class="col-12 col-md-4">
                                    <div class="form-title">
                                        <label for="status">{{ __('status') }}</label>
                                    </div>
                                </div>
                                <div class="col-3 col-md-2">
                                    <label class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="status" id="status_yes" value="1" checked class="custom-control-input">
                                        <span class="custom-control-label">{{ __('active') }}</span>
                                    </label>
                                </div>
                                <div class="col-3 col-md-2">
                                    <label class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="status" id="status_no" value="0" class="custom-control-input">
                                        <span class="custom-control-label">{{ __('inactive') }}</span>
                                    </label>
                                </div>
                            </div>

                            <div class="row p-l-15" id="section-style">
                                <div class="col-12 col-md-12">
                                    <div class="form-title">
                                        <label for="section_style">{{ __('section_style') }}</label>
                                    </div>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-12 col-md-4">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="section_style" id="section_section_style_1" value="style_1" checked class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Section/Section_1.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="section_style" id="section_section_style_2" value="style_2" class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Section/Section_2.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="section_style" id="section_section_style_3" value="style_3" class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Section/Section_3.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="section_style" id="section_section_style_4" value="style_4" class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Section/Section_4.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="section_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="section_style" id="section_section_style_5" value="style_5" class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/Section/Section_5.png') }}" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12" id="ad-area">
                                    <div class="form-group">
                                        <label for="language">{{ __('show_ad_in_bottom') }}?</label>
                                        <select class="form-control" name="ad" id="ad">
                                            <option value="">{{ __('none') }}</option>
                                            @foreach ($ads as $value => $ad)
                                            <option value="{{$ad->id}}">{{$ad->ad_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 m-t-20">
                                    <div class="form-group form-float form-group-sm text-right">
                                        <button type="submit" name="btnsubmit" class="btn btn-primary pull-right"><i class="m-r-10 mdi mdi-plus"></i>{{ __('add_section') }}</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                        {!! Form::close() !!}

                        <!-- Main Content section end -->
                    </div>
                    <div class="col-7">
                        <div class=" all-pages">
                            <form action="{{route('update-section-order')}}" method="post">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr role="row">
                                            <th>{{ __('section_label') }}</th>
                                            <th>{{ __('status') }}</th>

                                            <th width="80">{{ __('order') }}</th>
                                            <th>{{ __('section_style') }}</th>
                                            @if(Sentinel::getUser()->hasAccess(['theme_section_write']) || Sentinel::getUser()->hasAccess(['theme_section_delete']))
                                            <th>{{ __('options') }}</th>
                                            @endif
                                        </tr>
                                    </thead>

                                    <tbody>

                                        @csrf
                                        @foreach ($sections as $section)
                                        <input type="hidden" name="sections[]" value="{{$section->id}}">
                                        <tr role="row" class="odd" id="row_{{ $section->id }}">
                                            <td>{{ $section->type == 1? $section->label: __($section->label) }}</td>
                                            <td>
                                                @if($section->status == 1)
                                                <label class="label label-success label-table">{{ __('active') }}</label>
                                                @else
                                                <label class="label label-default label-table">{{ __('inactive') }}</i></label>
                                                @endif
                                            </td>

                                            <td><input type="number" name="orders[{{$section->id}}]" class="form-control " value="{{ $section->order }}"></td>
                                            <td>{{ $section->section_style }}</td>
                                            @if(Sentinel::getUser()->hasAccess(['theme_section_write']) || Sentinel::getUser()->hasAccess(['theme_section_delete']))
                                            <td nowrap>



                                                @if(Sentinel::getUser()->hasAccess(['theme_section_write']))

                                                <a class="btn btn-sm btn-primary" href="{{ route('edit-theme-section',['id'=>$section->id]) }}" title="{{ __('edit') }}"><i class="fa fa-edit option-icon"></i></a>

                                                @endif
                                                @if(Sentinel::getUser()->hasAccess(['theme_section_delete']))

                                                <a class="btn btn-sm btn-danger" href="javascript:void(0)" onclick="delete_item('theme_sections','{{ $section->id }}')" title="{{ __('delete') }}"><i class="fa fa-trash option-icon"></i></a>

                                                @endif

                                            </td>
                                            @endif
                                        </tr>
                                        @endforeach

                                    </tbody>

                                </table>
                                <div class="row mb-3">
                                    <div class="col-6">

                                        {{ __('showing')}} {{ $sections->firstItem()}} {{ __('to') }} {{ $sections->lastItem()}}
                                        of {{ $sections->total()}} {{ __('entries') }}

                                    </div>
                                    <div class="col-6">
                                        <div class="form-group form-float form-group-sm text-right">
                                            <button type="submit" name="btnsubmit" class="btn btn-primary pull-right"><i class="m-r-10 mdi mdi-content-save-all"></i>{{ __('update') }}</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="row">

                            <div class=" col-6 text-right">
                                <div class="table-info-pagination float-right">
                                    <nav aria-label="Page navigation example">
                                        {!! $sections->render() !!}
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- page info end-->
    </div>
</div>

@endsection