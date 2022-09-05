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

            <h3 class="text-center">Search Visiting Faculty</h3>
            <div class="row px-lg-5 mx-lg-5">
                <div class="col-md-6">
                    <div class="input-group ">
                        <input type="search" class="form-control rounded" placeholder="Enter Pancard no."
                            aria-label="Search" id="search-by-id" aria-describedby="search-addon" />
                        <button type="button" class="btn btn-outline-primary faculty-search-button">search</button>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="input-group col-md-6">
                        <input type="search" id="search-by-name" class="form-control rounded"
                            placeholder="Enter Name" aria-label="Search" aria-describedby="search-addon" />
                        <button type="button" class="btn btn-outline-primary faculty-search-button">search</button>
                    </div>
                </div>
            </div>
            <hr>

            <div class="table-appending-div">

            </div>
        </div>

        <div class="modal-loader d-none" id="main-loader">
            <svg version="1.1" id="L5" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                x="0px" y="0px" viewBox="0 0 100 100" enable-background="new 0 0 0 0" xml:space="preserve">
                <circle fill="#FF4136" stroke="none" cx="6" cy="50" r="6">
                    <animateTransform attributeName="transform" dur="1s" type="translate" values="0 15 ; 0 -15; 0 15"
                        repeatCount="indefinite" begin="0.1" />
                </circle>
                <circle fill="#FF851B" stroke="none" cx="30" cy="50" r="6">
                    <animateTransform attributeName="transform" dur="1s" type="translate" values="0 10 ; 0 -10; 0 10"
                        repeatCount="indefinite" begin="0.2" />
                </circle>
                <circle fill="#FFDC00" stroke="none" cx="54" cy="50" r="6">
                    <animateTransform attributeName="transform" dur="1s" type="translate" values="0 5 ; 0 -5; 0 5"
                        repeatCount="indefinite" begin="0.3" />
                </circle>
            </svg>
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

            let timeout = null;

            function searchFunction(value) {
                $.ajax({
                    type: 'POST',
                    url: '/get-faculty-application',
                    data: {user_id : value},
                    success: function (response) {
                        let data = JSON.parse(response.value)
                        console.log(data)

                        if (data != null) {
                            $('.table-appending-div').html(JSON.stringify(data))
                        }

                    },
                    error: function (error) {
                        console.log("Error");
                    }
                })
                console.log(value);
            }
            function searchFunctionByName(value) {
                $.ajax({
                    type: 'POST',
                    url: '/get-faculty-by-name',
                    data: {user_id : value},
                    success: function (response) {
                        let data = JSON.parse(response.value)
                        console.log(data)

                    },
                    error: function (error) {
                        console.log("Error");
                    }
                })
                console.log(value);
            }

            $('#search-by-id').on('keyup', function () {

                clearTimeout(timeout)
                const value = this.value
                timeout = setTimeout(() => searchFunction(value), 2000)

            })

            $('#search-by-name').on('keyup', function () {

                clearTimeout(timeout)
                const value = this.value
                timeout = setTimeout(() => searchFunctionByNamess(value), 2000)

            })

        })
    </script>
</body>

</html>