<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />
    <link rel="stylesheet" href="./login.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="./simpleAlert.css">

    <title>Dashboard</title>
    <link rel="icon" type="image/x-icon" href="/images.jpg">
</head>

<body>


    <jsp:include page="left-sidebar.jsp" />



    <main class="main">
        <jsp:include page="header.jsp" />

        <div class="main-content">
            <jsp:include page="admin-dashboard.jsp" />

            <div class="container" id="visiting-form-div">
                <h3 class="text-center py-4">Visiting Faculty Application</h3>
                <form id="search-faculty-form">
                    <div class="form-group">
                        <label for="search-by-id" class="h6">Search by pancard no.</label>
                        <input type="text" id="search-by-id" class="form-control">
                    </div>
                    <h1 class="dashedOr">OR</h1>
                    <div class="form-group">
                        <label for="search-by-name" class="h6">Search by Name</label>
                        <input type="text" id="search-by-name" class="form-control">
                    </div>
                    <div class="text-center pt-4">
                        <input type="button" class="btn btn-danger" value="Search">
                    </div>
                </form>
            </div>

        </div>
    </main>
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.bundle.min.js"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/2.3.0/socket.io.dev.js"></script>
    <!-- <script src="/js/session-timeout.js"></script> -->
    <script src="/js/SimpleAlert.js"></script>
    <script src="/js/script.js"></script>
    <script src="/js/leftsidebartoggle.js"></script>
    <script src="/js/ajaxApi.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
    <script src="/js/jquery.bootpag.min.js"></script>
    <script>

    </script>
</body>

</html>