@extends('layouts.back')

@section('content')
<main class="app-content">

<section class="padding-around">

<div class="text-center">
    <span class="icon bg-white icon-lg rounded-circle rotate"><i class="fa text-warning fa-sms"></i></span>
</div>
<p class="text-center">
We sent confirmation code to <br>
<strong>@if(isset($_GET['phone_number'])) {{ $_GET['phone_number'] }} @else {{ 'No Phone Number' }}@endif </strong> <a class="btn-link" href="{{ url('registration/create') }}">Change</a>
</p>
<form method="POST" action="{{ route('login') }}" class="px-5 mb-5">
	@csrf

	<div class="form-group">
		<input  type="hidden"  class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $_GET['phone_number'] }}">
		@error('email')
                                    <span class="invalid-feedback" role="alert">
                                        {{-- <strong>{{ $message }}</strong> --}}
                                        <strong>{{ "Wrong OTP!" }}</strong>
                                    </span>
                                @enderror
	</div>

    <div class="form-group">
        <input type="number" autofocus max="9999" class="form-control text-center @error('password') is-invalid @enderror" placeholder="* * * *" name="password">
        @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
    </div>
    <button class="btn btn-block btn-primary" type="submit">OK</button>
</form>

<!-- <p class="text-center"> <a href="#" class="btn-link"> <i class="fa fa-redo"></i> Send again</a>
</p> -->

</section>

</main>
@endsection
