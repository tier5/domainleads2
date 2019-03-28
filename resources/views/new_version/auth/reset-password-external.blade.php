<!DOCTYPE html>
<html lang="en">
  @include('new_version.section.head')
  <body>

  <!-- banner -->
  <section class="banner">
    <!-- header -->
    @include('new_version.section.header_menu', ['show_no_icons' => true])
    <!-- inner content -->
    <div class="innerContent login clearfix">
        <div class="container customCont">
            <div class="col-sm-8 col-xs-12 innerContentWrap">
                <div class="col-md-6 col-sm-7 createForm">
                    
                    @if(strlen($errMsg) > 0)
                        <p><strong>{{$errMsg}}</strong></p>
                        <br>
                        <a href="{{route('home')}}">Back to Home</a>
                    @else
                    <h2>Reset Password</h2>
                    <div class="errorMsg">
                        @if(Session::has('error'))
                            <div class="alert alert-danger fade in alert-dismissible" style="margin-top:18px;">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                                <strong>Error!</strong> {{Session::get('error')}}
                            </div>
                            @php Session::forget('error') @endphp
                        @elseif(Session::has('success'))
                            <div class="alert alert-success fade in alert-dismissible" style="margin-top:18px;">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                                <strong>Success!</strong> {{Session::get('success')}}
                            </div>
                            @php Session::forget('success') @endphp
                        @endif
                    </div>
                    <form action="{{route('resetPasswordExternalPost', ['e_token' => $e_token])}}" method="post">
                        <div class="form-group">
                            <input name="email" type="email" value="{{$user->email}}" class="form-control" id="" placeholder="email">
                        </div>
                        <div class="form-group">
                            <input name="password" type="password" class="form-control" id="" placeholder="******">
                        </div>
                        <div class="form-group">
                            <input name="c_password" type="password" class="form-control" id="" placeholder="******">
                        </div>
                        {{csrf_field()}}
                        <button type="submit" class="btn button gradiant-orange">send mail</button>
                    </form>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <!-- footer -->
    
  </section>

  @include('section.footer_menu')

  {{-- @include('new_version.shared.sticky-note') --}}
  <!-- sticky text -->
  {{-- <div class="stickyBox" id="stickyBoxWrap" style="display: none;">
    <div id="popup">
      <img src="{{config('settings.APPLICATION-DOMAIN')}}/public/images/sticky_Logo.png">
      <div class="stickyText">
        <p>You have unlocked 4 leads today.</p>
        <p>You can unlocked upto <span>50</span> leads per day.</p>
      </div>
    </div>
  </div>  --}}


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="{{config('settings.APPLICATION-DOMAIN')}}/public/js/bootstrap.min.js"></script>
    <script src="{{config('settings.APPLICATION-DOMAIN')}}/public/js/custom.js"></script> 
  </body>
</html>
