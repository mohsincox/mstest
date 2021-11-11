<nav class="nav-bottom">
    <a href="{{ url('/') }}" class="nav-link active">
        <i class="icon fa fa-home"></i><span class="text">Home</span>
    </a>

    <a href="{{ url('/product') }}" class="nav-link">
        <i class="icon fa fa-box"></i><span class="text">Products</span>
    </a>

    <a href="{{ url('/cart') }}" class="nav-link">
        <i class="icon fa fa-shopping-cart"></i><span class="badge badge-danger navbar-badge">{{ $addedListCount }}</span><span class="text">My Cart</span>
    </a>

    <a href="{{ url('/profile') }}" class="nav-link">
        <i class="icon fa fa-user"></i><span class="text">Profile</span>
    </a>
</nav>