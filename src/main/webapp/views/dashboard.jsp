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

    <title>Time Table | Infrastructure</title>
    <link rel="icon" type="image/x-icon" href="/images.jpg">
</head>

<body>

    <aside class="left-sidebar">

        <jsp:include page="left-sidebar.jsp" />  
       
    </aside>

    <main class="main">
        <header>
            <nav class="top-navbar d-flex justify-content-xl-end justify-content-between align-items-center">
                <a href="/dashboard"><img src="/image/logo-nmims.png" alt="NMIMS LOGO"
                        class="nmims-logo-smalldevices me-auto"></a>
                <div class="navbar-logo d-none me-auto">
                    <a href="/dashboard"> <img src="/image/logo-nmims.png" class="nmims-logo"> </a>
                </div>
                <button class="me-auto left-sidebar-toggle"
                    style="border: none; outline: none; background-color: white;"><i
                        class="fa-solid fa-angles-left"></i></button>
                <ul class="top-navbar__list">
                    <li style="color: #fc6964; font-weight: bold;"><img src="/icons/admin.png" class="ps-3 pe-2">Admin
                    </li>

                    <li><a href="" class="text-dark"><img src="/icons/notification.png" alt=""> Notification</a></li>

                    <div class="btn-group">
                        <button class="btn btn-white dropdown-toggle" type="button" id="defaultDropdown"
                            data-bs-toggle="dropdown" data-bs-auto-close="true" aria-expanded="false">
                            <img src="/icons/user.png" alt=""> Hi! Admin
                        </button>
                        <ul class="dropdown-menu userprofile-dropdown-menu" aria-labelledby="defaultDropdown">
                            <li><a class="dropdown-item" href="#"><i class="fas fa-user-cog"></i> Settings</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-user-circle"></i> Manage account</a>
                            </li>
                            <li><a class="dropdown-item" href="/logout"><i class="fas fa-sign-out-alt"></i></i>
                                    Signout</a></li>
                        </ul>
                    </div>
                </ul>
                <div class="hamburger-smalldevices"><img src="/icons/HamburgerIcon.png" alt="" width="24px"
                        height="20px">
                </div>
            </nav>
        </header>

        <div class="main-content">

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
        $(document).ready(function () {

            $('#resume-call').on('click', function (e) {
                e.preventDefault();
                $('.main-content').load('/resume');
            })
        })
    </script>
</body>

</html>