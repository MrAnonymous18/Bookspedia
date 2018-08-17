<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Bookspedia | ${title}</title>

<script type="text/javascript">
	window.menu = '${title}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myStyle.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">
		<!-- navbar -->
		<%@include file="/WEB-INF/views/templates/navbar.jsp"%>

		<!-- page content -->
		<div class="content">
			<c:if test="${userClickHome==true}">
				<%@ include file="home.jsp"%>
			</c:if>

			<c:if test="${userClickAbout==true}">
				<%@ include file="about.jsp"%>
			</c:if>

			<c:if test="${userClickContact==true}">
				<%@ include file="contact.jsp"%>
			</c:if>
			
			<c:if test="${userClickAllProducts==true or userClickCategoryProducts == true}">
				<%@ include file="listProducts.jsp"%>
			</c:if>
		</div>
		<!-- footer -->
		<%@include file="/WEB-INF/views/templates/footer.jsp"%>


		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.min.js"></script>
		<script src="${js}/myScript.js"></script>
		<script src="${js}/bootstrap.bundle.min.js"></script>
	</div>
</body>

</html>