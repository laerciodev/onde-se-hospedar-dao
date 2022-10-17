<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="Hotels" scope="request" type="java.util.ArrayList<br.com.masters3.model.Hotel>" />
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./assets/css/reset.css">
  <link rel="stylesheet" href="./assets/css/styles.css">
  <title>Projeto Gulliver - Onde se hospedar</title>
</head>
<body>
<body>
  <header class="header">
    <section class="login-area">
      <li><a class="anchor" href="#">Login</a></li>
      <svg class="login-icon" width="52" height="46" viewBox="0 0 52 46" fill="none" xmlns="http://www.w3.org/2000/svg">
        <g clip-path="url(#clip0_138_332)">
        <path d="M35.7471 17.25C35.7471 19.5375 34.7295 21.7313 32.9183 23.3488C31.107 24.9663 28.6504 25.875 26.0889 25.875C23.5274 25.875 21.0708 24.9663 19.2595 23.3488C17.4482 21.7313 16.4307 19.5375 16.4307 17.25C16.4307 14.9625 17.4482 12.7687 19.2595 11.1512C21.0708 9.5337 23.5274 8.625 26.0889 8.625C28.6504 8.625 31.107 9.5337 32.9183 11.1512C34.7295 12.7687 35.7471 14.9625 35.7471 17.25Z" fill="#CFEDF2"/>
        <path fill-rule="evenodd" clip-rule="evenodd" d="M0.333496 23C0.333496 16.9 3.04698 11.0499 7.87702 6.73654C12.7071 2.42321 19.258 0 26.0887 0C32.9194 0 39.4704 2.42321 44.3004 6.73654C49.1304 11.0499 51.8439 16.9 51.8439 23C51.8439 29.1 49.1304 34.9501 44.3004 39.2635C39.4704 43.5768 32.9194 46 26.0887 46C19.258 46 12.7071 43.5768 7.87702 39.2635C3.04698 34.9501 0.333496 29.1 0.333496 23ZM26.0887 2.875C21.8448 2.8752 17.6872 3.94554 14.0945 5.96283C10.5018 7.98012 7.61991 10.8624 5.78061 14.2778C3.9413 17.6933 3.21932 21.5031 3.69777 25.2688C4.17621 29.0346 5.83562 32.6031 8.48502 35.5638C10.7708 32.2747 15.8027 28.75 26.0887 28.75C36.3747 28.75 41.4034 32.2719 43.6924 35.5638C46.3418 32.6031 48.0012 29.0346 48.4796 25.2688C48.9581 21.5031 48.2361 17.6933 46.3968 14.2778C44.5575 10.8624 41.6756 7.98012 38.0829 5.96283C34.4902 3.94554 30.3326 2.8752 26.0887 2.875Z" fill="#CFEDF2"/>
        </g>
        <defs>
        <clipPath id="clip0_138_332">
        <rect width="51.5104" height="46" fill="white" transform="translate(0.333496)"/>
        </clipPath>
        </defs>
      </svg>          
    </section>
  </header>
  <main class="main">
    <div class="container-logo">
      <img class="logo" src="./assets/img/logo.png" alt="">
      <div class="overlay"></div>
      <span class="title">Onde se hospedar</span>
    </div>
  </main>
  <div class="hotels-container">
  	<c:forEach items="${Hotels}" var="hotel">
      <div class="hotel-container">
      <img class="hotel-image" src="<c:out value="${hotel.imagePath}" />" alt="Entrada do hotel Blue Tree com escadas e vidros espelhados">
      <h3 class="hotel-title"><c:out value="${hotel.name}" /></h3>
      <div id="<c:out value="rating-${hotel.ratingId}"/>" class="rating"></div>
      <a class="more-info" href="/OndeSeHospedar/hotel?id=<c:out value="${hotel.id}" />">Saiba mais</a>
    </div>
		
    </c:forEach>
  </div>
  <script type="module" src="./assets/js/rating-hotel.js"></script>
</body>
</html>