<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/login.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/simpleAlert.css">
  
    <title>Create Performa</title>
    <link rel="icon" type="image/x-icon" href="images.jpg">
</head>
<body>

    <jsp:include page="left-sidebar.jsp" />
  <main class="main">
    <jsp:include page="header.jsp" />

   <div id="performa-creation-div">
    <div class="card card-table faculty-table-body ">
        <div style="background-color: saddlebrown;"
            class="card-header table-card-header  text-uppercase d-flex align-items-center justify-content-between">
            <div class="">
                <h5>Please Fill in Details to Allot Subjects</h5>
            </div>
            <div>
                <button class="btn add-btn ms-auto" type="button"
                    id="add-moreAllottedSubjects"><i class="fas fa-plus"></i></button>
            </div>
        </div>
      
        <div class="card-body table-responsive">
            <table class="table jobfacultytable" id="">
                <thead>
                    <th>Program&nbsp;<span class="text-danger fs-5">*</span></th>
                    <th>Acad Session&nbsp;<span class="text-danger fs-5">*</span></th>
                    <!-- <th>New Subject-?&nbsp;<span class="text-danger fs-5">*</span></th> -->
                    <th>Subject&nbsp;<span class="text-danger fs-5">*</span></th>
                    <th>Date Of Commencement Of Program&nbsp;<span class="text-danger fs-5">*</span></th>
                    <th>Subject Teaching Hours&nbsp;<span class="text-danger fs-5">*</span></th>
                    <th>Rate Per Hour&nbsp;<span class="text-danger fs-5">*</span></th>
                    <th>Total No. of Hours Allotted&nbsp;<span class="text-danger fs-5">*</span></th>
                    <th>No. of Division&nbsp;<span class="text-danger fs-5">*</span></th>
                    <th>Student Count Per Division&nbsp;<span class="text-danger fs-5">*</span></th>                 
                    <th>Subject under AOL / OBE Process&nbsp;<span class="text-danger fs-5">*</span></th>                
                    <th>Action</th>               
                </thead>
    
                <tbody class="job-application-body">
                    <tr class='job-tr'>
                        <td><input class="form-control job-program" type="text"> </td>
                        <td><input class="form-control job-session" type="text"> </td>
                        <!-- <td><input class="form-control" type="text"> </td> -->
                        <td><input class="form-control job-subject" type="text"> </td>
                        <td><input class="form-control job-date" type="date"> </td>
                        <td><input class="form-control job-hours" type="text"> </td>
                        <td><input class="form-control job-rate" type="text"> </td>
                        <td><input class="form-control job-total-hours" type="text"> </td>
                        <td><input class="form-control job-division" type="text"> </td>
                        <td><input class="form-control job-count" type="text"> </td>
                        <td><select class="form-control job-process">
                                <option value="0">-Select-</option>
                                <option value="AOL">AOL</option>
                                <option value="OBL">OBE</option>
                            </select> 
                        </td>
                        <td><i class="fa-edit fa-solid"></i></i></td>
                    </tr>
                </tbody>  
                      
                             
            </table>
               <div class="d-flex justify-content-center">
                   <button id="job-application-cancel-btn" class="btn btn-danger m-4">Cancel</button>
                   <button id="job-application-submit-btn" class="btn btn-success m-4">Submit</button>
               </div>
        </div>
    </div>   
</div> 
  </main>

    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/SimpleAlert.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
    <script src="${pageContext.request.contextPath}/js/leftsidebartoggle.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.bootpag.min.js"></script>
    <script id="script-data"></script>

    <script>

    //************************************Function's for Job Application Table***************************************************

    //Job Application Table Add Button
    document.querySelector('.add-btn').addEventListener('click',function(){        
        let row = `                
                <tr class='job-tr'>
                    <td><input class="form-control job-program" type="text"> </td>
                    <td><input class="form-control job-session" type="text"> </td>
                    <!-- <td><input class="form-control" type="text"> </td> -->
                    <td><input class="form-control job-subject" type="text"> </td>
                    <td><input class="form-control job-date" type="date"> </td>
                    <td><input class="form-control job-hours" type="text"> </td>
                    <td><input class="form-control job-rate" type="text"> </td>
                    <td><input class="form-control job-total-hours" type="text"> </td>
                    <td><input class="form-control job-division" type="text"> </td>
                    <td><input class="form-control job-count" type="text"> </td>
                    <td><select class="form-control job-process">
                            <option value="0">-Select-</option>
                            <option value="AOL">AOL</option>
                            <option value="OBL">OBE</option>
                        </select> 
                    </td>
                    <td><i class="fa-edit fa-solid"></i> <i class="fa-trash fa-solid text-danger delete-row"></td>
                </tr>`

        document.querySelector('.job-application-body').insertAdjacentHTML('beforeend',row);
    });

    //Job Application remove Row Button
    document.querySelector('.faculty-table-body').addEventListener('click',function(e){
       if(e.target.classList.contains('delete-row'))
       {
           e.target.parentElement.parentElement.remove();
       }

    });

    //Job Application Cancel Button
    document.querySelector('#job-application-cancel-btn').addEventListener('click',function(){
        let confurm = confirm('Do you really want to cancel');
        if(confurm)
        {
        location.href = '${pageContext.request.contextPath}/dashboard';
        }
    })

    //Job Application Submit Button
    document.querySelector('#job-application-submit-btn').addEventListener('click',function(){
     
     let jobArrar = [];
     let jobApllicationData = document.querySelectorAll('.job-tr');
     for(let i=0 ; i<jobApllicationData.length;i++)
     {
      let program = jobApllicationData[i].querySelector('.job-program').value;
      let session = jobApllicationData[i].querySelector('.job-session').value;
      let subject = jobApllicationData[i].querySelector('.job-subject').value;
      let date = jobApllicationData[i].querySelector('.job-date').value;
      let hours = jobApllicationData[i].querySelector('.job-hours').value;
      let rate = jobApllicationData[i].querySelector('.job-rate').value;
      let totalhours = jobApllicationData[i].querySelector('.job-total-hours').value;
      let division = jobApllicationData[i].querySelector('.job-division').value;
      let count = jobApllicationData[i].querySelector('.job-count').value;
      let process = jobApllicationData[i].querySelector('.job-process').value;
      
      obj = {
        program:program,
        session:session,
        subject:subject,
        date:date,
        hours:hours,
        rate:rate,
        totalhours:totalhours,
        division:division,
        count:count,
        process:process 
      }
      jobArrar.push(obj);
     }
     console.log("Array : ",JSON.stringify(jobArrar));
    })

    </script>

</body>
</html>