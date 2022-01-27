<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.my.mmy.lost.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>분실물 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/checkout/">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="form-validation.css" rel="stylesheet">
</head>
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
<body class="bg-light">
	<main>
	<div class="container">
    <div class="py-5 text-center">
    <img class="mb-4" src="https://admissions.handong.edu/site/handong-adm/res/img/sub_sonyw01.png" alt="" width="120" height="90">
      <h2>손양원RC 분실물 센터</h2>
    </div>

      <div width="100%">
        <h4 class="mb-3">분실물</h4>
        <form:form commandName="lostVO" class="needs-validation" method="post" action="../editok" enctype="multipart/form-data">
        <form:hidden path="seq" />
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="category" class="form-label">카테고리</label>
              <form:input type="text" class="form-control" path="category" />
              <div class="invalid-feedback">
                Category is required.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="name" class="form-label">분실물</label>
              <form:input type="text" class="form-control" path="name"  />
              <div class="invalid-feedback">
                Name is required.
              </div>
            </div>

            <div class="col-12">
              <label for="place" class="form-label">장소</label>
              <form:input type="text" class="form-control" path="place"  />
              <div class="invalid-feedback">
                Please enter the place where you found the lost item.
              </div>
            </div>
            
            <div class="col-12">
              <label for="photo" class="form-label">사진</label>
              <form:input type="file" class="form-control" path="" />
            </div> 
            
            <div class="col-12">
              <label for="find" class="form-label">습득 시간</label>
              <form:input type="text" class="form-control" path="find" />
              <div class="invalid-feedback">
                Please enter the time when you found the lost item.
              </div>
            </div>
            
            <div class="col-12">
              <label for="detail" class="form-label">특이 사항</label>
              <form:textarea cols="50" rows="5" class="form-control" path="detail" ></form:textarea>
              <div class="invalid-feedback">
                Please enter the time when you found the lost item.
              </div>
            </div>

   
          <button class="w-100 btn btn-primary btn-lg" type="submit">등록</button>
        </form:form>
      </div>
    </div>
	</main>
</body>
</html>