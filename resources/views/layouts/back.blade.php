<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no">

<title>Motor Sheba</title>

<link href="{{ asset('assets/images/favicon.ico') }}" rel="shortcut icon" type="image/x-icon">

<link href="{{ asset('assets/css/bootstrap.css') }}" rel="stylesheet" type="text/css"/>
<link href="{{ asset('assets/css/fontawesome.min.css') }}" type="text/css" rel="stylesheet">
<link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css"/>


@yield('style')

</head>
<body>

<?php
        $addedListCount = Cart::instance('msProductCart')->content()->count();
      ?>

<!-- =============== screen-wrap =============== -->
<div class="screen-wrap">

<!-- <header class="app-header bg-primary">
	<a href="javascript:history.go(-1)" class="btn-header"><i class="fa fa-arrow-left"></i></a>
	<div class="header-right"> 
		<button class="btn-header"><i class="fa fa-sort-amount-down"></i></button>  
		<button class="btn-header"><i class="fa fa-filter"></i></button>  
	</div>
</header> -->
<header class="app-header">
	<!-- <a href="#" onclick="history.back()" class="btn btn-icon shadow rounded-circle bg-white"> -->
	<a href="javascript:history.go(-1)" class="btn btn-icon shadow rounded-circle bg-white">
		<i class="fa fa-arrow-left"></i>
	</a>

    <h5 class="title-header ml-2"><img src="{{asset('assets/images/Motor-Sheba-Logo.png')}}" width="170" height="33"></h5>
</header>

@include('flash::message')

@yield('content')

@include('layouts.bottom')

</div>


<script src="{{ asset('assets/js/jquery-2.0.0.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/js/bootstrap.bundle.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/js/script.js') }}" type="text/javascript"></script>

@yield('script')
</body>
</html>