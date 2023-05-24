<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">

</head>

<body>
    <style>
        nav.navbar.navbar-expand-lg.navbar-light.bg-light {
            position: -webkit-sticky;
            position: sticky;
            top: 0;
            z-index: 2;
        }

        .form-control:focus {
            border-color: #ccc;
            box-shadow: none;
        }

        .btn-check:focus+.btn, .btn:focus {
            box-shadow: none;
        }
    </style>
    <nav style="background-color: #009688 !important;" class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a style="margin: 0 0 0 311px; padding: 5px 10px; color: #fff; border-radius: 5px; font-weight: 900;" class="navbar-brand" href="/">Store</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul style="margin-top: 7px; margin-right: 30px;" class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a style="margin: 0 10px; color: #fff;" class="nav-link active" aria-current="page" href="/">Trang chủ</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a style="color: #fff;" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Danh mục
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            @foreach ($categories as $category)

                            <li><a class="dropdown-item" href="../category/{{$category->id}}">{{$category->name}}</a></li>

                            @endforeach
                        </ul>
                    </li>

                    <li class="nav-item">
                        @guest
                        @if (Route::has('login'))
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                    </li>

                    @endif

                    @if (Route::has('register'))
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                    </li>

                    @endif
                    @else
                    <li class="nav-item dropdown">
                        <a style="color: #fff;" id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }}
                        </a>

                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </div>
                    </li>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/admin">
                                <i style="color: #fff;" style="font-size: 13px; padding-left: 10px;" class="fa-solid fa-user"></i>
                            </a>
                        </li>
                    </ul>
                    @endguest
                    </li>
                    <li class="nav-item">
                        <a href="/cart" class="nav-link">
                            <i style="font-size: 20px; margin-top: -8px;" class="fa badge" value=@php if(Session::has('products')){ $products=session('products'); echo count($products); }else{ echo '0' ; } @endphp>&#xf07a;</i>
                        </a>
                    </li>
                </ul>

                <form style="margin-right: 100px;" class="d-flex" action="{{route('search')}}" method="GET">
                    <input style="width: 300px; color: #333;" class="form-control me-2" name="search" type="text" placeholder="Tìm kiếm" aria-label="Search">
                    <button style="color: #000; background-color: #fff; padding: 7px 20px;" class="btn" type="submit"><i style="opacity: 0.5;" class="fa-solid fa-magnifying-glass"></i></button>
                </form>

            </div>
        </div>
    </nav>
</body>

</html>