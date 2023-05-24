@extends('layouts.master')

@section('content')
<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img style="height: 400px;" src="https://noithattayho.vn/wp-content/uploads/2021/07/bao-gia-thi-cong-noi-that-1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img style="height: 400px;" src="https://bacgiangweb.com/noithat/wp-content/uploads/2019/10/1170x525_banner_noithat_57_01.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img style="height: 400px;" src="https://noithatbacau.net/wp-content/uploads/2018/03/2-3.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

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

    .btn-check:active+.btn-primary:focus,
    .btn-check:checked+.btn-primary:focus,
    .btn-primary.active:focus,
    .btn-primary:active:focus,
    .show>.btn-primary.dropdown-toggle:focus {
      box-shadow: none;
    }
  </style>
  <div class="container my-5">
    @foreach ($categories as $category)
    <header class="mb-4">
      <h3>{{$category->name}}</h3>
    </header>

    <div style="justify-content: center;" class="row">
      @foreach ($products as $product)
      @if ($product->category_id == $category->id && $product->status == true)
      <div style="width: 244px;" class="col-lg-3 col-md-6 col-sm-6 d-flex">
        <div class="card w-100 my-2 shadow-2-strong">
          <a href="../products/{{$product->id}}">
            <img src="../uploads/{{$product->image}}" class="card-img-top" style="aspect-ratio: 1 / 1; width: 100%; height: 218px" />
          </a>
          <div class="card-body d-flex flex-column">
            <h5 style="text-align: center; font-size: 16px;" class="card-title">{{$product->name}}</h5>
            <p style="text-align: center;" class="card-text">{{$product->price}}đ</p>
            <p class="evaluate"><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i></p>
            <div style="justify-content: center;" class="d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
              <a style="background-color: #009688; border: #009688;" href="../product/{{$product->id}}" class="btn btn-primary shadow-0 me-1">Mua Ngay <i style="font-size: 16px;" class="fa-solid fa-cart-shopping"></i></a>
              <a style="margin-left: 10px !important;" href="#!" class="btn btn-light px-2 pt-2 icon-hover">
                <i style="font-size: 21px; color: red;" class="fa-regular fa-heart"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
      @endif
      @endforeach
      @endforeach
    </div>
  </div>
</section>
@include('layouts.inc.footer')
@endsection