<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>분실물 등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

</style>
<body class="bg-light">
	<main>
	<div class="container">
    <div class="py-5 text-center">
    <img class="mb-4" src="https://admissions.handong.edu/site/handong-adm/res/img/sub_sonyw01.png" width="120" height="90">
      <h2>손양원RC 분실물 센터</h2>
    </div>


      <div width="90%">
        <h4 class="mb-3">분실물</h4>
        <form class="needs-validation" action="addok" method="post" enctype="multipart/form-data">
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="category" class="form-label">카테고리</label>
              <input type="text" class="form-control" name="category" id="category">
              <div class="invalid-feedback">
                Category is required.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="name" class="form-label">분실물</label>
              <input type="text" class="form-control" name="name" id="name">
              <div class="invalid-feedback">
                Name is required.
              </div>
            </div>

            <div class="col-12">
              <label for="place" class="form-label">장소</label>
              <input type="text" class="form-control" name="place" id="place" placeholder="벧엘관 2층 휴게실">
              <div class="invalid-feedback">
                Please enter the place where you found the lost item.
              </div>
            </div>
            
            <div class="col-12">
              <label for="photo" class="form-label">사진</label>
              <input type="file" class="form-control" value="">
            </div> 
            
            <div class="col-12">
              <label for="find" class="form-label">습득 시간</label>
              <input type="text" class="form-control" name="find" id="find" placeholder="2021/12/09 12">
              <div class="invalid-feedback">
                Please enter the time when you found the lost item.
              </div>
            </div>
            
            <div class="col-12">
              <label for="detail" class="form-label">특이 사항</label>
              <textarea cols="50" rows="5" class="form-control" name="detail" id="detail" ></textarea>
              <div class="invalid-feedback">
                Please enter the time when you found the lost item.
              </div>
            </div>

        <button class="w-100 btn btn-primary btn-lg" type="submit">등록</button>
        </form>
      </div>
    </div>
	</main>

</body>
</html>