@extends('layouts.back')

@section('content')
<main  class="app-content">
<section class="padding-around">

    <table class="table table-bordered text-left">
    	<?php
                                        $i=1;
                                        $allTotal = 0;
                                    ?>
                                    @foreach($addedList as $key=>$item)

                                    <?php
                                        $product = DB::table('products')->find($item->id);
                                    ?>
        <tr>
            <td width="100"><img src="{{ asset('https://motorsheba.com/public/storage/'.$product->cover_img) }}" class="img-md"></td> <td> <p>{{ $item->name }} <a href="{{ url('/product-cart/remove-one-item/'.$key) }}" class="btn btn-icon btn-outline-danger float-right"> <i class="fa fa-times"></i></a></p> {{ $item->qty }} x {{ $item->price }} <p><b>{{ $item->subtotal }}</b>

            </p></td>
        </tr>

        <?php
            $allTotal = $allTotal + $item->subtotal;
        ?>
        @endforeach
    </table>

    <article class="box bg-light my-4">
            <b>Total Amount:</b> {{ $allTotal }}
    </article>

    <p class="text-center d-flex">
        <a href="{{ url('/registration/create') }}" class="btn btn-primary w-100 mx-1"> <i class="fa fa-arrow-left icon"></i> <span class="text">Check out</span></a>
        
    </p>


</section> 


<br><br>


</main>
@endsection

@section('script')
    <script type="text/javascript">
        $(function() {
            $(document).on('click', '.delete-cart-item', function(){
              
                var key_id = this.id 

                var url2  = '{{ url("/product-cart/remove-one-item")}}' + "/" + key_id;
                console.log(url2);

                $.get(url2, function (data) {
                    $('#product_info_create').html(data);
                });

                // window.location.reload();
            });
        });
    </script>
@endsection