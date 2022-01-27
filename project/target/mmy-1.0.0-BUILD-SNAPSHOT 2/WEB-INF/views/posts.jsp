<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.my.mmy.lost.LostDAO, com.my.mmy.lost.LostVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- core 태그 라이브러리 선언  -->
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>손양원RC 분실물 관리시스템</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/album/">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

<script>
	// 삭제 확인 함수 생성 
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='delete/' + id;
	}
</script>
    
  </head>
  <body>
    
<header>
  <div class="collapse bg-dark" id="navbarHeader">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-md-7 py-4">
          <h4 class="text-white">프로젝트 기획의도</h4>
          <p class="text-muted">현재 손양원RC에서 많은 분실물들이 발생하고 있습니다. 이 분실물든은 대부분 주인을 찾지 못하여 폐기되거나 간혹 실명 카톡방에 분실물 주인을 찾는 글이 올라와 주인과 연락이 됩니다. 저희는 조금 더 체계화된 분실물 처리 시스템이 필요하다고 생각하여 이 프로젝트를 기획하게 되었습니다. </p>
        </div>
        <div class="col-sm-4 offset-md-1 py-4">
          <h4 class="text-white">만든이</h4>
          <ul class="list-unstyled">
            <li><a  class="text-white">21700794 홍준형</a></li>
            <li><a  class="text-white">21800816 조영찬</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container">
      <a href="#" class="navbar-brand d-flex align-items-center">
              <strong>손양원RC</strong>
      </a>
      
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </div>
</header>

<main>

  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">손양원 분실물 센터</h1>
        <br>
        <p>
          <a href="add" class="btn btn-primary my-2"> 분실물 등록 </a>
        </p>
      </div>
    </div>
  </section>


  <div class="album py-5 bg-light">
    <div class="container">

      <div id = "list" class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      
      
      <c:forEach items="${list}" var="u">
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

            <div class="card-body">
              <p class="card-text">
		카테고리: ${u.category} <br> 이름: ${u.name} <br> 습득 장소: ${u.place} <br>습득 시각: ${u.find} <br>특이 사항: ${u.detail}	
			</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a href="editpost/${u.seq}">
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button></a>
                  <a href="javascript:delete_ok('${u.seq}')">
                  <button type="button" class="btn btn-sm btn-outline-secondary">Delete</button></a>
                </div>
                <small class="text-muted"><fmt:formatDate value="${u.regdate}" pattern="yyyy년 MM월 dd일 HH시 mm분" /></small>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
    </div>
  </div>

</main>

<footer class="text-muted py-5">
  <div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
  
  </div>
</footer>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      
  </body>
</html>