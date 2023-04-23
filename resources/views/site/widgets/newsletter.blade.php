<div class="sg-widget">
    <h3 class="widget-title"><i class="fa fa-envelope-o" aria-hidden="true"></i> {{ __('subscribe_newsletter') }}</h3>
    <div class="widget-newsletter text-center">        
     
        <form action="{{ route('subscribe.newsletter') }}" class="tr-form" method="POST">
            @csrf
            <label for="news" class="d-none">Newsletter</label>
            <input name="email" id="news" type="email" class="form-control" placeholder="{{__('email_address')}}" required>
            <button type="submit"><i class="fa fa-paper-plane" aria-hidden="true"></i><span class="d-none">{{__('email_address')}}</span></button>
        </form>
    </div>
</div>
