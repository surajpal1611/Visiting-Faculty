document.querySelector('.qualification-add-button').addEventListener('click', function (){
   
    let table = `
    <div class="position-relative qualification_delete_btn d-flex" style="cursor: pointer;"> 
      <div class="container">
    <div class="row qualification-row">
     <div class="col-12 col-md-12 col-lg-6 col-sm-12">
       <div class="row p-3">
         <div class="col-md-2 ">
           <p class="h6">Title <span class="required">*</span></p>
         </div>
         <div class="col-md-10">
          <select class="form-control qualification-title">
            \${qualificationType}
           </select>
           </div>
       </div>
       <div class="row p-3">
         <div class="col-md-2 ">
           <p class="h6">Subject <span class="required">*</span></p>
         </div>
         <div class="col-md-10 "><input class="form-control qualification-subject"
             id="bachelors-degree-major-subject" type="text"></div>
       </div>
       <div class="row p-3">
         <div class="col-md-2 ">
           <p class="h6">University<span class="required">*</span></p>
         </div>
         <div class="col-md-10 "><input class="form-control qualification-university"
             id="bachelors-degree-university" type="text"></div>
       </div>
       <div class="row p-3">
         <div class="col-md-2 ">
           <p class="h6">Year of Passing <span class="required">*</span></p>
         </div>
         <div class="col-md-10 "><input class="form-control qualification-year"
             id="bachelors-degree-year-of-passing" type="text"></div>
       </div>
     
     </div>
     
     <div class="col-12 col-md-12 col-lg-6 col-sm-12">
     
       <div class="row p-3 qualification-phd-wrapper d-none">
         <div class="col-md-2 ">
           <p class="h6">Status<span class="required">*</span></p>
         </div>
         <div class="col-md-10"><select class="form-control qualification-status"
             id="qualification-status-data">
             <option value="true">Awarded</option>
             <option value="false">Persuing</option>
           </select></div>
       </div>
       <div class="row p-3">
         <div class="col-md-2">
           <p class="h6">College <span class="required">*</span></p>
         </div>
         <div class="col-md-10 "><input class="form-control qualification-college"
             id="bachelors-degree-college" type="text"></div>
       </div>
       <div class="row p-3">
         <div class="col-md-2">
           <p class="h6">Percentage<span class="required">*</span></p>
         </div>
         <div class="col-md-10"><input class="form-control qualification-percentile"
             id="bachelors-degree-percentile" type="text"></div>
       </div>
       <div class="row p-3">
         <div class="col-md-2 ">
           <p class="h6">Certificate<span class="required">*</span></p>
         </div>
         <div class="col-md-10"><input class="form-control qualification-certificate"
             onchange="this.nextElementSibling.firstElementChild.src = window.URL.createObjectURL(this.files[0])"
             type="file">
           <p hidden><img class="qualification-certificate-preview" type="hidden" alt="your image" width="100"
               height="100" style="border: 1px solid #ced4da; margin-left:100px;" /></p>
         </div>
         </div>
         </div>
         </div>
         <hr style="height: 5px;">
         </div>
         <div id="delete_btn_qualification_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_qualification_symbol">
                <i class="fa-solid fa-trash text-danger fa-2x"></i>
             </div>      
     </div>`
    
    document.querySelector('.qualification-data-insert').insertAdjacentHTML("beforeend", table);
    });
    
    document.querySelector("#qualification-cancel-insert").addEventListener('click', function () {
        document.getElementById('body').classList.remove('d-none');
        document.querySelector('.qualification-modal-insert').classList.add('d-none');
    });

    qualificationID = 0;
    qualificationModalID = 0;

    document.querySelector("#qualification-submit-insert").addEventListener('click', function (e) {
      e.preventDefault()

      let qualificatonModal = ''
      let div = ''
      let qualificationTableArray = []
      let qualificationRow = document.querySelectorAll('.qualification-row')
      for (i = 0; i < qualificationRow.length; i++) {

        //to remove the red border
        qualificationRow[i].querySelector('.qualification-subject').classList.remove('input-border');
        qualificationRow[i].querySelector('.qualification-university').classList.remove('input-border');
        qualificationRow[i].querySelector('.qualification-college').classList.remove('input-border');
        qualificationRow[i].querySelector('.qualification-percentile').classList.remove('input-border');
        qualificationRow[i].querySelector('.qualification-year').classList.remove('input-border');
        qualificationRow[i].querySelector('.qualification-certificate').classList.remove('input-border');

        let resume_qualification_lid = qualificationRow[i].dataset.lid
        let qualificationTitle = qualificationRow[i].querySelector('.qualification-title').value;
        let qualificationSubject = qualificationRow[i].querySelector('.qualification-subject').value;
        let qualificationUniversity = qualificationRow[i].querySelector('.qualification-university').value;
        let qualificationCollege = qualificationRow[i].querySelector('.qualification-college').value;
        let qualificationStatus = qualificationRow[i].querySelector('.qualification-status').value;
        let qualificationPercentile = qualificationRow[i].querySelector('.qualification-percentile').value;
        let qualificationYear = qualificationRow[i].querySelector('.qualification-year').value;
        let qualificationCertificate = qualificationRow[i].querySelector('.qualification-certificate').value;
        // let qualificationCertificateImage = qualificationRow[i].querySelector('#qualification-certificate-preview').src;

        let checkSubject = tabledatacheck(qualificationSubject);
        let checkUniversity = tabledatacheck(qualificationUniversity);
        let checkCollege = tabledatacheck(qualificationCollege);
        let checkYearOfPassing = qualificationDetailYearOfPassingValidation(qualificationYear);
        let checkCertificate = tabledatacheck(qualificationCertificate);
        let checkPercentile = qualificationDetailPercentageValidation(qualificationPercentile);
        // let checkCancelledCheque = qualificationDetailCertificateValidation(qualificationCertificate);

        // console.log(qualificationCertificateImage)
        console.log(checkPercentile)
        // console.log(checkSubject)

        let qualificationCertificateSRC = qualificationRow[i].querySelector('.qualification-certificate-preview')
          .src
        //  to add the red border according to validations
        if (checkSubject == false) {
          qualificationRow[i].querySelector('.qualification-subject').classList.add('input-border');
          return;
        } else if (checkUniversity == false) {
          qualificationRow[i].querySelector('.qualification-university').classList.add('input-border');
          return;
        } else if (checkCollege == false) {
          qualificationRow[i].querySelector('.qualification-college').classList.add('input-border');
          return;
        } else if (checkYearOfPassing == false) {
          qualificationRow[i].querySelector('.qualification-year').classList.add('input-border');
          return;
        } else if (checkPercentile == false) {
          qualificationRow[i].querySelector('.qualification-percentile').classList.add('input-border');
          return;
        } else if (checkCertificate == false) {
          qualificationRow[i].querySelector('.qualification-certificate').classList.add('input-border');
          return;
        }



        let qualificationTitle1 = ""
        let qualification_type = 0;
        if (qualificationTitle == "bachelor") {
          qualificationTitle1 = "Bachelor's Degree"
          qualification_type = 1
        } else if (qualificationTitle == "master") {
          qualificationTitle1 = "Master's Degree"
          qualification_type = 2
        } else if (qualificationTitle == "phd") {
          qualificationTitle1 = "PHD"
          qualification_type = 3
        }
        console.log(qualificationTitle)
        console.log(qualification_type)

        let qualificationvalue = false;
        if (qualificationStatus == 'true') {
          qualificationvalue = true
        }


        let photoArray = []

        let qualificationCertificateInput = qualificationRow[i].querySelector('.qualification-certificate').files[0]
        if (qualificationCertificateInput) {
          let filereader = new FileReader();
          filereader.readAsDataURL(qualificationCertificateInput);
          filereader.onload = function (evt) {
            let qualificationPhotoBase64 = evt.target.result;
            photoArray[i] = qualificationPhotoBase64
          }
        }


        setTimeout(function () {

          object = {
            resume_lid: 1,
            resume_qualification_lid: resume_qualification_lid,
            qualification_type_lid: qualification_type,
            topic_of_study: qualificationSubject,
            university: qualificationUniversity,
            institute: qualificationCollege,
            status: qualificationvalue,
            percentile: Number.parseFloat(qualificationPercentile),
            year_of_passing: qualificationYear,
            url_path: photoArray[i]

          }



          div += ` 
          <div class="text-block right qualification-update" >
                  <div class="card-body">
                    <h2 id="year-of-passing">\${qualificationYear}\</h2>

                    <div id="qualification-display-div" class=" px-3 px-sm-4 px-lg-4 mt-1">
                      <div class="row">

                        <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                          <div class="row pt-lg-3">
                            <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                              <p class="h5 pb-1">Title :</p>
                              <p class="h5 py-1">Major Subject :</p>
                              <p class="h5 py-1">University :</p>
                            </div>
                            <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                              <p id="">\${qualificationTitle1}\</p>
                              <p id="">\${qualificationSubject}\</p>
                              <p id="">\${qualificationUniversity}\</p>
                            </div>
                          </div>
                        </div>

                        <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                          <div class="row pt-lg-3">
                            <div class="col-6 ps-lg-5 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                              <p class="h5 pb-1">College :</p>
                              <p class="h5 py-1">percentage :</p>
                              <p class="h5 py-1">Certificate :</p>
                            </div>
                            <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                              <p class="" id="">\${qualificationCollege}\</p>
                              <p id="" class="">\${qualificationPercentile}\</p>
                              <p ><i id="qualification-certificate-display" data-image = "\${qualificationCertificateSRC}" class="fa-solid fa-image text-success qualification-certificate-display"></i></p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                  `



          qualificationTableArray.push(object)
        }, 1000)
      }
      setTimeout(function () {

        let qualificationTableData = {
          "qualificationDetails": qualificationTableArray
        }
        console.log(JSON.stringify(qualificationTableData))

        let options = {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json;charset=utf-8'
          },
          body: JSON.stringify(qualificationTableData)
        }
        let fetchRes = fetch('/insert-qualification-details', options);
        fetchRes.then(success => {
          if (success.status == 200) {
            document.getElementById('qualification-list').firstElementChild.remove()
            document.getElementById('qualification-list').insertAdjacentHTML('beforeend', div)
            document.getElementById('body').classList.remove('d-none');
            document.querySelector('.qualification-modal').classList.add('d-none');
          } else {
            alert('Check Qualification details');
          }
        })
      }, 1000)


    });

    document.querySelector('.qualification-data').addEventListener('change', function (e) {
      let target = e.target;
      if (target.classList.contains('qualification-title')) {
        let closestParent = findClosest(e.target, 'qualification-row').querySelector('.qualification-phd-wrapper');
        if (target.value === 'phd') {
          closestParent.classList.remove('d-none');
        } else {
          closestParent.classList.add('d-none');
        }

      }
    });