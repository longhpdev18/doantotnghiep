<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 <div class="cardBox">
                <div class="card">
                    <div>
                        <div class="numbers">1,504</div>
                        <div class="cardName">Lượt xem</div>
                    </div>
                    <div class="iconBx">
                        <ion-icon name="eye"></ion-icon>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">80</div>
                        <div class="cardName">Giảm giá</div>
                    </div>
                    <div class="iconBx">
                        <ion-icon name="cart"></ion-icon>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">284</div>
                        <div class="cardName">Bình luận</div>
                    </div>
                    <div class="iconBx">
                        <ion-icon name="chatbubbles"></ion-icon>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">$7,842</div>
                        <div class="cardName">Doanh thu</div>
                    </div>
                    <div class="iconBx">
                        <ion-icon name="cash"></ion-icon>
                    </div>
                </div>
            </div>

            <div class="details">
                <!-- details list-->
                <div class="recentOrders">
                    <div class="cardHeader">
                        <h2>Gần đây</h2>
                        <a href="" class="btn">
                            <ion-icon name="download"></ion-icon>
                            Tải về
                        </a>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <!-- <td><input type="checkbox" onclick='checkUncheck(this)' > All</td> -->
                                <td>Mã</td>
                                <td>Tên</td>
                                <td>Giá</td>
                                <td>Thanh toán</td>
                                <td>Trạng thái</td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <!-- <td><input type="checkbox" name="lang" class="chkboxname" ></td> -->
                                <td>1</td>
                                <td>Start Refrigerator</td>
                                <td>$1200</td>
                                <td>Đã thanh toán</td>
                                <td><span class="status delivered">Đã giao hàng</span></td>
                                <td>
                                    <div class="dropdown">
                                        <button class="dropbtn">
                                            <i class="fas fa-ellipsis-v"></i>
                                        </button>
                                        <div class="dropdown-content">
                                            <a href="#">Xóa</a>
                                            <!-- <a href="#">Edit</a> -->
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <!-- <td><input type="checkbox" name="lang" class="chkboxname"></td> -->
                                <td>2</td>
                                <td>Start Refrigerator</td>
                                <td>$1200</td>
                                <td>Qúa hạn</td>
                                <td><span class="status pending">Chưa giải quyết</span></td>
                                <td>
                                    <div class="dropdown">
                                        <button class="dropbtn">
                                            <i class="fas fa-ellipsis-v"></i>
                                        </button>
                                        <div class="dropdown-content">
                                            <a href="#">Xóa</a>
                                            <!-- <a href="#">Edit</a> -->
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <!-- <td><input type="checkbox" name="lang" class="chkboxname" ></td> -->
                                <td>3</td>
                                <td>Start Refrigerator</td>
                                <td>$1200</td>
                                <td>Đã thanh toán</td>
                                <td><span class="status delivered">Đã giao hàng</span></td>
                                <td>
                                    <div class="dropdown">
                                        <button class="dropbtn">
                                            <i class="fas fa-ellipsis-v"></i>
                                        </button>
                                        <div class="dropdown-content">
                                            <a href="#">Xóa</a>
                                            <!-- <a href="#">Edit</a> -->
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <!-- <td><input type="checkbox" name="lang" class="chkboxname"></td> -->
                                <td>4</td>
                                <td>Start Refrigerator</td>
                                <td>$1200</td>
                                <td>Đã thanh toán</td>
                                <td><span class="status return">Trả hàng</span></td>
                                <td>
                                    <div class="dropdown">
                                        <button class="dropbtn">
                                            <i class="fas fa-ellipsis-v"></i>
                                        </button>
                                        <div class="dropdown-content">
                                            <a href="#">Xóa</a>
                                            <!-- <a href="#">Edit</a> -->
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <!-- <td><input type="checkbox" name="lang" class="chkboxname" ></td> -->
                                <td>5</td>
                                <td>Start Refrigerator</td>
                                <td>$1200</td>
                                <td>Đã thanh toán</td>
                                <td><span class="status delivered">Đã giao hàng</span></td>
                                <td>
                                    <div class="dropdown">
                                        <button class="dropbtn">
                                            <i class="fas fa-ellipsis-v"></i>
                                        </button>
                                        <div class="dropdown-content">
                                            <a href="#">Xóa</a>
                                            <!-- <a href="#">Edit</a> -->
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <!-- <td><input type="checkbox" name="lang" class="chkboxname" ></td> -->
                                <td>6</td>
                                <td>Start Refrigerator</td>
                                <td>$1200</td>
                                <td>Chưa thanh toán</td>
                                <td><span class="status inprogress">Vận chuyển</span></td>
                                <td>
                                    <div class="dropdown">
                                        <button class="dropbtn">
                                            <i class="fas fa-ellipsis-v"></i>
                                        </button>
                                        <div class="dropdown-content">
                                            <a href="#">Xóa</a>
                                            <!-- <a href="#">Edit</a> -->
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <!-- <td><input type="checkbox" name="lang" class="chkboxname"></td> -->
                                <td>7</td>
                                <td>Start Refrigerator</td>
                                <td>$1200</td>
                                <td>Đã thanh toán</td>
                                <td><span class="status delivered">Đã giao hàng</span></td>
                                <td>
                                    <div class="dropdown">
                                        <button class="dropbtn">
                                            <i class="fas fa-ellipsis-v"></i>
                                        </button>
                                        <div class="dropdown-content">
                                            <a href="#">Xóa</a>
                                            <!-- <a href="#">Edit</a> -->
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <!--pagination-->
                    <div class="pagination">
                        <a href="#"><i class="fas fa-chevron-left"></i></a>
                        <a href="#">1</a>
                        <a href="#" class="active">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#"><i class="fas fa-chevron-right"></i></a>
                    </div>
                </div>

                <!--New Customers-->
                <div class="recentCustomers">
                    <div class="cardHeader">
                        <h2>Khách hàng gần đây</h2>
                    </div>
                    <table>
                      
                        <tr>
                            <td width="60px">
                                <div class="imgBx"><img
                                        src="https://scontent.fdad1-1.fna.fbcdn.net/v/t1.6435-9/127222247_1086079278516962_38767906172782592_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=FcF-DqXSBUYAX-u-j1Z&tn=8Xk759-Pc91XDR0g&_nc_ht=scontent.fdad1-1.fna&oh=39f0b948a1be6268de1169086e3e2d21&oe=6192E86C"
                                        alt=""></div>
                            </td>
                            <td>
                                <h4>David<br><span>Italy</span></h4>
                            </td>
                            <td class="tbicon">
                                <a href="">
                                    <ion-icon name="phone-portrait"></ion-icon>
                                </a>
                                <a href="">
                                    <ion-icon name="chatbubbles"></ion-icon>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td width="60px">
                                <div class="imgBx"><img
                                        src="https://scontent.fdad1-1.fna.fbcdn.net/v/t1.6435-9/127222247_1086079278516962_38767906172782592_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=FcF-DqXSBUYAX-u-j1Z&tn=8Xk759-Pc91XDR0g&_nc_ht=scontent.fdad1-1.fna&oh=39f0b948a1be6268de1169086e3e2d21&oe=6192E86C"
                                        alt=""></div>
                            </td>
                            <td>
                                <h4>David<br><span>Italy</span></h4>
                            </td>
                            <td class="tbicon">
                                <a href="">
                                    <ion-icon name="phone-portrait"></ion-icon>
                                </a>
                                <a href="">
                                    <ion-icon name="chatbubbles"></ion-icon>
                                </a>
                            </td>
                        </tr>

                    </table>
                </div>
            </div>

<script src="../assets/js/admin/hovered.js"></script>
            