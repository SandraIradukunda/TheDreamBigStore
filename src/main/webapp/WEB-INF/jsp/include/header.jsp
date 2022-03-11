<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>

<html>
<head>
    <meta charset="utf-8">
    <title>Buyer</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous">

    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
            integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
            crossorigin="anonymous"></script>

    <style type="text/css" >

        * {
            box-sizing: border-box;
        }
        /* Header/Blog Title */
        .bg-light {
            background-color: #2196f3!important;
        }

        .container {
            margin-top: 10px;
            padding: 10px;
            background-color: #b2dfdb!important;
        }

        .header h1 {
            font-size: 50px;
        }

        .btn-primary {
            color: #fff;
            background-color: #ff5722;
            border-color: #e0e0e0;
        }

    </style>
</head>
<!--  navbar   -->
<body>
<nav class="navbar fixed-navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Dream Big Store</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/home">Home</a>
                </li>

                <li class="nav-item"><a class="nav-link" href="/Seller">Toys</a></li>
                <li class="nav-item"><a class="nav-link" href="/buyer">Clothes</a></li>
                <li class="nav-item"><a class="nav-link" href="/product">Add Product</a></li>
                <li class="nav-item"><a class="nav-link" href="/productEdit">Edit Product</a></li>
                <li class="nav-item"><a class="nav-link" href="/productDisplay">all Products</a></li>
                <li class="nav-item"><a class="nav-link" href="/categoryDisplay">all Category</a></li>
                <li class="nav-item"><a class="nav-link" href="/cartDisplay">View Cart</a></li>
                <li class="nav-item"><a class="nav-link" href="/logout">Logout</a>
            </ul>
        </div>
    </div>
</nav>
