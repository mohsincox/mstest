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
<style type="text/css">
    .app-header .btn-header {
        color: #313AEB;
    }
</style>
@yield('style')
</head>
<body>

<?php
        $addedListCount = Cart::instance('msProductCart')->content()->count();
      ?>

<i class="screen-overlay"></i>

<aside class="offcanvas" id="sidebar_left">
    <div class="card-body bg-primary">
        <button class="btn-close close text-white">&times;</button>
        <img src="{{asset('assets/images/user.png')}}" class="img-sm rounded-circle" alt="">
        <h6 class="text-white mt-3 mb-0">Welcome User!</h6>
    </div>
    <nav class="nav-sidebar">
        <a href="#"> <i class="fa fa-home"></i> Home</a>
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-th"></i> Japanease Parts <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a class="btn btn-block btn-sm" style="font-size: 1rem;" href="#">Air Freshener</a></li>
                <li><a class="btn btn-block btn-sm" style="font-size: 1rem;" href="#">Brake Pad & Shoe</a></li>
                <li><a class="btn btn-block btn-sm" style="font-size: 1rem;" href="#">Double Side Tape</a></li>
                <li><a class="btn btn-block btn-sm" style="font-size: 1rem;" href="#">Oil Filter</a></li>
                <li><a class="btn btn-block btn-sm" style="font-size: 1rem;" href="#">Air Filter</a></li>
                <li><a class="btn btn-block btn-sm" style="font-size: 1rem;" href="#">Cabin Filter</a></li>
                <li><a class="btn btn-block btn-sm" style="font-size: 1rem;" href="#">HV Battery Filter</a></li>
                <li><a class="btn btn-block btn-sm" style="font-size: 1rem;" href="#">Lead Acid Battery</a></li>
            </ul>
        <a href="#"> <i class="fa fa-th"></i>  Categories</a>
        <a href="#">  <i class="fa fa-info-circle"></i> About us</a>
        <a href="#">  <i class="fa fa-building"></i> Company</a>
        <a href="#">  <i class="fa fa-cog"></i> Settings</a>
        <a href="#"> <i class="fa fa-home"></i> All screens</a>
    </nav>

    <hr>

    <nav class="nav-sidebar">
        <a href="#"> <i class="fa fa-phone"></i> (+880) 9610-500500</a>
        <a href="#"> <i class="fa fa-globe"></i> www.motorsheba.com</a>
        <a href="#"> <i class="fa fa-envelope"></i> info@motorsheba.com</a>
    </nav>
</aside>

<div class="screen-wrap">

<!-- <header class="app-header" style="position: fixed; overflow: hidden; top: 0;"> -->
<header class="app-header">
    <button class="btn-header" type="button" data-trigger="#sidebar_left"><i class="fa fa-bars"></i></button>
    <h5 class="title-header ml-2"><img src="{{asset('assets/images/Motor-Sheba-Logo.png')}}" width="170" height="33"></h5>
    <div class="header-right">
        <a href="{{ url('/profile') }}" class="btn-header"> <img src="{{asset('assets/images/user.png')}}" class="img-sm rounded-circle" alt=""> </a>

    </div>
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