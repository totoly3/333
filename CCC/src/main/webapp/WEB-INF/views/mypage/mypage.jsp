<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
=========================================================
* Paper Dashboard 2 - v2.0.1
=========================================================

* Product Page: https://www.creative-tim.com/product/paper-dashboard-2
* Copyright 2020 Creative Tim (https://www.creative-tim.com)

Coded by www.creative-tim.com

 =========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="resources/paper-dashboard-master/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
    name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="resources/paper-dashboard-master/assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="resources/paper-dashboard-master/assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="resources/paper-dashboard-master/assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
 <!--제이쿼리 라이브러리-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <div class="wrapper ">
    <div class="sidebar" data-color="white" data-active-color="danger">
      <div class="logo">
        <a href="https://www.creative-tim.com" class="simple-text logo-mini">
          <div class="logo-image-small">
            <img src="resources/paper-dashboard-master/assets/img/logo-small.png">
          </div>
          <!-- <p>CT</p> -->
        </a>
        <a href="https://www.creative-tim.com" class="simple-text logo-normal">
          Creative Tim
          <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="active ">
            <a href="./dashboard.html">
              <i class="nc-icon nc-bank"></i>
              <p>대회참가내역>참가상세</p>
            </a>
          </li>
          <li>
            <a href="cartList.my ">
              <i class="nc-icon nc-diamond"></i>
              <p>장바구니조회</p>
            </a>
          </li>
          <li>
            <a href = "orderDetail.my?oNo=1">
              <i class="nc-icon nc-pin-3"></i>
              <p>주문목록</p>
            </a>
          </li>
          <li>
            <a href="./notifications.html">
              <i class="nc-icon nc-bell-55"></i>
               <p></p>
            </a>
          </li>
          <li>
            <a href="./user.html">
              <i class="nc-icon nc-single-02"></i>
              <p>User Profile</p>
            </a>
          </li>
          <li>
            <a href="./tables.html">
              <i class="nc-icon nc-tile-56"></i>
              <p>Table List</p>
            </a>
          </li>
          <li>
            <a href="./typography.html">
              <i class="nc-icon nc-caps-small"></i>
              <p>Typography</p>
            </a>
          </li>
          <li class="active-pro">
            <a href="./upgrade.html">
              <i class="nc-icon nc-spaceship"></i>
              <p>Upgrade to PRO</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="javascript:;" style="color:#EA4F4D; font-weight: bold"> my page </a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation"
            aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <form>
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <div class="input-group-append">
                  <div class="input-group-text">
                    <i class="nc-icon nc-zoom-split"></i>
                  </div>
                </div>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link btn-magnify" href="javascript:;">
                  <i class="nc-icon nc-layout-11"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Stats</span>
                  </p>
                </a>
              </li>
              <li class="nav-item btn-rotate dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="nc-icon nc-bell-55"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Some Actions</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <a class="dropdown-item" href="#">Something else here</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link btn-rotate" href="javascript:;">
                  <i class="nc-icon nc-settings-gear-65"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Account</span>
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-globe text-warning"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8" onclick="location.href='profileEnroll.me'">
                    <div class="numbers">
                      <p class="card-category">회원정보</p>
                      <p class="card-title">150GB
                      <p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  <i class="fa fa-refresh"></i>
                  Update Now
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-money-coins text-success"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8" onclick="location.href='contest.my'">
                    <div class="numbers">
                         <p class="card-category">대회참가내역</p>
                      <p class="card-title">$ 1,345
                      <p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  <i class="fa fa-calendar-o"></i>
                  Last day
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-vector text-danger"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8" onclick="location.href='list.mychar'">
                    <div class="numbers">
                        <p class="card-category">내 캐릭터</p>
                      <p class="card-title">23
                      <p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  <i class="fa fa-clock-o"></i>
                  In the last hour
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body" onclick="location.href='wishList.my'">>
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-favourite-28 text-primary"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">관심내역</p>
                      <p class="card-title">+45K
                      <p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  <i class="fa fa-refresh"></i>
                  Update now
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            
            <div class="card ">
            
             <br>
             <h3 style="color:green;">주문내역</h3>
              
                <table class="table">
				  <thead>
				    <tr>
				      <th scope="col">#</th>
				      <th scope="col">주문번호</th>
				      <th scope="col">주문상품</th>
				      <th scope="col">Handle</th>
				      <th>하하</th>
				    </tr>
				  </thead>
				  <tbody>
                    <tr>
                       <th scope="row">1</th>
                       <td>1</td>
                       <td>가가굿즈</td>
                       <td>3개</td>
                       <td>우와</td>
                    </tr>
                    <tr>
                       <th scope="row">2</th>
                       <td>2</td>
                       <td>나나굿즈</td>
                       <td>4개</td>
                       <td>우와</td>
                    </tr>
                    <tr>
                       <th scope="row">3</th>
                       <td>3</td>
                       <td>다다굿즈</td>
                       <td>5개</td>
                       <td>우와</td>
                    </tr>
                  </tbody>
				</table>
            </div>
            
            <script>
                $("#orderList>tbody tr").click(function () {
                    //alert('클릭됨?');
                    //console.log("들어옴?");
                    //var a=$(this).childeren().eq(1).text()
                    //console.log(a);
                    //location.href="orderDetail.my?oNo="+$(this).childeren().eq(0).text();
                    location.href = "orderDetail.my?oNo=" + $(this).children().eq(1).text();
                })
            </script>
          
             <div class="card ">
	             <h3 style="color:green;">영역1-1</h3>
	             
	              <div class="orderList button" align="center">
	                <a class="btn btn-primary" id="today-order" href="#" role="button">오늘</a>
	                <a class="btn btn-primary" id="week-order" href="#" role="button">일주일</a>
	                <a class="btn btn-primary" id="month-order" href="#" role="button">한달</a>
	                <a class="btn btn-primary" id="month3-order" href="#" role="button">세달</a>
	                <a class="btn btn-primary" id="month6-order" href="#" role="button">여섯달</a>
	             </div>
	             
	               <br>
	               <br>
	             
				 <table class="table" id="orderListArea">
				  <!-- 여기가 ajax 뿌려지는 곳 -->
				 </table>
            </div>
            
            <div class="card ">
             <br>
             <h3 style="color:green;">영역1-2</h3>
              <div class="card-header ">
                <br>
                <br>
                <br>
              </div>
              <div class="card-body ">
               
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                </div>
              </div>
            </div>
            
                  <script>
                        $(function () {
                            // startDate는 시작일자를 언제로 설정할지를 결정하는 변수로
                            // startDate값에 따라 컨트롤러에서 시작일을 변경하도록 되어 있음
                            var startDay = 0;
                            $("#today-order").click(function () {
                                startDay = 1; // 오늘 날짜
                                console.log(startDay);
                                selectOrderList(startDay);
                            });
                            $("#week-order").click(function () {
                                startDay = 2;  // 일주일 전
                                selectOrderList(startDay);
                            });
                            $("#month-order").click(function () {
                                startDay = 3;  // 한 달 전
                                selectOrderList(startDay);
                            });
                            $("#month3-order").click(function () {
                                startDay = 4;  // 세 달 전
                                selectOrderList(startDay);
                            });
                            $("#month6-order").click(function () {
                                startDay = 5;  // 여섯 달 전
                                selectOrderList(startDay);
                            });
                        })

                        var selectOrderList = function (startDay) {
                            console.log("startDay : " + startDay);

                            $.ajax({
                                url: "selectoListbyDate.my",
                                data: {
                                    startDay: startDay
                                },
                                type: "post",
                                success: function (realoList) {
                                    console.log("통신성공");
                                    console.log("realoList : " + realoList);

                                    $("#orderListArea").html(realoList);

                                    /*   str += "<tr><td colspan='3' align='center'><h3>조회된 결과가 없습니다.</h3></td></tr>";
                                        $("#orderListArea").html(str);   */
                                },
                                error: function () {
                                    console.log("통신실패");
                                }
                            })
                        }
                   </script>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4">
            <div class="card ">
              <div class="card-header ">
                <h5 class="card-title" style="color:blue" >영역2</h5>
              </div>
              <div class="card-body ">
                <canvas id="chartEmail"></canvas>
              </div>
              <div class="card-footer ">
                <div class="legend">
                </div>
                <hr>
                <div class="stats">
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-8">
            <div class="card card-chart">
              <div class="card-header">
              </div>
              <div class="card-body">
              </div>
              <div class="card-footer">
                <div class="chart-legend">
                </div>
                <hr />
                <div class="card-stats">
                  <h3 style="color:red">영역3</h3>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <footer class="footer footer-black  footer-white ">
        <div class="container-fluid">
          <div class="row">
            <nav class="footer-nav">
              <ul>
                <li><a href="https://www.creative-tim.com" target="_blank">Creative Tim</a></li>
                <li><a href="https://www.creative-tim.com/blog" target="_blank">Blog</a></li>
                <li><a href="https://www.creative-tim.com/license" target="_blank">Licenses</a></li>
              </ul>
            </nav>
            <div class="credits ml-auto">
              <span class="copyright">
              </span>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
  
  <!--   Core JS Files   -->
  <script src="resources/paper-dashboard-master/assets/js/core/jquery.min.js"></script>
  <script src="resources/paper-dashboard-master/assets/js/core/popper.min.js"></script>
  <script src="resources/paper-dashboard-master/assets/js/core/bootstrap.min.js"></script>
  <script src="resources/paper-dashboard-master/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="resources/paper-dashboard-master/assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="resources/paper-dashboard-master/assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="resources/paper-dashboard-master/assets/js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script>
  <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
  <script src="resources/paper-dashboard-master/assets/demo/demo.js"></script>
  <script>
    $(document).ready(function () {
      // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
      demo.initChartsPages();
    });
  </script>
</body>

</html>