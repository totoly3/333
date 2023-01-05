<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .content {
            background-color:rgb(247, 245, 245);
            width:80%;
            margin:auto;
        }
        .innerOuter {
            border:1px solid lightgray;
            width:80%;
            margin:auto;
            padding:5% 10%;
            background-color:white;
        }

        #enrollForm>table {width:100%;}
        #enrollForm>table * {margin:5px;}
    </style>
</head>
<body>
        
    <!-- 네비바 -->
 	<jsp:include page="/WEB-INF/views/shop/goods/goodsNavi.jsp"/>

    <div class="content">
        <br><br>
        <div class="innerOuter">
            <h2>게시글 작성하기</h2>
            <br>

            <form id="enrollForm" method="post" action="insert.bo" enctype="multipart/form-data">
                <table algin="center">
                   <tr>
                        <th><label for="title">글 제목</label></th>
                        <td colspan="5"><input type="text" id="title" class="form-control" name="title" required></td>
                   </tr>
                   
                   <tr>
                        <th width="100px;"><label for="writer">브랜드명</label></th>
                        <td colspan="2"><input type="text" id="brand" class="form-control" name="brand" required></td>
                        
                        <th width="100px;"><label for="writer">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;카테고리</label></th>
                        <td colspan="2"><input type="text" id="category" class="form-control" name="category" required></td>
                    </tr>
                    
                    <tr>
                        <th width="100px;"><label for="title">가격</label></th>
                        <td colspan="2"><input type="text" id="price" class="form-control" name="price" required></td>
                        
                        <th width="100px;"><label for="title">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;재고</label></th>
                        <td colspan="2"><input type="text" id="stock" class="form-control" name="stock" required></td>
                    </tr>
                    
                    <tr>
                        <th><label for="upfile">썸네일</label></th>
                        <td colspan="5"><input type="file" id="upfile" class="form-control-file border" name="upfile1" required></td>
                    </tr>
                    
                    <tr>
                        <th width="100px;"><label for="upfile">첨부파일2</label></th>
                        <td width="200px;"><input type="file" id="upfile2" class="form-control-file border" name="upfile2" required></td>
                        <th width="100px;"><label for="upfile">&emsp;첨부파일3</label></th>
                        <td width="200px;"><input type="file" id="upfile3" class="form-control-file border" name="upfile3" required></td>
                        <th width="100px;"><label for="upfile">&emsp;첨부파일4</label></th>
                        <td width="200px;"><input type="file" id="upfile4" class="form-control-file border" name="upfile4" required></td>
                    </tr>
                    
                    <tr>
                        <th><label for="content">내용</label></th>
                        <td colspan="5"><textarea id="content" class="form-control" rows="10" style="resize:none;" name="content" required></textarea></td>
                    </tr>
                    
                </table>
                <br>

                <div align="center">
                    <button type="submit" class="btn btn-outline-dark">등록하기</button>
                    <button type="reset" class="btn btn-outline-dark">취소하기</button>
                    

                </div>
            </form>
        </div>
        <br><br>

    </div>
    
</body>
</html>