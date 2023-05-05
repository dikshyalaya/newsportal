@extends('common::layouts.master')

@section('pages')
active
@endsection
@section('page-aria-expanded')
aria-expanded=true
@endsection
@section('pages-list')
active
@endsection
@section('page-show')
show
@endsection
@section('content')

<div class="dashboard-ecommerce">
    <div class="container-fluid dashboard-content ">
        <!-- page info start-->
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">{{ __('pages') }}</h4>
                @if(Sentinel::getUser()->hasAccess(['pages_write']))
                <div class="card-toolbox text-right">
                    <a href="{{ route('add-page') }}" class="btn btn-primary btn-sm btn-add-new"><i class="mdi mdi-plus"></i>
                        {{ __('add_page') }}
                    </a>
                </div>
                @endif

            </div>
            <div class="card-body all-pages">
                <div class="row">
                    <div class="col-12">
                        <table class="table table-bordered table-striped">
                            <thead>
                                <tr role="row">
                                    <th>#</th>
                                    <th>{{ __('title') }}</th>
                                    <th>{{ __('slug') }}</th>                                
                                    <th>{{ __('visibility') }}</th>
                                    <th>{{ __('date_added') }}</th>
                                    @if(Sentinel::getUser()->hasAccess(['pages_write']) || Sentinel::getUser()->hasAccess(['pages_delete']) )
                                    <th>{{ __('options') }}</th>
                                    @endif
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($pages as $page)
                                <tr role="row" id="row_{{ $page->id }}" class="odd">
                                    <td class="sorting_1">{{ $page->id }}</td>
                                    <td>{{ $page->title }}</td>
                                    <td>{{ $page->slug }}</td>                                
                                    <td>
                                        @if ( $page->visibility==1)
                                        <i class="fas fa-eye"></i>
                                        @else
                                        <i class="fas fa-eye-slash "></i>
                                        @endif
                                    </td>

                                    <td>{{ $page->created_at }}</td>
                                    @if(Sentinel::getUser()->hasAccess(['pages_write']) || Sentinel::getUser()->hasAccess(['pages_delete']) )
                                    <td>
                                        @if(Sentinel::getUser()->hasAccess(['pages_write']))
                                        <a class="btn btn-sm btn-warning active btn-xs" href="{{ route('edit-pages',['id'=>$page->id]) }}" title="{{ __('edit') }}"><i class="fa fa-edit"></i>

                                        </a>
                                        @endif
                                        @if(Sentinel::getUser()->hasAccess(['pages_delete']))
                                        <a href="javascript:void(0)" title="{{ __('delete') }}" class="btn btn-sm btn-danger active btn-xs" onclick="delete_item('pages','{{ $page->id }}')"><i class="fa fa-trash"></i>

                                        </a>
                                        @endif
                                    </td>
                                    @endif
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>


                <div class="row">
                    <div class="col-12 col-sm-6">
                        <div class="block-header">
                            <h2>{{ __('Showing') }} {{ $pages->firstItem()}} {{ __('to') }} {{ $pages->lastItem()}} {{ __('of') }} {{ $pages->total()}} {{ __('entries') }}</h2>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 text-right">
                        <div class="table-info-pagination float-right">
                            {!! $pages->render() !!}
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- page info end-->
    </div>
</div>

@endsection