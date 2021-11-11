@extends('layouts.back')

@section('content')
<main class="app-content">

<div class=" padding-x padding-bottom">
    <h3 class="title-page ">{{ $proCats[0]->category->name }}  </h3>
</div>

<section class="padding-around">

<div class="row">
    @foreach($proCats as $proCat)
    <div class="col-6 col-sm-6 col-md-4">
        <a href="{{ url('/product/'.$proCat->product->id) }}" class="product-sm mb-3">
            <div class="img-wrap"> <img src="{{ asset('https://motorsheba.com/public/storage/'.$proCat->product->cover_img) }}"> </div>
            <div class="text-wrap">
                <p class="title text-truncate">{{ $proCat->product->name }}</p>
                
                <div class="price">৳ {{ $proCat->product->price }} </div> 
            </div>
        </a>
    </div>
    @endforeach
</div>

</section>

</main>
@endsection

@section('style')
<style type="text/css">
    .img-wrap img {
        max-width: 75%;
    }

    .btn-xs {
        padding: .125rem .25rem;
        font-size: .75rem;
        line-height: 1.5;
        border-radius: .15rem;
    }
</style>
@endsection