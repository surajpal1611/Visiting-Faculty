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
                        <input type="search" id="search-by-name" class="form-control rounded" placeholder="Enter Name"
                            aria-label="Search" aria-describedby="search-addon" />
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

        <div class="modal fade" id="create-resume-modal" tabindex="-1" role="dialog"
            aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                        <button type="button" style="border: none;" class="modal-cancel-button" data-dismiss="modal"
                            aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="user-id">Pancard No.</label>
                            <input type="text" disabled id="user-id" class=" form-control">
                        </div>
                        <div class="form-group">
                            <label for="user-id">Enter Resume name</label>
                            <input minlength="3" type="text" id="resume-name" placeholder="Enter Resume Name"
                                class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="resume-description">Description</label>
                            <input type="text" id="resume-description" placeholder="Enter Description"
                                class="form-control">
                            <input type="hidden" id="user-lid" class="form-control">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary modal-cancel-button"
                            data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary modal-create-resume-button">Create Resume</button>
                    </div>
                </div>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
        integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
        integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
    <script src="/js/jquery.bootpag.min.js"></script>
    <script>
        $(document).ready(function () {

            let timeout = null;

            function searchFunction(value) {
                $.ajax({
                    type: 'POST',
                    url: '/get-faculty-application',
                    data: {
                        user_id: value
                    },
                    success: function (response) {
                        let data = JSON.parse(response.value)
                        console.log(data)

                        if (data.resume_details != null) {


                            let tableToAppend = `
                            <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                       
                                <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Pan Card No</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>`
                            for (let obj of data.resume_details) {
                                tableToAppend += `
                                    <tr data-userlid = "/${obj.user_lid}">
                                        <td>\${obj.f_name}</td>
                                        <td>\${obj.user_id}</td>
                                        <td>
                                            <a href="" class="application-preview" style="border:none; outline:none" >
                                            <i class="fa-solid fa-eye forwardIcon" data-toggle="tooltip" title="View Resume"></i></a>
                                            <a  class="" style="border:none; outline:none" >
                                         <i class="fa-solid fa-plus create-resume-button" data-toggle="tooltip" title="Create Resume"></i></a>
                                        </td>
                                    </tr>`
                            }

                            tableToAppend += `  </tbody>
                                                     </table>
                                                           </div> `

                            $('.table-appending-div').html(tableToAppend)
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
                    data: {
                        user_id: value
                    },
                    success: function (response) {
                        let data = JSON.parse(response.value)
                        console.log(data)


                        if (data.resume_details != null) {


                            let tableToAppend = `
                                <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                                    <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Pan Card No</th>
                                        <th>Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>`
                            for (let obj of data.resume_details) {
                                tableToAppend += `
                                        <tr data-userlid = "\${obj.user_lid}">
                                            <td>\${obj.f_name}</td>
                                            <td class="user_id">\${obj.user_id}</td>
                                            <td>
                                                <a href="" class="application-preview" style="border:none; outline:none" >
                                                <i class="fa-solid fa-eye forwardIcon" data-toggle="tooltip" title="View Resume"></i></a>
                                                <a  class="" style="border:none; outline:none" >
                                            <i class="fa-solid fa-plus create-resume-button" data-toggle="tooltip" title="Create Resume"></i></a>
                                            </td>
                                        </tr>`
                            }

                            tableToAppend += `  </tbody>
                                    </table>


                                </div>
                                                        `

                            $('.table-appending-div').html(tableToAppend)
                        }


                    },
                    error: function (error) {
                        console.log("Error");
                    }
                })
                console.log(value);
            }




            $('#search-by-id').on('keyup', function () {
                let searchByIdValue = document.getElementById('search-by-id').value
                console.log(searchByIdValue)
                if (searchByIdValue.length == 10) {

                    clearTimeout(timeout)
                    const value = this.value
                    timeout = setTimeout(() => searchFunction(value), 2000)
                }

            })


            $('#search-by-name').on('keyup', function () {

                clearTimeout(timeout)
                const value = this.value
                timeout = setTimeout(() => searchFunctionByName(value), 2000)

            })

            $(document).on('click', '.create-resume-button', function () {

                let tr = $(this).closest('tr')
                $('#user-id').val(tr.find('.user_id').html())
                $('#user-lid').val(tr.data('userlid'))
                $("#create-resume-modal").modal("toggle");

            })

            $(document).on('click', '.modal-cancel-button', function () {
                $("#create-resume-modal").modal("toggle");
            })

            $('.modal-create-resume-button').on('click', function (e) {

                e.preventDefault();
                let myForm = document.getElementById('create-resume-form');
                let formData = new FormData()

                formData.append("user_lid", document.getElementById('user-lid').value)
                formData.append("name", document.getElementById('resume-name').value)
                formData.append("description", document.getElementById('resume-description').value)

                $.ajax({
                    url: '/create-resume',
                    type: 'POST',
                    data: formData,
                    contentType: false,
                    processData: false,
                    success: function (response) {
                        console.log(response);
                    },
                    error: function (error) {
                        console.log('error', error)
                    }
                })
            })
        })
    </script>
</body>

</html>