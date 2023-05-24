@extends('layouts.master')

@section('content')

<section>
  <style>
    p,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
      font-family: Open Sans, sans-serif;
    }

    .my-5 {
      margin-top: 28px !important;
    }

    .mb-4 {
      border-bottom: 1px solid #ccc;
      margin: 24px 50px;
      max-width: 1200px;
    }

    .mb-4 h3 {
      background-color: #009688;
      padding: 8px 0;
      border-radius: 30px;
      text-align: center;
      color: #fff;
      box-shadow: 0 0 10px 0 #ccc;
    }

    .evaluate {
      color: #fc3;
      text-align: center;
      font-size: 13px;
    }

    p {
      margin: 0;
    }

    p.card-text {
      color: #f46a11;
      font-weight: 700;
    }

    img.img-fluid {
      width: 400px;
    }
    .productdetail {
      margin-top: 30px;
    }
  </style>

  <section class="productdetail">
    <div class="container">
      <div class="row gx-5">
        <aside class="col-lg-6">
          <div class="border rounded-4 mb-3 d-flex justify-content-center">
            <a data-fslightbox="mygalley" class="rounded-4" target="_blank" data-type="image" href="../products/{{$product->id}}">
              <img src="../uploads/{{$product->image}}" class="img-fluid"/>
            </a>
            <!-- thumbs-wrap.// -->
            <!-- gallery-wrap .end// -->
        </aside>
        <main class="col-lg-6">
          <div class="ps-lg-3">
            <h4 style="color: #000 !important;" class="title text-dark">
            {{$product->name}}
            </h4>
            <div class="d-flex flex-row my-3">
              <div class="text-warning mb-1 me-2">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
                <span class="ms-1">
                  4.5
                </span>
              </div>
              <span class="text-muted"><i class="fas fa-shopping-basket fa-sm mx-1"></i>154 orders</span>
            </div>

            <div class="mb-3">
              <span class="h5">${{$product->price}}</span>
              <span class="text-muted">/per box</span>
            </div>

            <p>
              {{$product->description}}
            </p>
            <hr />

            <a href="#" class="btn btn-warning shadow-0"> Buy now </a>
            <a href="../product/{{$product->id}}" class="btn btn-primary shadow-0"> <i class="me-1 fa fa-shopping-basket"></i> Add to cart </a>
            <a href="#" class="btn btn-light border border-secondary py-2 icon-hover px-3"> <i class="me-1 fa fa-heart fa-lg"></i> Save </a>
          </div>
        </main>
      </div>
    </div>
  </section>
</section>

@include('layouts.inc.footer')
@endsection