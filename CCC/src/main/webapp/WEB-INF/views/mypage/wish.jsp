<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        .content {
            background-color: rgb(247, 245, 245);
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

<div class="likecontent">
        <br><br>
        <div class="innerOuter">
            <h2>찜리스트 상품 총?개</h2>
            <br>
			test : ${wList }
            <a class="btn btn-secondary" style="float:right;" href="">목록으로</a>
            <br><br>

            <table id="contentArea" algin="center" class="table">
                <tr>
                    <td>
                        <div>
                            <input type="checkbox">
                            <span>
                               		 전체삭제
                                <a class="btn btn-primary" href="">선택삭제</a>
                            </span>
                        </div>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td style="vertical-align:middle;">
                        <input type="checkbox">
                    </td>
                    <td>
                        <div style="vertical-align:middle;">

                            <img src="" alt="" value="가격">
                            <h5>이미지영역</h5>
                        </div>
                    </td>
                    <td>
                        <div>
                            <h6>상품설명 ?</h6>
                            <h6>상품가격 ?</h6>
                        </div>
                    </td>
                    <td>
                        <div>
                            <a class="btn btn-danger" href="">장바구니</a>
                        </div>
                        <div>
                            <a class="btn btn-primary" href="">삭제하기</a>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div>
                            <input type="checkbox">
                            <span>
                                	전체삭제
                                <a class="btn btn-primary" href="">선택삭제</a>
                            </span>
                        </div>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
            <br>

            <div align="center">
                <!-- 수정하기, 삭제하기 버튼은 이 글이 본인이 작성한 글일 경우에만 보여져야 함 -->
                <a class="btn btn-primary" href="">이전</a>
                <a class="btn btn-danger" href="">다음</a>
            </div>
            <br><br>




</body>
</html>