<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
       <!-- Custom fonts for this template-->
  	  <link href="resources/memberAdmin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
      <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

   	  <!-- Custom styles for this template-->
      <link href="resources/memberAdmin/css/sb-admin-2.min.css" rel="stylesheet">
    
    
    
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>일반관리자 HOME</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="resources/memberAdmin/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">손석구님, 환영합니다</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            
                 
                 
                 
             <!-- profile-->
            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="resources/memberAdmin/assets/img/son3.jpg" alt="..." class="img-circle profile_img">

              </div>
            </div>
                            
                            
                            
                            
                            
                            <a class="nav-link" href="member.ad">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                               	관리자 HOME
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                	특수관리자
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="adminList.ad">관리자조회</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">관리자등록</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Pages
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Addons</div>
                            <a class="nav-link" href="resources/memberAdmin/charts.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Charts
                            </a>
                            <a class="nav-link" href="resources/memberAdmin/tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                	Tables
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        	관리자: 오상희
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">회원관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">회원조회</li>
                        </ol>
                       

 				<!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-danger shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-s font-weight-bold text-danger text-uppercase mb-1">
                                               	 &ensp;전체 회원수</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">&ensp;${listCount}명</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-s font-weight-bold text-warning text-uppercase mb-1">
                                                 &ensp;새로운 게시글 수</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">&ensp;36개</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-s font-weight-bold text-success text-uppercase mb-1">Tasks
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">&ensp;50%</div>
                                                </div>
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-success" role="progressbar"
                                                            style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-s font-weight-bold text-info text-uppercase mb-1">
                                                 &ensp;Earnings (Annual)</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">&ensp;$215,000</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>





                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        	월별 캐릭터수
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                    	   월별 가입자수
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                               	<!-- 삭제버튼 구현 --> 
                               	<div id="deleteKey" style="float:right">
                 				<a class="btn btn-outline-dark"  id="checkAll">전체선택</a>
                 				<a class="btn btn-outline-dark"  id="unCheckAll">전체해제</a>
                 				<a class="btn btn-secondary"  onclick="deleteClick()">선택회원 차단</a>
                 				</div>
                               
                                <form action="excelDownload.ad" method="post">
                                	<input type="submit" class="btn btn-success" value="EXCEL 다운로드">	
								</form>
                              </div>
	                            <div class="card-body">
	                                <table id="datatablesSimple">
	                                
	                                    <thead>
	                                        <tr>
	                                            <th><input type="checkbox"></th>
	                                            <th>회원번호</th>
	                                            <th>회원아이디</th>
	                                            <th>회원이름</th>
	                                            <th>성별</th>
	                                            <th>나이</th>
	                                            <th>이메일</th>
	                                            <th>회원등급</th>
	                                            <th>회원점수</th>
	                                            <th>가입일</th>
	                                        </tr>
	                                    </thead>
	          			   
			          			   
			          			<tbody>	
				                   <c:forEach var="m" items="${mList}">
										<tr>
											<td><input type="checkbox" name="check" id="multiCheck" value="${m.mName }"></td> 
											<td>${m.mNo }</td>
											<td>${m.mId }</td>
											<td>${m.mName }</td>
											<td>${m.mGender }</td>
											<td>${m.mAge }</td>	
											<td>${m.mEmail }</td>
											
											<c:choose>
												<c:when test="${m.mgNo eq 1}">
													<td>${m.mgNo }&emsp;&ensp;<span class='badge badge-pill badge-danger'>V.I.P</span></td>
												</c:when>
												
												<c:when test="${m.mgNo eq 2}">
													<td>${m.mgNo }&emsp;&ensp;<span class='badge badge-pill badge-warning'>Gold</span></td>
												</c:when>
												
												<c:when test="${m.mgNo eq 3}">
													<td>${m.mgNo }&emsp;&ensp;<span class='badge badge-pill badge-info'>Silver</span></td>
												</c:when>
					                			<c:otherwise>
					                   				<td>${m.mgNo }&emsp;&ensp;<span class='badge badge-pill badge-secondary'>Bronze</span></td>
					                			</c:otherwise>
											</c:choose>
											
											<td>${m.mPoint }</td>
											<td>${m.mCreateDate }</td>
										</tr>
									</c:forEach>
			         			</tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                
                
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>

            </div>
        </div>
        

        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="resources/memberAdmin/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="resources/memberAdmin/assets/demo/chart-area-demo.js"></script>
        <script src="resources/memberAdmin/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="resources/memberAdmin/js/datatables-simple-demo.js"></script>
        
        
        <script>
        
     	//체크박스 선택 후 삭제 버튼 클릭시 이벤트 (회원차단기능)
        function deleteClick(){
    	 
			var checkBoxArr = []; 
			$("input:checkbox[name='check']:checked").each(function() {
				checkBoxArr.push($(this).val());     // 체크된 것만 값을 뽑아서 배열에 push
          		console.log(checkBoxArr);
			});
			
			//ajax 이용
			var delConfirm=confirm("선택한 회원을 차단 하시겠습니까?");

					if(delConfirm==true){
			
			
	          $.ajax({
		              url: "deleteClickMember.ad",
		              data: {checkBoxArr : checkBoxArr},   // check seq 값을 가지고 있음.
		              success: function(result){
		              	console.log(result);
		          
		              	if(result == "yes"){
	    					alert("회원이 차단되었습니다");
	    					$("#multiCheck").val("");
		    				location.href="member.ad";
	    					
	    				}else{
	    					alert("회원 차단 실패하였습니다");
	    				}
		              	
		              },
		              error: function() {
		            	  console.log("통신실패");
		              }  
	           });
        
			}
     }
     
      //체크박스 전체선택,전체해제
        $(document).ready(function(){
        
            $("#checkAll").click(function() {
                $("input[name=check]:checkbox").prop("checked",true); // name이 chkbox인 input 타입들의 checked값을 "true"로 바꿈
            });
            
            $("#unCheckAll").click(function() {
                $("input[name=check]:checkbox").prop("checked",false); // name이 chkbox인 input 타입들의 checked값을 "false"로 바꿈
            });
        });
     
      
      
      
      
      
      
      	//체크박스 선택 후 정보변경(포인트변경)
        function updateClick(){
       	 
			var checkBoxArr = []; 
			$("input:checkbox[name='check']:checked").each(function() {
				checkBoxArr.push($(this).val());     // 체크된 것만 값을 뽑아서 배열에 push
          		console.log(checkBoxArr);
          		console.log(checkBoxArr.push($(this).parent().parent().children().eq(7).text()));
			});
			
			//ajax 이용
			var updateConfirm=confirm("선택한 회원의 정보를 변경하시겠습니까?");

					if(updateConfirm==true){
			
			
	          $.ajax({
		              url: "updateClickMember.ad",
		              data: {checkBoxArr : checkBoxArr}, 
		              success: function(result){
		              	console.log(result);
		          
		              	if(result == "yes"){
	    					alert("회원 정보가 변경되었습니다");
	    					$("#multiCheck").val("");
		    				location.href="member.ad";
	    					
	    				}else{
	    					alert("회원 정보 변경 실패하였습니다");
	    				}
		              	
		              },
		              error: function() {
		            	  console.log("통신실패");
		              }  
	           });
        
			}
     }
      
      
      
      
        
        </script>
        
        
    </body>
</html>
