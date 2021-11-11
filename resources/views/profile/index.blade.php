@extends('layouts.back')

@section('content')
<main class="app-content">

<section class="padding-x pb-3 bg-primary text-white">
	<figure class="icontext align-items-center mr-4" style="max-width: 300px;">
		<img class="icon icon-md rounded-circle" src="{{asset('assets/images/user.png')}}">
		<figcaption class="text">
			<p class="h5 title">{{ Auth::user()->name }}</p>
			<p class="text-white-50">+88 01873051953</p>
		</figcaption>
	</figure>
</section>

<section class="padding-around">
	<ul class="row">
		<li class="col-4">
			<a href="#" class="btn-card-icontop btn">
				<span class="icon"> <i class="fa fa-heart"></i> </span>
				<small class="text text-center"> sth </small>
			</a>
		</li>
		<li class="col-4">
			<a href="#" class="btn-card-icontop btn">
				<span class="icon"> <i class="fa fa-shopping-basket"></i> </span>
				<small class="text text-center"> sth </small>
			</a>
		</li>
		<li class="col-4">
			<a href="#" class="btn-card-icontop btn">
				<span class="icon"> <i class="fa fa-wallet"></i> </span>
				<small class="text text-center"> sth </small>
			</a>
		</li>
	</ul>
</section>  

<hr class="divider">

<section class="padding-top">
<h5 class="title-section padding-x">Orders</h5>
<nav class="nav-list">
	<a class="btn-list" href="#">
		<span class="float-right badge badge-warning">3</span>
		<span class="text">On proccess</span>
	</a>
	<a class="btn-list" href="#">
		<span class="float-right badge badge-success">1</span>
		<span class="text">Shipped</span>
	</a>
	<a class="btn-list" href="#"> 
		<span class="float-right badge badge-secondary">0</span>
		<small class="title"></small>
		<span class="text">Unpaid</span>
	</a>
</nav>
</section> 
<hr class="divider"> 
<section class="padding-top">
	<h5 class="title-section padding-x">Account</h5>
	<nav class="nav-list">
		<a class="btn-list" href="#">
			<i class="icon-control fa fa-chevron-right"></i>
			<span class="text">Notifications</span>
		</a>
		<a class="btn-list" href="#">
			<i class="icon-control fa fa-chevron-right"></i>
			<span class="text">Settings</span>
		</a>
		<a class="btn-list" href="#"> 
			<i class="icon-control fa fa-chevron-right"></i>
			<span class="text">Support</span>
		</a>
	</nav>
</section> 

<hr class="divider"> 
<section class="padding-top">
<h5 class="title-section padding-x">Personal</h5>
<nav class="nav-list">
	<a class="btn-list" href="#">
		<i class="icon-action fa fa-pen"></i>
		<small class="title">Name</small>
		<span class="text">{{ Auth::user()->name }}</span>
	</a>
	<a class="btn-list" href="#"> 
		<i class="icon-action fa fa-pen"></i>
		<small class="title">Email</small>
		<span class="text">{{ Auth::user()->email }}</span>
	</a>
</nav>
</section>
<br>

<p class="text-center my-4"><a href="{{ url('/logout') }}" onclick="event.preventDefault();
    document.getElementById('logout-form').submit();" class="btn btn-light"> <i class="fa fa-arrow-left"></i> <span class="text">Logout</span></a></p>

<form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
    @csrf
</form>

</main>
@endsection

@section('style')

@endsection