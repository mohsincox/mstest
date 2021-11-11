@extends('layouts.back')

@section('content')
<main class="app-content">

<section>
<div class="row no-gutters">
	
	<div class="col-12 col-sm-6 col-md-4">
		<article class="product-lg">
			<a href="#">
				<div class="text-center"><img src="{{ asset('https://motorsheba.com/public/storage/'.$product->cover_img) }}" alt="No Image" width="350"></div>
			</a>
			<div class="info-wrap">
				<div class="price-wrap">
					<span class="price">৳ {{ $product->price }}</span> 
				</div> 
				<p class="title">{{ $product->name }}</p>
			</div> 
			
			<div>
                {!! Form::open(['url' => 'product-item/add-to-cart', 'method' => 'post']) !!}
                
	                <input type="hidden" name="product_id" id="product_id" value="{{ $product->id }}">
	                
	                <p id="quantity_error" class="text-danger"></p>
	          
	                <div class="input-group input-spinner">
						<div class="input-group-prepend">
							<button class="btn btn-light minus-qty" type="button"> <i class="fa fa-minus"></i> </button>
						</div>
						<input min="1" value="1" id="quantity" type="number" name="quantity" class="form-control" value="1">
						<div class="input-group-append">
							<button class="btn btn-light plus-qty" type="button"> <i class="fa fa-plus"></i> </button>
						</div>
					</div>

					<button class="btn btn-outline-primary float-right add-cart-item-create"> <i class="fa fa-shopping-cart"></i> Add to Cart</button>
                 
                {!! Form::close() !!}

            </div>
            <div class="mt-5">
                <h3>Description: </h3>
                {!! $product->description !!}
            </div>
		</article>
	</div>
	
</div> 
</section> 

</main>
@endsection

@section('style')

@endsection

@section('script')
<script type="text/javascript">
      $(function() {
            $(document).on('click', '.add-cart-item-create', function(e){
                e.preventDefault();
                var productId = $("#product_id").val();
                var quantity = $("#quantity").val();

                if ((quantity == '') || (productId == '')) {
                    $("#quantity_error").html('Quantity can not be blank');
                    return;
                }

                $("#quantity_error").html('');

                var url = '{{ url("/product-cart/add-to-cart")}}'

                $.post(url, { product_id: productId, quantity: quantity, _token: $('input[name="_token"]').val() }, function(data){
                    $('#product_info_create').html(data);
                    console.log(data);
                    $("#product_id").val(productId);
                    $("#quantity").val('1');
                    window.location.reload();
                });
            });
        });


        $(document).ready(function() {

            $(document).on('click', '.plus-qty', function () {
                const qu = (Number($('#quantity').val())+1);
                $('#quantity').val(qu);
            });

            $(document).on('click', '.minus-qty', function () {
                const qu = (Number($('#quantity').val())-1);
                if(qu > 0) {
                    $('#quantity').val(qu);
                }
            });

        });
</script>
@endsection