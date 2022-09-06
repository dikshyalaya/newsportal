<!-- ============================================================== -->
<!-- left sidebar -->
<!-- ============================================================== -->
<div class="nav-left-sidebar sidebar-dark">
    <div class="menu-list">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="d-xl-none d-lg-none" href="#">{{__('dashboard')}}</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav flex-column">
                    @if(Sentinel::getUser()->roles[0]->id != 4 && Sentinel::getUser()->roles[0]->id != 5)
                    <li class="nav-item ">
                        <a class="nav-link @yield('home')" href="{{ route('dashboard') }}">
                            <i class="fas fa-home fa-th-large"></i>{{__('dashboard')}}
                        </a>
                    </li>
                    @else
                    <li class="nav-item">
                        <a class="nav-link @yield('home')" href="{{ route('user-account') }}">
                            <i class="fas fa-home fa-th-large"></i>{{__('profile')}}
                        </a>
                    </li>
                    @endif

                    @if(Sentinel::getUser()->hasAccess(['post_read']) || Sentinel::getUser()->hasAccess(['post_write']) || Sentinel::getUser()->hasAccess(['post_delete']))
                    <li class="nav-item ">
                        <a class="nav-link @yield('post')" href="#" data-toggle="collapse" @yield('post-aria-expanded', 'aria-expanded=false' ) data-target="#submenu-2" aria-controls="submenu-2">
                            <i class="fas fa-fw fa-th-list"></i>{{__('posts')}}
                        </a>
                        <div id="submenu-2" class="collapse submenu @yield('post-show')">
                            <ul class="nav flex-column">

                                <li class="nav-item">
                                    <a class="nav-link @yield('post-active')" href="{{ route('post') }}">{{ __('all_post') }}</a>
                                </li>
                                @if(Sentinel::getUser()->hasAccess(['post_write']))
                                <li class="nav-item">
                                    <a class="nav-link @yield('create_article')" href="{{ route('create-article') }}">{{ __('create_article') }} </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link @yield('create_video')" href="{{ route('create-video-post') }}">{{ __('create_video_post') }} </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link @yield('create_audio')" href="{{ route('create-audio-post') }}">{{ __('create_audio_post') }} </a>
                                </li>

                                @endif

                                

                                <li class="nav-item">
                                    <a class="nav-link @yield('submitted-post-active')" href="{{ route('submitted-posts') }}">{{ __('submitted_posts') }}</a>
                                </li>
                                @if(Sentinel::getUser()->hasAccess(['category_read']) || Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
                                <li class="nav-item">
                                    <a class="nav-link @yield('category-active')" href="{{ route('categories') }}">{{__('categories')}}</a>
                                </li>
                                @endif
                                @if(Sentinel::getUser()->hasAccess(['sub_category_read']) || Sentinel::getUser()->hasAccess(['sub_category_write']) || Sentinel::getUser()->hasAccess(['sub_category_delete']))
                                <li class="nav-item">
                                    <a class="nav-link @yield('sub-category-active')" href="{{ route('sub-categories') }}">{{__('sub_categories')}}</a>
                                </li>
                                @endif
                            </ul>
                        </div>
                    </li>
                    @endif

                    @if(Sentinel::getUser()->hasAccess(['rss_read']) || Sentinel::getUser()->hasAccess(['rss_write']) || Sentinel::getUser()->hasAccess(['rss_delete']))
                    <li class="nav-item">
                        <a class="nav-link @yield('rss')" href="{{route('rss-feeds')}}">
                            <i class="mdi mdi-poll"></i>{{__('rss_feeds')}}
                        </a>
                    </li>
                    @endif

                    @if(Sentinel::getUser()->hasAccess(['comments_read']) || Sentinel::getUser()->hasAccess(['comments_write']) || Sentinel::getUser()->hasAccess(['comments_delete']))
                    <li class="nav-item">
                        <a class="nav-link @yield('comments_active')" href="#" data-toggle="collapse" @yield('comments-aria-expanded', 'aria-expanded=false' ) data-target="#submenu-115" aria-controls="submenu-115">
                            <i class="fas fa-fw fa-comments"></i>{{__('comments')}}
                        </a>
                        <div id="submenu-115" class="collapse submenu @yield('comments-show')">
                            <ul class="nav flex-column">
                                @if(Sentinel::getUser()->hasAccess(['comments_read']) || Sentinel::getUser()->hasAccess(['comments_delete']))
                                <li class="nav-item">
                                    <a class="nav-link @yield('comments')" href="{{ route('comments') }}">
                                        {{__('all_comments')}}
                                    </a>
                                </li>
                                @endif
                                @if(Sentinel::getUser()->hasAccess(['comments_write']))
                                <li class="nav-item">
                                    <a class="nav-link @yield('comments-setting')" href="{{ route('setting-comment') }}">
                                        {{__('settings')}}
                                    </a>
                                </li>
                                @endif

                            </ul>
                        </div>
                    </li>
                    @endif
                    @if(Sentinel::getUser()->hasAccess(['album_read']) || Sentinel::getUser()->hasAccess(['album_write']) || Sentinel::getUser()->hasAccess(['album_delete']))
                    <li class="nav-item">
                        <a class="nav-link @yield('gallery')" href="#" data-toggle="collapse" @yield('gallery-aria-expanded', 'aria-expanded=false' ) data-target="#submenu-130" aria-controls="submenu-115">
                            <i class="fas fa-fw fa-image"></i>{{__('gallery')}}
                        </a>
                        <div id="submenu-130" class="collapse submenu @yield('gallery-show')">
                            <ul class="nav flex-column">
                                @if(Sentinel::getUser()->hasAccess(['album_read']) || Sentinel::getUser()->hasAccess(['album_delete']))
                                <li class="nav-item">
                                    <a class="nav-link @yield('all-images-active')" href="{{ route('images') }}">
                                        {{__('images')}}
                                    </a>
                                </li>
                                @endif
                                @if(Sentinel::getUser()->hasAccess(['album_read']) || Sentinel::getUser()->hasAccess(['album_write']) || Sentinel::getUser()->hasAccess(['album_delete']))
                                <li class="nav-item">
                                    <a class="nav-link @yield('albums-active')" href="{{ route('albums') }}">
                                        {{__('albums')}}
                                    </a>
                                </li>
                                @endif
                                {{-- @if(Sentinel::getUser()->hasAccess(['album_read']) || Sentinel::getUser()->hasAccess(['album_write']) || Sentinel::getUser()->hasAccess(['album_delete']))--}}
                                {{-- <li class="nav-item">--}}
                                {{-- <a class="nav-link @yield('albums-categories')" href="{{ route('album-categories') }}">--}}
                                {{-- {{__('categories')}}--}}
                                {{-- </a>--}}
                                {{-- </li>--}}
                                {{-- @endif--}}
                            </ul>
                        </div>
                    </li>
                    @endif

                    @if(Sentinel::getUser()->hasAccess(['pages_read']) || Sentinel::getUser()->hasAccess(['pages_write']) || Sentinel::getUser()->hasAccess(['pages_delete']))
                    <li class="nav-item">
                        <a class="nav-link @yield('pages')" href="#" data-toggle="collapse" @yield('page-aria-expanded', 'aria-expanded=false' ) data-target="#submenu-1" aria-controls="submenu-1">
                            <i class="fa fa-fw fa-file"></i> {{__('pages')}}
                        </a>
                        <div id="submenu-1" class="collapse submenu @yield('page-show')">
                            <ul class="nav flex-column">
                                @if(Sentinel::getUser()->hasAccess(['pages_write']))
                                <li class="nav-item">
                                    <a class="nav-link @yield('add-page-active')" href="{{ route('add-page') }}">{{__('add_page')}}</a>
                                </li>
                                @endif
                                <li class="nav-item">
                                    <a class="nav-link @yield('pages-list')" href="{{ route('pages') }}">{{__('pages')}}</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    @endif
                    @if(Sentinel::getUser()->hasAccess(['polls_read']) || Sentinel::getUser()->hasAccess(['polls_write']) || Sentinel::getUser()->hasAccess(['polls_delete']))
                    <li class="nav-item">
                        <a class="nav-link @yield('poll')" href="{{route('polls')}}">
                            <i class="mdi mdi-poll"></i>{{__('polls')}}
                        </a>
                    </li>
                    @endif
                   

                    @if(Sentinel::getUser()->hasAccess(['menu_read']) || Sentinel::getUser()->hasAccess(['menu_write']) || Sentinel::getUser()->hasAccess(['menu_delete']) ||
                    Sentinel::getUser()->hasAccess(['menu_item_read']) || Sentinel::getUser()->hasAccess(['menu_item_write']) || Sentinel::getUser()->hasAccess(['menu_item_delete']) ||
                    Sentinel::getUser()->hasAccess(['theme_section_read']) || Sentinel::getUser()->hasAccess(['theme_section_write'])
                    || Sentinel::getUser()->hasAccess(['theme_section_delete']))
                    <li class="nav-item">
                        <a class="nav-link @yield('appearance')" href="#" data-toggle="collapse" @yield('appearance-aria-expanded', 'aria-expanded=false' ) data-target="#submenu-101" aria-controls="submenu-101">
                            <i class="fa fa-th"></i> {{__('appearance')}}
                        </a>
                        <div id="submenu-101" class="collapse submenu @yield('appearance-show')">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link @yield('menu')" href="{{ route('menu-item') }}">{{__('menu')}}</a>
                                </li>
                                {{-- <li class="nav-item">
                                         <a class="nav-link @yield('theme')" href="{{ route('themes') }}">{{ __('theme') }}</a>
                    </li> --}}
                    <li class="nav-item">
                        <a class="nav-link @yield('theme_option')" href="{{ route('themes-options') }}">{{ __('themes_options') }}</a>
                    </li>
                </ul>
            </div>
            </li>
            @endif

            @if(Sentinel::getUser()->hasAccess(['theme_section_read']) || Sentinel::getUser()->hasAccess(['theme_section_write'])
            || Sentinel::getUser()->hasAccess(['theme_section_delete']))
            <li class="nav-item">
                <a class="nav-link @yield('sections')" href="{{ route('sections') }}">
                    <i class="fas fa-cogs fa-th-large"></i>{{ __('home_content') }}
                </a>
            </li>
            @endif
            @if(Sentinel::getUser()->hasAccess(['widget_read']) || Sentinel::getUser()->hasAccess(['widget_write']) || Sentinel::getUser()->hasAccess(['widget_delete']))
            <li class="nav-item">
                <a class="nav-link @yield('widgets')" href="{{ route('widgets') }}">
                    <i class="fas fa-fw fa-th-large"></i>{{ __('widgets') }}
                </a>
            </li>
            @endif

            @if(Sentinel::getUser()->hasAccess(['socials_read']) || Sentinel::getUser()->hasAccess(['socials_write']) || Sentinel::getUser()->hasAccess(['socials_delete']))
            <li class="nav-item">
                <a class="nav-link @yield('social')" href="{{route('socials')}}">
                    <i class="mdi mdi-poll"></i>{{__('socials')}}
                </a>
            </li>
            @endif

            @if(Sentinel::getUser()->hasAccess(['notification_write']))
            <li class="nav-item">
                <a class="nav-link @yield('notification_active')" href="#" data-toggle="collapse" @yield('notification-aria-expanded', 'aria-expanded=false' ) data-target="#submenu-113" aria-controls="submenu-113">
                    <i class="fas fa-bell"></i>{{__('notification')}}
                </a>
                <div id="submenu-113" class="collapse submenu @yield('notification-show')">
                    <ul class="nav flex-column">
                        <li class="nav-item ">
                            <a class="nav-link @yield('send_notification')" href="{{ route('send-notification') }}">
                                {{__('send_notification')}}
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link @yield('send_custom_notification')" href="{{ route('send-custom-notification') }}">
                                {{ __('send_custom_notification') }}
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link @yield('notify_setting')" href="{{ route('notification-setting') }}">
                                {{ __('settings') }}
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            @endif

            @if(Sentinel::getUser()->hasAccess(['newsletter_read']) || Sentinel::getUser()->hasAccess(['newsletter_write']) || Sentinel::getUser()->hasAccess(['newsletter_delete']))
            <li class="nav-item">
                <a class="nav-link @yield('newsletter_active')" href="#" data-toggle="collapse" @yield('newsletter-aria-expanded', 'aria-expanded=false' ) data-target="#submenu-114" aria-controls="submenu-114">
                    <i class="fa fa-paper-plane"></i>{{__('newsletter')}}
                </a>
                <div id="submenu-114" class="collapse submenu @yield('newsletter-show')">
                    <ul class="nav flex-column">
                        <li class="nav-item ">
                            <a class="nav-link @yield('send_newsletter')" href="{{ route('send-email-to-subscriber') }}">
                                {{__('send_email_to_subscribers')}}
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link @yield('subscriber')" href="{{ route('subscriber-list') }}">
                                {{ __('subscribers') }}
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            @endif

            @if(Sentinel::getUser()->hasAccess(['contact_message_read']) || Sentinel::getUser()->hasAccess(['contact_message_write']) || Sentinel::getUser()->hasAccess(['contact_message_delete']))
            <li class="nav-item">
                <a class="nav-link @yield('contact_message')" href="{{ route('contact') }}">
                    <i class="fas fa-fw fa-space-shuttle"></i>{{ __('contact_messages') }}
                </a>
            </li>
            @endif

            @if(Sentinel::getUser()->hasAccess(['permission_read']) || Sentinel::getUser()->hasAccess(['permission_write']) || Sentinel::getUser()->hasAccess(['permission_delete']) ||
            Sentinel::getUser()->hasAccess(['role_read']) || Sentinel::getUser()->hasAccess(['role_write']) || Sentinel::getUser()->hasAccess(['role_delete']))
            <li class="nav-item">
                <a class="nav-link @yield('rolePermission')" href="#" data-toggle="collapse" @yield('rolePermission_', 'aria-expanded=false' ) data-target="#submenu-110" aria-controls="submenu-110">
                    <i class="fas fa-fw fa-key"></i>{{ __('roles_&_permissions') }}
                </a>
                <div id="submenu-110" class="collapse submenu @yield('p-show')">

                    <ul class="nav flex-column">
                        @if(Sentinel::getUser()->hasAccess(['permission_read']) || Sentinel::getUser()->hasAccess(['permission_write']) || Sentinel::getUser()->hasAccess(['permission_delete']))
                        <li class="nav-item ">
                            <a class="nav-link @yield('rolePermissionsub')" href="{{ route('roles')}}">
                                {{ __('roles') }}
                            </a>
                        </li>
                        @endif

                        @if(Sentinel::getUser()->hasAccess(['role_read']) || Sentinel::getUser()->hasAccess(['role_write']) || Sentinel::getUser()->hasAccess(['role_delete']))
                        <li class="nav-item ">
                            <a class="nav-link @yield('permissions')" href="{{ route('permissions')}}">
                                {{ __('permissions') }}
                            </a>
                        </li>
                        @endif

                    </ul>
                </div>
            </li>
            @endif

            @if(Sentinel::getUser()->hasAccess(['users_read']) || Sentinel::getUser()->hasAccess(['users_write']) || Sentinel::getUser()->hasAccess(['users_delete']))
            <li class="nav-item">
                <a class="nav-link @yield('user-list')" href="{{route('users-list')}}">
                    <i class="fas fa-fw fa-users"></i>{{__('users')}}
                </a>
            </li>
            @endif

            @if(Sentinel::getUser()->hasAccess(['settings_read']) || Sentinel::getUser()->hasAccess(['settings_write']) || Sentinel::getUser()->hasAccess(['settings_delete']))
            <li class="nav-item">
                <a class="nav-link @yield('settings_active')" href="#" data-toggle="collapse" @yield('settings', 'aria-expanded=false' ) data-target="#submenu-111" aria-controls="submenu-111">
                    <i class="fas fa-fw fa-cog"></i>{{__('settings')}}
                </a>
                <div id="submenu-111" class="collapse submenu @yield('s-show')">
                    <ul class="nav flex-column">
                        <li class="nav-item ">
                            <a class="nav-link @yield('setting-general')" href="{{ route('setting-general') }}">
                                {{__('general_settings')}}
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link @yield('setting-company')" href="{{ route('setting-company') }}">
                                {{__('company_informations')}}
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link @yield('setting-email')" href="{{ route('setting-email') }}">
                                {{__('email_settings')}}
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link @yield('setting-storage')" href="{{ route('setting-storage') }}">
                                {{__('storage_settings')}}
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link @yield('setting-seo')" href="{{ route('setting-seo') }}">
                                {{__('seo_settings')}}
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link @yield('setting-recaptcha')" href="{{ route('setting-recaptcha') }}">
                                {{__('recaptcha_settings')}}
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link @yield('setting-url')" href="{{ route('settings-url') }}">
                                {{__('url_settings')}}
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link @yield('setting-ffmpeg')" href="{{ route('settings-ffmpeg') }}">
                                {{__('ffmpeg_settings')}}
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link @yield('setting-custom')" href="{{ route('setting-custom-header-footer') }}">
                                {{__('custom_header_footer')}}
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link @yield('cron-information')" href="{{ route('cron-information') }}">
                                {{__('cron_information')}}
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link @yield('setting-preference')" href="{{ route('preferene-control') }}">
                                {{__('preference_setting')}}
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link @yield('email_temp')" href="{{ route('email-templates')}}">
                                {{ __('email_template') }}
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link @yield('setting-social-login')" href="{{ route('setting-social-login') }}">
                                {{__('social_login_settings')}}
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link @yield('cache-route-config')" href="{{ route('cache') }}">
                                {{__('cache')}}
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link @yield('update-database')" href="{{ route('update-database') }}">
                                {{__('update')}}
                            </a>
                        </li>

                    </ul>
                </div>
            </li>
            @endif

            @if(Sentinel::getUser()->hasAccess(['api_read']) || Sentinel::getUser()->hasAccess(['api_write'])|| Sentinel::getUser()->hasAccess(['api_delete']))
            <li class="nav-item">
                <a class="nav-link @yield('api_active')" href="#" data-toggle="collapse" @yield('api', 'aria-expanded=false' ) data-target="#submenu-112" aria-controls="submenu-112">
                    <i class="fas fa-fw fa-mobile"></i>{{__('mobile_app')}}
                </a>
                <div id="submenu-112" class="collapse submenu @yield('api-show')">
                    <ul class="nav flex-column">
                        <li class="nav-item ">
                            <a class="nav-link @yield('api-settings')" href="{{ route('api-settings') }}">
                                {{__('api_settings')}}
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link @yield('android-settings')" href="{{ route('android-settings') }}">
                                {{__('android_settings')}}
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link @yield('ios-settings')" href="{{ route('ios-settings') }}">
                                {{__('ios_settings')}}
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link @yield('app-config')" href="{{ route('app-config') }}">
                                {{__('app_config')}}
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link @yield('ads-config')" href="{{ route('ads-config') }}">
                                {{__('ads_config')}}
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link @yield('app-intro')" href="{{ route('app-intro') }}">
                                {{__('app_intro')}}
                            </a>
                        </li>

                    </ul>
                </div>
            </li>
            @endif          

            </ul>
    </div>
    </nav>
</div>
</div>
<!-- ============================================================== -->
<!-- end left sidebar -->
<!-- ============================================================== -->