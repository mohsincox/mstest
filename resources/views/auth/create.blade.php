@extends('layouts.back')

@section('content')
<main class="app-content">

<div class="bg-primary padding-x padding-bottom">
    <h3 class="title-page text-white">OTP Login</h3>
</div>

<section class="padding-around">
	{{--
	@guest
	<p>nozz</p>
	@else
	<p>{{ Auth::user()->name }}</p>
	@endguest
	--}}
<form method="POST" action="{{ route('registration_store') }}" class="p-4">
	@csrf

	<div class="text-center">
		<!-- <img src="{{ asset('assets/images/Motor-Sheba-Logo.png') }}" width="200" height="50"> -->
		<span class="icon bg-white icon-lg rounded-circle rotate"><i class="fa text-danger fa-sms"></i></span>
	</div>
    <div class="form-group mt-4">
    	<label>Mobile Number</label>
        <input type="text" name="email" class="form-control @error('email') is-invalid @enderror" placeholder="Enter Mobile Number">

        @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
    </div>
    <!-- <div class="form-group">
        <label>Password:</label>
        <input type="password" class="form-control" placeholder="Password">
    </div> -->
    <button class="btn btn-block btn-primary">Button</button>
</form>

</section>

</main>
@endsection

@section('style')

@endsection