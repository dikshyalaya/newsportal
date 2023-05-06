<!-- <div class="sg-widget">
    <h3 class="widget-title">{{ data_get($detail, 'title') }}</h3>
    <div class="row">
        @foreach($content as $post)
            <div class="col-md-12">
                <div class="sg-post small-post">
                    @include('site.partials.home.category.block')
                    <div class="entry-content">
                        <a href="{{ route('article.detail', ['id' => $post->slug]) }}"><p>{!! \Illuminate\Support\Str::limit($post->title, 25) !!}</p></a>
                        <div class="entry-meta">
                            <ul class="global-list">
                                <li class="d-sm-none d-md-none d-lg-block"><a href="{{ route('site.author',['id' => $post->user->id]) }}"> {{ data_get($post, 'user.first_name') }}</a></li>
                                <li> <a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}">{{ Carbon\Carbon::parse($post->updated_at)->translatedFormat('F j, Y') }}</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div> -->


<div class="sg-widget">
    <h3 class="widget-title">{{ data_get($detail, 'title') }}</h3>

    <ul class="global-list">
        @foreach($content as $post)
            <li>
                <div class="sg-post small-post post-style-1">
                    @include('site.partials.home.category.post_block')
                    <div class="entry-content">
                       <a href="{{ route('article.detail', ['id' => $post->slug]) }}"> <p>{{ \Illuminate\Support\Str::limit(data_get($post, 'title'), 25) }}</p></a>
                        <div class="entry-meta">
                            <ul class="global-list">
                                <li class="d-sm-none d-md-none d-lg-block"><a href="{{ route('site.author',['id' => $post->user->id]) }}"> {{ data_get($post, 'user.first_name') }}</a></li>
                                <li><a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}"> {{ Carbon\Carbon::parse($post->updated_at)->translatedFormat('F j, Y') }}</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
        @endforeach
    </ul>
</div>
