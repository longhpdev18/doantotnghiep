
<%@ page pageEncoding="utf-8"%>


<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


        <!--main-->
     
            <!-- add products-->
            <div class="add_product">
                <div class="title">Thêm sản phẩm</div>
                <form action="#">
                    <div class="input_left">
                        
                        <div class="input_box">
                            <span class="title_product">Tên </span>
                            <input type="text" placeholder="Name product" required>
                        </div>
                        <div class="input_box">
                            <span class="title_product">Số lượng </span>
                            <input type="number" id="quantity" name="quantity" min="1" max="100">
                        </div>
                        <div class="input_box">
                            <span class="title_product">Giá </span>
                            <input type="number" placeholder="Price" required>
                        </div>
                        <div class="input_box">
                            <span class="title_product">Trạng thái </span>
                            <select name="dropdown">
                                <option value="Maths" selected>Chọn...</option>
                                <option value="Physics">Hàng mới</option>
                                <option value="Physics">Hàng cũ</option>
                            </select>
                        </div>
                        <div class="input_box">
                            <span class="title_product">Loại </span>
                            <select name="dropdown">
                                <option value="Maths" selected></option>
                                <option value="Physics">Màn hình</option>
                                <option value="Physics">Bàn phím</option>
                            </select>
                        </div>
                        <div class="input_box">
                            <span class="title_product">Mô tả </span>
                            <textarea name="subject" id="subject" placeholder="Mô tả sản phẩm..." cols="30" rows="5"></textarea>
                        </div>
                    </div>

                    <div class="input_right">
                        <div class="input_img">
                            <div class="wrapper">
                                <div class="image">
                                    <img src="#" alt="">
                                </div>
                                <div class="center">
                                    <ion-icon name="cloud-upload"></ion-icon>
                                    <span class="title_product">Imge File</span>
                                </div>
                            </div>
                            <input type="file" id="default-btn" hidden>
                            <button id="custom-btn">Choose a file</button>
                        </div>
                        <!-- <div class="input_box">
                            <span class="title_product">Status </span>
                            <select name="dropdown">
                                <option value="Maths" selected>1990</option>
                                <option value="Physics">1991</option>
                                <option value="Physics">1992</option>
                            </select>
                        </div> -->
                      
                    </div>

                </form>
                <div class="wrap">
                    <div class="item">
                        <button class="btn-outline">New</button>
                    </div>
                    <div class="item">
                        <button class="btn">Save</button>
                    </div>
                </div>
            </div>
        </div>
    
