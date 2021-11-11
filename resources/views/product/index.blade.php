@extends('layouts.back')

@section('content')
<main class="app-content">

<div class=" padding-x padding-bottom">
    <h3 class="title-page ">Products</h3>
</div>

<section class="padding-around">

<div class="row">
    @foreach($products as $product)
    <div class="col-6 col-sm-6 col-md-4">
        <a href="{{ url('/product/'.$product->id) }}" class="product-sm mb-3">
            <div class="img-wrap"> <img src="{{ asset('https://motorsheba.com/public/storage/'.$product->cover_img) }}"> </div>
            <div class="text-wrap">
                <p class="title text-truncate">{{ $product->name }}</p>
                
                <div class="price">৳ {{ $product->price }} </div> 
            </div>
        </a>
    </div>
    @endforeach

    
</div>

</section>
	<div>
    {!! $products->render() !!}
    </div>
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

<style type="text/css">

    	.pagination {
		   justify-content: center;
		}

	    li.page-item {

	        display: none;
	    }

	    .page-item:first-child,
	    .page-item:nth-child( 2 ),
	    .page-item:nth-last-child( 2 ),
	    .page-item:last-child,
	    .page-item.active,
	    .page-item.disabled {

	        display: block;
	    }

    </style>
@endsection

@section('script')
<script>
    $('.pagination li').addClass('page-item');
    $('.pagination li a').addClass('page-link');
    $('.pagination span').addClass('page-link');
</script>
@endsection