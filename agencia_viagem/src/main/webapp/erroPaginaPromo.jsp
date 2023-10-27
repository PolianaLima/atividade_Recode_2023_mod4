<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 11/10/2023
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="jslt" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login de Usuario</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="assets/css/globalSite.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">



</head>
<body>
<header>
    <jsp:include page="component/menuSite.jsp"/>
</header>

<main class="container" style="height: 76vh">
    <div class="w-100 mb-5">
        <img class="w-100" src="assets/img/banner_page_promo.jpg">
    </div>

    <div class="mt-5">
        <img width="48" height="48" src="https://img.icons8.com/emoji/48/face-with-open-eyes-and-hand-over-mouth-emoji.png" alt="face-with-open-eyes-and-hand-over-mouth-emoji"/>
        <p class="text-secondary fs-5 fst-italic">No momento não temos promoções disponivéis, em breve teremos muitas promoções para você!</p>
    </div>

    </div>
</main>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>

</body>
</html>