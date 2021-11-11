<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sign Up</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="{{ asset('assets/Login_v2/css/bootstrap.min.css') }}">

  <link rel="stylesheet" href="{{ asset('assets/Login_v2/css/font-awesome.min.css') }}">

  <link rel="stylesheet" type="text/css" href="{{ asset('assets/Login_v2/fonts/iconic/css/material-design-iconic-font.min.css') }}">

  <link rel="stylesheet" type="text/css" href="{{ asset('assets/Login_v2/css/util.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/Login_v2/css/main.css') }}">

</head>
<body>
  
  <div class="limiter">
    <div class="container-login100">
      <div class="wrap-login100">
        <form class="login100-form validate-form" action="{{ url('/register') }}" method="post">
          {{ csrf_field() }}
          <span class="login100-form-title p-b-26">
            <img src="{{ asset('assets/images/Motor-Sheba-Logo.png') }}" width="200" height="50">
          </span>
          <!-- <span class="login100-form-title p-b-48">
            <i class="fa fa-home"></i>
          </span> -->

          <div class="wrap-input100 validate-input has-feedback{{ $errors->has('name') ? ' has-error' : '' }}" data-validate = "Enter Name">
            <input class="input100" type="text" name="name">
            <span class="focus-input100" data-placeholder="Name"></span>
            @if ($errors->has('name'))
                  <span class="help-block">
                    <strong>{{ $errors->first('name') }}</strong>
                  </span>
                @endif
          </div>

          <div class="wrap-input100 validate-input has-feedback{{ $errors->has('email') ? ' has-error' : '' }}" data-validate = "Enter Username">
            <input class="input100" type="email" name="email">
            <span class="focus-input100" data-placeholder="Username"></span>
            @if ($errors->has('email'))
                  <span class="help-block">
                    <strong>{{ $errors->first('email') }}</strong>
                  </span>
                @endif
          </div>

          <div class="wrap-input100 validate-input has-feedback{{ $errors->has('password') ? ' has-error' : '' }}" data-validate="Enter Password">
            <span class="btn-show-pass">
              <i class="zmdi zmdi-eye"></i>
            </span>
            <input class="input100" type="password" name="password">
            <span class="focus-input100" data-placeholder="Password"></span>
            @if ($errors->has('password'))
                  <span class="help-block">
                    <strong>{{ $errors->first('password') }}</strong>
                  </span>
                @endif
          </div>

          <div class="wrap-input100 validate-input has-feedback{{ $errors->has('password_confirmation') ? ' has-error' : '' }}" data-validate="Enter Password Confirmation">
            <span class="btn-show-pass">
              <i class="zmdi zmdi-eye"></i>
            </span>
            <input class="input100" type="password" name="password_confirmation">
            <span class="focus-input100" data-placeholder="Password Confirmation"></span>
            @if ($errors->has('password_confirmation'))
                  <span class="help-block">
                    <strong>{{ $errors->first('password_confirmation') }}</strong>
                  </span>
                @endif
          </div>

          <div class="container-login100-form-btn">
            <div class="wrap-login100-form-btn">
              <div class="login100-form-bgbtn"></div>
              <button class="login100-form-btn" type="submit">
                Sign Up
              </button>
            </div>
          </div>

          <div class="text-center p-t-50">
            <span class="txt1">
              Already have an account? <a style="font-weight: 400; color: #313AEB; text-decoration: none; border-bottom: 1px dotted #313AEB;" class="txt2" href="{{ url('/login') }}"><b>&nbsp;Login&nbsp;</b></a>
            </span>

            
          </div>
        </form>
      </div>
    </div>
  </div>
  

  <div id="dropDownSelect1"></div>
  

  <script src="{{ asset('assets/js/jquery-2.0.0.min.js') }}"></script>

  <script src="{{ asset('assets/Login_v2/js/main.js') }}"></script>

</body>
</html>