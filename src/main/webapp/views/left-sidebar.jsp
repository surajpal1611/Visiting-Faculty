<aside class="left-sidebar">

    <div class="left-sidebar-logo">
        <a href="${pageContext.request.contextPath}/dashboard"> <img src="${pageContext.request.contextPath}/image/logo-nmims.png" class="nmims-logo"> </a>
    </div>

    <ul class="offset-list offcanvas-body sidebar-body" id="left-sidebar-accordion" >

      

    </ul>
</aside>

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/SimpleAlert.js"></script>
<script src="${pageContext.request.contextPath}/js/script.js"></script>
<script src="${pageContext.request.contextPath}/js/leftsidebartoggle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.bootpag.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script>

let list = ``

if("${role}" == "ROLE_ADMIN"){
list += `

        <a href="${pageContext.request.contextPath}/dashboard" class="offset-list-item-link">
            <li><img src="${pageContext.request.contextPath}/icons/speedometer.png" class="ps-3 pe-2"> Dashboard</li>
        </a>
        <a href="${pageContext.request.contextPath}/visiting-faculty-applications" id="resume-call" class="offset-list-item-link">
            <li><img src="${pageContext.request.contextPath}/icons/programs.png" class="ps-3 pe-2"> Resume</li>
        </a>
        
        <a href="${pageContext.request.contextPath}/faculty-reg" class="offset-list-item-link">
            <li><img src="${pageContext.request.contextPath}/icons/admin.png" class="ps-3 pe-2"> Add Faculty</li>
        </a>
        <a href="${pageContext.request.contextPath}/performa-creation" class="offset-list-item-link">
            <li><img src="${pageContext.request.contextPath}/icons/create-performa.png" style="width: 52px;"  class="ps-3 pe-2"> Create performa</li>
        </a>
        <a href="${pageContext.request.contextPath}/logout" class="offset-list-item-link">
            <li><img src="${pageContext.request.contextPath}/icons/logout.png" class="ps-3 pe-2"> Logout</li>
        </a>

`
    } else {

        list += `
        
        <a href="${pageContext.request.contextPath}/dashboard" class="offset-list-item-link">
            <li><img src="${pageContext.request.contextPath}/icons/speedometer.png" class="ps-3 pe-2"> Dashboard</li>
        </a>
        <a id="resume-call" class="offset-list-item-link view-resume-icon" style="cursor: pointer;">
            <li><img src="${pageContext.request.contextPath}/icons/programs.png" class="ps-3 pe-2"> Resume</li>
        </a>
        <a href="${pageContext.request.contextPath}/logout" class="offset-list-item-link">
            <li><img src="${pageContext.request.contextPath}/icons/logout.png" class="ps-3 pe-2"> Logout</li>
        </a>
        
        `
    }

document.getElementById('left-sidebar-accordion').innerHTML = list;

</script>