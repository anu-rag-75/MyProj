<%@include file="/WEB-INF/views/template/header.jsp" %>
<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
     
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image"
             src="<c:url value="/resources/images/colla.jpg" />"
             alt="First slide">
        </div>
      </div>
    </div>
<!-- /.carousel -->




<%@include file="/WEB-INF/views/template/footer.jsp" %>

