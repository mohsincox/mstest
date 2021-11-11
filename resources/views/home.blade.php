@extends('layouts.bar')

@section('content')
<main class="app-content">

    <div class="padding-x mb-2">
        <h6 style="color: #313AEB;">Discover <br> Parts...</h6>
        <!-- <input type="text" placeholder="Search" class="bg-primary form-control form-control-sm input-dark border-0" style="border-radius: 30px; color: white;"> -->

        <div class="input-group">
            <input type="text" class="form-control form-control-sm search-form" placeholder="Search">
            <span class="input-group-btn">
                <button type="button" class="btn btn-primary btn-sm search-btn"  name="q">
                    <i class="fa fa-search"></i> Search
                </button>
            </span>
        </div>
    </div>

<section>
    <div class="container">
    <div id="carousel1_indicator" class="slider-home-banner carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel1_indicator" data-slide-to="0" class="active"></li>
    <li data-target="#carousel1_indicator" data-slide-to="1"></li>
    <li data-target="#carousel1_indicator" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="{{asset('assets/images/banner/banner2.jpg')}}" alt="First slide"> 
    </div>
    <div class="carousel-item">
      <img src="{{asset('assets/images/banner/banner1.png')}}" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="{{asset('assets/images/banner/banner3.jpg')}}" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carousel1_indicator" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carousel1_indicator" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div> 
</div>
</section>

<hr class="divider mb-1">

<h6 class="title-section">Categories</h6>

<section class="padding-x scroll-horizontal">
    
<ul class="row">
    <li class="col-3">
        <a href="#" data-target="#modal_simple" data-toggle="modal" class="btn-card-icontop btn">
            <span class="icon"> <img src="{{asset('assets/images/icons/japanease_parts.png') }}" alt="">  </span>
            <small class="text text-center">Japanease<br>Parts</small>
        </a>
    </li>

    <div id="modal_simple" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header" style="padding-bottom: 0px;">
              <h5 class="modal-title">Japanease Parts</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body" style="padding-top: 0px;">
                <nav class="nav-sidebar">
                    <a href="{{ url('/product-category/40') }}"> <i class="fa fa-th"></i>  Air Freshener</a>
                    <a href="{{ url('/product-category/59') }}">  <i class="fa fa-info-circle"></i> Brake Pad & Shoe</a>
                    <a href="{{ url('/product-category/60') }}">  <i class="fa fa-building"></i> Double side Tape</a>
                    <a href="{{ url('/product-category/61') }}">  <i class="fa fa-cog"></i> Oil Filter</a>
                    <a href="{{ url('/product-category/62') }}">  <i class="fa fa-info-circle"></i> Air Filter</a>
                    <a href="{{ url('/product-category/63') }}">  <i class="fa fa-building"></i> Cabin Filter</a>
                    <a href="{{ url('/product-category/64') }}">  <i class="fa fa-cog"></i> HV Battery Filter</a>
                    <a href="{{ url('/product-category/65') }}"> <i class="fa fa-home"></i> Lead Acid Battery</a>
                </nav>
      
            </div>
          </div>
        </div>
    </div>


    <li class="col-3">
        <a href="{{ url('/product') }}" class="btn-card-icontop btn">
            <span class="icon"> <img src="{{asset('assets/images/icons/accessories.png') }}" alt=""> </span>
            <small class="text text-center">Product</small>
        </a>
    </li>
    <li class="col-3">
        <a href="{{ url('/product-category/13') }}" class="btn-card-icontop btn">
            <span class="icon"> <img src="{{asset('assets/images/icons/digital_gadget.png') }}" alt=""> </span>
            <small class="text text-center">Digital<br>Gadget</small>
        </a>
    </li>
    <li class="col-3">
        <a href="{{ url('/product-category/14') }}" class="btn-card-icontop btn">
            <span class="icon"> <img src="{{asset('assets/images/icons/lubricant_oil.png') }}" alt=""> </span>
            <small class="text text-center">Lubricant<br>Oil</small>
        </a>
    </li>
</ul>
</section>

<hr class="divider mb-1">

<h6 class="title-section">Services</h6>

<section class="padding-x scroll-horizontal">
    
<ul class="row">
    <li class="col-3">
        <a href="#" class="btn-card-icontop btn">
            <span class="icon"> <img src="{{asset('assets/images/service/Cleaning.png') }}" alt="">  </span>
            <small class="text text-center">Cleaning</small>
        </a>
    </li>

    <li class="col-3">
        <a href="#" class="btn-card-icontop btn">
            <span class="icon"> <img src="{{asset('assets/images/service/Health_Check.png') }}" alt=""> </span>
            <small class="text text-center">Health Check</small>
        </a>
    </li>
    <li class="col-3">
        <a href="#" class="btn-card-icontop btn">
            <span class="icon"> <img src="{{asset('assets/images/service/Repair.png') }}" alt=""> </span>
            <small class="text text-center">Repair</small>
        </a>
    </li>
    <li class="col-3">
        <a href="#" class="btn-card-icontop btn">
            <span class="icon"> <img src="{{asset('assets/images/service/Paint_and_Denting.png') }}" alt=""> </span>
            <small class="text text-center">Paint and<br>Denting</small>
        </a>
    </li>
</ul>
</section>

<hr class="divider my-3">

<h5 class="title-section">Hot Items</h5>
<section class="scroll-horizontal  padding-x">
    @foreach($hotProducts as $product)
    <div class="item">
        <a href="#" class="product-sm">
            <div class="img-wrap"> <img src="{{ asset('https://motorsheba.com/public/storage/'.$product->cover_img) }}"> </div>
            <div class="text-wrap">
                <p class="title text-truncate">{{ $product->name }}</p>
                <div class="price">৳ {{ $product->price }}</div>
            </div>
        </a>
    </div>
    @endforeach
</section>

<hr class="divider my-3">

<h5 class="title-section">New Arrivals</h5>
<section class="scroll-horizontal  padding-x">
    @foreach($newProducts as $product)
    <div class="item">
        <a href="#" class="product-sm">
            <div class="img-wrap"> <img src="{{ asset('https://motorsheba.com/public/storage/'.$product->cover_img) }}"> </div>
            <div class="text-wrap">
                <p class="title text-truncate">{{ $product->name }}</p>
                <div class="price">৳ {{ $product->price }}</div>
            </div>
        </a>
    </div>
    @endforeach
</section>

<hr class="divider my-3">

<h5 class="title-section">Original Japanease Parts</h5>

<section class="padding-x">
    <ul class="row">
        <li class="col-6">
            <a href="{{ url('/product-category/40') }}" class="btn btn-light text-muted btn-block">Air Freshener</a>
        </li>
        <li class="col-6">
            <a href="{{ url('/product-category/59') }}" class="btn btn-light text-muted btn-block">Brake Pad & Shoe</a>
        </li>
        <li class="col-6">
            <a href="{{ url('/product-category/60') }}" class="btn btn-light text-muted btn-block">Double side Tape</a>
        </li>
        <li class="col-6">
            <a href="{{ url('/product-category/61') }}" class="btn btn-light text-muted btn-block">Oil Filter</a>
        </li>
        <li class="col-6">
            <a href="{{ url('/product-category/62') }}" class="btn btn-light text-muted btn-block">Air Filter</a>
        </li>
        <li class="col-6">
            <a href="{{ url('/product-category/63') }}" class="btn btn-light text-muted btn-block">Cabin Filter</a>
        </li>
        <li class="col-6">
            <a href="{{ url('/product-category/64') }}" class="btn btn-light text-muted btn-block">HV Battery Filter</a>
        </li>
        <li class="col-6">
            <a href="{{ url('/product-category/65') }}" class="btn btn-light text-muted btn-block">Lead Acid Battery</a>
        </li>
    </ul>
</section>

</main>
@endsection

@section('style')
<style type="text/css">
    .btn-card-icontop {
        padding: 0px;
    }

    .btn-card-icontop img {
        height: 60px;
        width: 70px;
    }

    .title-section {
        margin-bottom: 10px;
    }

    /*SEARCH FORM*/
    .search-form {
        border-radius: 30px 0px 0px 30px;
        /*border-radius:Top-left, Top-right, Bottom-right, Bottom-left;*/
    }
    /*to cange only one form and not all give unique class name like  class="search-form" */
     .search-btn {
        border-radius: 0px 30px 30px 0px;
        cursor:pointer;
    }
</style>
@endsection