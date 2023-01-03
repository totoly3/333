<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .content {
            background-color: red !important;
            width: 80%;
            margin: auto;
        }

        .innerOuter {
            border: 1px solid lightgray;
            width: 80%;
            margin: auto;
            padding: 5% 10%;
            background-color: white;
        }

        table * {
            margin: 5px;
        }

        table {
            width: 100%;
        }
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/views/common/header2.jsp"/> 
    
    <div class="likecontent">
        <br><br>
        <div class="innerOuter">
            <h2>장바구니 리스트</h2>
            <br>

            <a class="btn btn-secondary" style="float:right;" href="">목록으로</a>
            <br><br>

            <table id="contentArea" algin="center" class="table">
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>
                        <h2>이미지영역</h2>
                        <img src="" alt="">
                    </td>
                    <td>
                        <div>상품명 ?</div>
                        <div>
                            <span>배송일정?</span>
                            <span>
                                <select>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                </select>
                            </span>
                            <span>?원</span>
                        </div>
                    </td>
                    <td>
                        <span>총가격?원</span>
                    </td>
                </tr>
            </table>
            <br>

        </div>
    </div>

    <div align="center">
        <!-- 수정하기, 삭제하기 버튼은 이 글이 본인이 작성한 글일 경우에만 보여져야 함 -->
        <a class="btn btn-primary" href="">이전</a>
        <a class="btn btn-danger" href="">다음</a>
    </div>
    <br><br>
</body>

</html>