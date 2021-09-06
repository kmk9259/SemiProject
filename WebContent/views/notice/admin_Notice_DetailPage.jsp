<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="semiProject.com.kh.notice.model.vo.Notice"%>
    
  <%
	Notice n = (Notice)request.getAttribute("notice");
%>
	
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>어디어디</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">

    <!--JS-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

	<!-- 제이쿼리 피커데이트 -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	
	
	<!--드롭다운-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	
	


		<style>
		
		/* 위치 */
		.loca_1{
			float: left;
			margin-left: 10%;
			text-align: center;
			border: 1px solid pink;
			background-color: #D958A0;
			padding: 5%;
			border-radius: 2em;
		}
		
		/* 날짜 */
		.date_1{ 
			float: right;
			margin-right: 10%;
			text-align: center;
			border: 1px solid pink;
			background-color: #D958A0;
			padding: 5%;
			border-radius: 2em;
			
		}
		</style>

</head>

<body>
    <!-- Page Preloder -->
	<!-- <div id="preloder">
        <div class="loader"></div>
    </div> -->

     <%@ include file="../common/menubar.jsp"%>


		<!-- 페이지 상단부  -->
		<!-- Listing Section Begin  -->
		<section class="listing-hero set-bg" data-setbg="<%= contextPath %>/resources/img/breadcrumb/breadcrumb-blog2.gif">
		<div class="container">
		    <div class="row">
		        <div class="col-lg-8">
		            <div class="listing__hero__option">
		
		                <div class="listing__hero__text">
		                    <h2>공지사항 </h2>
		                    <div class="breadcrumb__option">
		                        <a href="./index.jsp"><i class="fa fa-home"></i> 홈</a>
		                        <span>공지사항 </span>
		                    </div>
		                    <p>공지사항 조회페이지 </p>
		                </div>
		            </div>
		        </div>
		
		    </div>
		</div>
		</section>

<section class="page-start">
    <!--메뉴바 같이 내려오는 시작점 -->

    <section class="most-search spad">
     
		
		<div class="outer">
		    <br>
		    
		    <h2 align="center">공지사항 상세보기</h2>
		    
		
		    <table id="detailArea" border="1" align="center">
		        <tr>
		            <td>제목</td>
		            <td colspan="3"><%= n.getNoticeTitle() %> </td>
		        </tr>
		        <tr>
		            <td>작성자</td>
		            <td><%= n.getNoticeWriter() %></td>
		            <td>작성일</td>
		            <td><%= n.getCreateDate() %></td>
		        </tr>
		        <tr>
		            <td colspan="4">내용</td>
		        
		        </tr>
		        <tr>
		            <td colspan="4">
		                <p><%= n.getNoticeContent() %> </p>
		            </td>
		        </tr>	
		    </table>
		    
		    <br>
		    
		    <div class="btns" align="center">
		    
		        <a href="list.no">목록으로</a> &nbsp;&nbsp;
		        <a href="updateForm.no?nno=<%=n.getNoticeNo()%>">수정하기</a> &nbsp;&nbsp;
		        <a href="#">삭제하기</a>  
		        <!-- 수정하기 및 삭제하기 버튼은 관리자만 뜨기  -->
		        <!-- 삭제하기 이후 목록으로 돌아가기 걸어주기  -->
    
     
        
    </div>
</div>


     </section>
                        
                    
   

   


    <%@ include file="../common/footer.jsp"%>

    
    <script src="<%= contextPath %>/resources/js/main.js"></script>
</body>




<!-- 자바스크립트 함수부분  -->
		
		
<script>
    $(function () {
        var $header = $('header'); //헤더를 변수에 넣기
        var $page = $('.page-start'); //색상이 변할 부분
        var $window = $(window);
        var pageOffsetTop = $page.offset().top;//색상 변할 부분의 top값 구하기

        $window.resize(function () { //반응형을 대비하여 리사이즈시 top값을 다시 계산
            pageOffsetTop = $page.offset().top;
        });

        $window.on('scroll', function () { //스크롤시
            var scrolled = $window.scrollTop() >= pageOffsetTop; //스크롤된 상태; true or false
            $header.toggleClass('down', scrolled); //클래스 토글
        });
    });

</script>

</html>