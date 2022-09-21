<!-- <aside class="left-sidebar">

    <div class="left-sidebar-logo">
        <a href="${pageContext.request.contextPath}/dashboard"> <img src="${pageContext.request.contextPath}/image/logo-nmims.png" class="nmims-logo"> </a>
    </div>

    <ul class="offset-list offcanvas-body sidebar-body" id="left-sidebar-accordion">

        <a href="${pageContext.request.contextPath}/dashboard" class="offset-list-item-link">
            <li><img src="${pageContext.request.contextPath}/icons/speedometer.png" class="ps-3 pe-2"> Dashboard</li>
        </a>
        <a id="resume-call" class="offset-list-item-link view-resume-icon" style="cursor: pointer;">
            <li><img src="${pageContext.request.contextPath}/icons/programs.png" class="ps-3 pe-2"> Resume</li>
        </a>

        <a href="${pageContext.request.contextPath}/logout" class="offset-list-item-link">
            <li><img src="${pageContext.request.contextPath}/icons/logout.png" class="ps-3 pe-2"> Logout</li>
        </a>

    </ul>
</aside>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/SimpleAlert.js"></script>
<script src="${pageContext.request.contextPath}/js/script.js"></script>
<script src="${pageContext.request.contextPath}/js/leftsidebartoggle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.bootpag.min.js"></script>
<script>
    
    $(document).on('click', '.view-resume-icon', function (e) {

$("#view-resume-modal").modal("toggle");
let tr = $(this).closest('tr')
let id = tr.data('userlid')
$.ajax({
    url: '${pageContext.request.contextPath}/get-resume-by-user?user_id=${user_lid}',
    type: 'POST',
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
                    <th>Resume Name</th>
                    <th>Resume Description</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>`
            for (let obj of data.resume_details) {
                console.log(obj.id)
                tableToAppend += `
                <tr>
                    <td>\${obj.name}</td>
                    <td class="user_id">\${obj.description}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/view-resume?resume_lid=\${obj.id}" class="application-preview" style="border:none; outline:none" >
                        <i class="fa-solid fa-eye get-resume-icon" data-toggle="tooltip" title="View Resume"></i></a>
                        <a  class="" style="border:none; outline:none" >
                        <a href="${pageContext.request.contextPath}/resume?resume_lid=\${obj.id}" class="application-preview" style="border:none; outline:none" >
                        <i class="fa-solid fa-edit get-resume-icon" data-toggle="tooltip" title="View Resume"></i></a>
                        <a  class="" style="border:none; outline:none" >
                    </td>
                </tr>`
            }

            tableToAppend += `  </tbody>
                         </table>
                    </div>
       `
            document.querySelector('.modal2-body').innerHTML = ""
            $('.modal2-body').html(tableToAppend)
        } else {
            alert("Data Not Found!!")
        }
    },
    error: function (error) {

        console.log("error", error)
    }
})
    
$(document).on('click', '.modal2-cancel-button', function () {
                $("#view-resume-modal").modal("toggle");
            })
})

</script> -->