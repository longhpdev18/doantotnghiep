<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <!-- STYLE CSS -->
    <link rel="stylesheet" href="./assets/css/style.css"  />

    <!-- UTILITIES CSS -->
    <link rel="stylesheet" href="./assets/css/utilities.css" />


    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index </title>
    <link rel="stylesheet" href="../../assets/css/style.css">
    <link rel="stylesheet" href="../../assets/css/utilities.css">

    <!-- FONT ANWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
    <!-- JQUERY -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
    <div class="container">
        <jsp:include page="./../../home/header.jsp"></jsp:include>
        <div class="content">
            <div class="content__container">
                <h2 class="page__title">Giỏ hàng</h2>
                <table class="cart__tbl ">
                    <tr class="cart-product cart-firstChild">
                        <td>Sản phẩm</td>
                        <td>Tên sản phẩm</td>
                        <td>Số lượng</td>
                        <td>Giá tiền</td>
                        <td>Xóa</td>
                    </tr>
                    <tr class="cart-product">
                        <td class="cart-empty">
                            <h1 class="cart-empty-title">
                                Bạn chưa thêm sản phẩm nào
                            </h1>
                            <a href="/../index" class="cta-link">Tiếp tục mua hàng</a>
                        </td>
                    </tr>
                    <!-- <tr class="cart-product">
                        <td class="card-image"><img
                                src="https://maxlinkcomputer.com/man-hinh-may-tinh-samsung-lcd-22-inch-ls22a330nhexxv-13.jpg"
                                alt="" class="cart-contentImage"></td>
                        <td class="cart-productName"><a href="#" class="cta-link text-primary text-primary-hover"></a>
                            Tên sản phẩm Tên sản
                            phẩm Tên sản phẩm Tên sản phẩm Tên sản phẩm
                            Tên sản phẩm Tên sản phẩm </td>
                        <td class="cart-qty"><input type="number" class="cart-qty-input" value="1"></td>
                        <td class="cart-productPrice">21.490.000đ</td>
                        <td class="cart-productDelete">Xóa</td>
                    </tr>
                    <tr class="cart-product">
                        <td class="card-image"><img
                                src="https://maxlinkcomputer.com/man-hinh-may-tinh-samsung-lcd-22-inch-ls22a330nhexxv-13.jpg"
                                alt="" class="cart-contentImage"></td>
                        <td class="cart-productName"><a href="#" class="cta-link text-primary text-primary-hover"></a>
                            Tên sản phẩm Tên sản
                            phẩm Tên sản phẩm Tên sản phẩm Tên sản phẩm
                            Tên sản phẩm Tên sản phẩm </td>
                        <td class="cart-qty"><input type="number" class="cart-qty-input" value="1"></td>
                        <td class="cart-productPrice">21.490.000đ</td>
                        <td class="cart-productDelete">Xóa</td>
                    </tr> -->
                </table>
                <div class="group-button">
                    <button class="btn btn-primary btn-order rounded-8">Đặt hàng</button>
                    <button class="btn btn-white bg-white-hover btn-update rounded-8">Cập nhật</button>
                </div>
            </div>
        </div>
      
      <jsp:include page="./../../home/footer.jsp"></jsp:include>
    </div>
</body>
<!-- BOXICON -->
<script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>

</body>