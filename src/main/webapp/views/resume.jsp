<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />
  <link rel="stylesheet" href="./style.css" />
  <link rel="stylesheet" href="./login.css" />
  <link rel="stylesheet" href="./simpleAlert.css">

  <title>Resume</title>
  <link rel="icon" type="image/x-icon" href="/images.jpg">
</head>

<body>
  <!-- id(body) of this div is used to hide as well as unhide the resume -->
  <jsp:include page="left-sidebar.jsp" />
  <main class="main">
    <jsp:include page="header.jsp" />

    <div id="body" class="container">


    </div>

    <!-- ************************************************************************Personal Details Modal Div******************************************************************************************** -->
    <!-- Personal details Model for Update -->
    <div class="personal-details-modal d-none">
      <div id="main-form-area">

        <form id="myForm">
          <div class="d-flex justify-content-center align-items-center">
            <h1 class="p-5" style="color: #740E00;"><b> Personal Details</b></h1>
          </div>

          <div class="container">
            <div id="name-row" class="row mb-3">

              <div class="col-md-4 col-sm-12">
                <div class="form-group">
                  <label for="first-name" cl>First Name <span class="required">*</span></label>
                  <span id="first-name-message" style="color: red;" class="error"></span>
                  <input type="text" class="form-control" name="f_name" id="first-name" placeholder="First Name">
                </div>
              </div>


              <div class="col-md-4">
                <div class="form-group">
                  <label for="last-name">last Name <span class="required">*</span></label>
                  <span id="last-name-message" style="color: red;" class="error"></span>
                  <input type="text" class="form-control" name="l_name" id="last-name" placeholder="Last Name">

                </div>
              </div>

              <div class="col-md-4 col-sm-12">
                <div class="form-group">
                  <img id="photo-preview" alt="your image" name="photo_preview" width="100" height="100"
                    style="border: 1px solid #ced4da; margin-left:100px;" />
                </div>
              </div>
            </div>
          </div>

          <div class="container">
            <div id="left-second-row" class="row">

              <div class="col-md-4 col-sm-12">
                <div class="form-group">
                  <label for="date-of-birth">date of birth <span class="required">*</span></label>
                  <span id="date-of-birth-message" style="color: red;" class="error"></span>
                  <input type="date" class="form-control" name="date_of_birth" id="date-of-birth" />
                </div>
              </div>

              <div id="gender-row" class="col-md-4 col-sm-12">
                <div class="form-group">
                  <label for="date-of-birth">Gender<span class="required">*</span></label><br>
                  <label class="radio-inline">Male<input type="radio" name="gender" class="gender ms-1" id="male"
                      value="1" /></label>
                  <label class="radio-inline">Female<input type="radio" name="gender" class="gender ms-1" id="female"
                      value="2" /></label>
                  <label class="radio-inline">Other<input type="radio" name="gender" class="gender ms-1" id="other"
                      value="3" /></label>
                </div>
              </div>
              <div class="col-md-4 col-sm-12">
                <label for="photo">passport Size Photo <span class="required">*</span></label>
                <span id="photo-message" style="color: red;" class="error"></span>
                <input type="file" class="form-control" id="photo" name="profile_photo"
                  onchange="document.getElementById('photo-preview').src = window.URL.createObjectURL(this.files[0])">
              </div>

            </div>
          </div>

          <div class="container">
            <div id="left-third-row" class="row">
              <div class="col-md-3 col-sm-12">
                <label for="contact-number">Contact No. <span class="required">*</span></label>
                <span id="contact-number-message" style="color: red;" class="error"></span>
                <input type="text" class="form-control" name="contact_number" id="contact-number" />
              </div>
              <div class="col-md-3 col-sm-12">
                <label for="temp_contact-number">Secondary Contact No.</label>
                <span id="temporary-contact-number-message" style="color: red;" class="error"></span>
                <input type="text" class="form-control" name="temp_contact_number" id="temp_contact-number" />
              </div>
              <div class="col-md-3 col-sm-12">
                <label for="email">Email Id <span class="required">*</span></label>
                <span id="email-message" style="color: red;" class="error"></span>
                <input type="text" name="email" class="form-control" id="email">
              </div>
              <div class="col-md-3 col-sm-12">
                <label for="temp_email">Secondary Email</label>
                <span id="temp-email-message" style="color: red;" class="error"></span>
                <input type="text" name="temp_email" class="form-control" id="temp_email">
              </div>
            </div>
          </div>

          <div class="container">
            <div id="left-fourth-row" class="row">
              <div class="col-md-6 col-sm-12">
                <label for="address">Permanent Address <span class="required">*</span></label>
                <span id="address-message" style="color: red;" class="error"></span>
                <input type="text" class="form-control" name="permanent_address" id="address" />
              </div>
              <div class="col-md-3 col-sm-12">
                <label for="city">City <span class="required">*</span></label>
                <span id="city-message" style="color: red;" class="error"></span>
                <input type="text" class="form-control" name="permanent_address_city" id="city" />
              </div>
              <div class="col-md-3 col-sm-12">
                <label for="pincode">Pincode <span class="required">*</span></label>
                <span id="pincode-message" style="color: red;" class="error"></span>
                <input type="text" class="form-control" name="permanent_address_pincode" id="pincode" />
              </div>
            </div>
          </div>

          <div class="container">
            <div id="left-fourth-row" class="row">
              <div class="col-md-8 col-sm-12">
                <label for="temporary-address">Temporary Address</label>
                <span id="temporary-address-message" style="color: red;" class="error"></span>
                <input type="text" name="temporary_address" class="form-control" id="temporary-address">
              </div>
              <div class="col-md-4 col-sm-12">
                <label for="country">Country <span class="required">*</span></label>
                <span id="country-message" style="color: red;" class="error"></span>
                <input type="text" name="nationality" class="form-control" id="country">
              </div>
            </div>
          </div>

          <div class="container">
            <div id="left-fourth-row" class="row">
              <div class="col-md-4 col-sm-12">
                <label for="pan-number">Pan Card Number <span class="required">*</span></label>
                <span id="pan-number-message" style="color: red;" class="error"></span>
                <input type="text" name="pan_number" value="${user_id}" disabled class="form-control" id="pan-number" />
              </div>
              <div class="col-md-4 col-sm-12">
                <label for="pan-photo">Pan Card Photo <span class="required">*</span></label>
                <span id="pan-photo-message" style="color: red;" class="error"></span>
                <input type="file" class="form-control" id="pan-photo"
                  onchange="document.getElementById('pan-photo-preview').src = window.URL.createObjectURL(this.files[0])">
              </div>
              <div class="col-md-4 col-sm-12">
                <img id="pan-photo-preview" alt="your image" width="100" height="100"
                  style="border: 1px solid #ced4da; margin-left:100px;" />

              </div>
            </div>
          </div>

          <div class="container">
            <div id="left-fourth-row" class="row">
              <div class="col-md-4 col-sm-12">
                <label for="aadhar-number">Aadhar Card Number <span class="required">*</span></label>
                <span id="aadhar-number-message" style="color: red;" class="error"></span>
                <input type="text" class="form-control" name="aadhar_number" id="aadhar-number" />
              </div>

              <div class="col-md-4 col-sm-12">
                <label for="aadhar-photo">Aadhar Card Photo <span class="required">*</span></label>
                <span id="aadhar-photo-message" style="color: red;" class="error"></span>
                <input type="file" class="form-control" id="aadhar-photo"
                  onchange="document.getElementById('aadhar-photo-preview-1').src = window.URL.createObjectURL(this.files[0])">
              </div>
              <div class="col-md-4 col-sm-12">
                <img id="aadhar-photo-preview-1" alt="your image" width="100" height="100"
                  style="border: 1px solid #ced4da; margin-left:100px;" />

              </div>
            </div>
          </div>

          <div class="d-flex justify-content-center py-3">
            <button id="personal-details-cancel-button" class="btn btn-danger m-4">Cancel</button>
            <button id="personal-details-submit-button" class="btn btn-success m-4">Submit</button>
          </div>

        </form>

      </div>
    </div>
    </div>


    <!-- Personal details Model for insert -->
    <div class="personal-details-modal-insert d-none">
      <div id="main-form-area">

        <form id="insert-form">
          <div class="d-flex justify-content-center align-items-center">
            <h1 class="p-5" style="color: #740E00;"><b> Personal Details</b></h1>
          </div>

          <div class="container">
            <div id="name-row" class="row mb-3">

              <div class="col-md-4 col-sm-12">
                <div class="form-group">
                  <label for="first-name" cl>First Name <span class="required">*</span></label>
                  <span id="first-name-message-insert" style="color: red;" class="error"></span>
                  <input type="text" class="form-control" name="f_name_insert" id="first-name-insert"
                    placeholder="First Name">
                </div>
              </div>


              <div class="col-md-4">
                <div class="form-group">
                  <label for="last-name">last Name <span class="required">*</span></label>
                  <span id="last-name-message-insert" style="color: red;" class="error"></span>
                  <input type="text" class="form-control" name="l_name_insert" id="last-name-insert"
                    placeholder="Last Name">

                </div>
              </div>

              <div class="col-md-4 col-sm-12">
                <div class="form-group">
                  <img id="photo-preview_insert" alt="your image" name="photo_preview_insert" width="100" height="100"
                    style="border: 1px solid #ced4da; margin-left:100px;" />
                </div>
              </div>
            </div>
          </div>

          <div class="container">
            <div id="left-second-row" class="row">

              <div class="col-md-4 col-sm-12">
                <div class="form-group">
                  <label for="date-of-birth">date of birth <span class="required">*</span></label>
                  <span id="date-of-birth-message-insert" style="color: red;" class="error"></span>
                  <input type="date" class="form-control" name="date_of_birth_insert" id="date-of-birth-insert" />
                </div>
              </div>

              <div id="gender-row-insert" class="col-md-4 col-sm-12">
                <div class="form-group">
                  <label for="date-of-birth">Gender<span id="gender-message-insert" class="required">*</span></label><br>
                  <label class="radio-inline">Male<input type="radio" name="gender_insert" class="gender ms-1" id="male"
                      value="1" /></label>
                  <label class="radio-inline">Female<input type="radio" name="gender_insert" class="gender ms-1"
                      id="female" value="2" /></label>
                  <label class="radio-inline">Other<input type="radio" name="gender_insert" class="gender ms-1"
                      id="other" value="3" /></label>
                </div>
              </div>

              <div class="col-md-4 col-sm-12">
                <label for="photo">passport Size Photo <span class="required">*</span></label>
                <span id="photo-message-insert" style="color: red;" class="error"></span>
                <input type="file" class="form-control" id="photo-insert" name="profile_photo_insert"
                  onchange="document.getElementById('photo-preview_insert').src = window.URL.createObjectURL(this.files[0])">
              </div>

            </div>
          </div>

          <div class="container">
            <div id="left-third-row" class="row">
              <div class="col-md-3 col-sm-12">
                <label for="contact-number">Contact No. <span class="required">*</span></label>
                <span id="contact-number-message-insert" style="color: red;" class="error"></span>
                <input type="text" class="form-control" name="contact_number_insert" id="contact-number-insert" />
              </div>
              <div class="col-md-3 col-sm-12">
                <label for="temp_contact-number">Secondary Contact No.</label>
                <span id="temporary-contact-number-message-insert" style="color: red;" class="error"></span>
                <input type="text" class="form-control" name="temp_contact_number_insert"
                  id="temp_contact-number-insert" />
              </div>
              <div class="col-md-3 col-sm-12">
                <label for="email">Email Id <span class="required">*</span></label>
                <span id="email-message-insert" style="color: red;" class="error"></span>
                <input type="text" name="email_insert" class="form-control" id="email-insert">
              </div>
              <div class="col-md-3 col-sm-12">
                <label for="temp_email">Secondary Email</label>
                <span id="temp-email-message-insert" style="color: red;" class="error"></span>
                <input type="text" name="temp_email_insert" class="form-control" id="temp_email-insert">
              </div>
            </div>
          </div>

          <div class="container">
            <div id="left-fourth-row" class="row">
              <div class="col-md-6 col-sm-12">
                <label for="address">Permanent Address <span class="required">*</span></label>
                <span id="address-message-insert" style="color: red;" class="error"></span>
                <input type="text" class="form-control" name="permanent_address_insert" id="address-insert" />
              </div>
              <div class="col-md-3 col-sm-12">
                <label for="city">City <span class="required">*</span></label>
                <span id="city-message-insert" style="color: red;" class="error"></span>
                <input type="text" class="form-control" name="permanent_address_city_insert" id="city-insert" />
              </div>
              <div class="col-md-3 col-sm-12">
                <label for="pincode">Pincode <span class="required">*</span></label>
                <span id="pincode-message-insert" style="color: red;" class="error"></span>
                <input type="text" class="form-control" name="permanent_address_pincode_insert" id="pincode-insert" />
              </div>
            </div>
          </div>

          <div class="container">
            <div id="left-fourth-row" class="row">
              <div class="col-md-8 col-sm-12">
                <label for="temporary-address">Temporary Address</label>
                <span id="temporary-address-message-insert" style="color: red;" class="error"></span>
                <input type="text" name="temporary_address_insert" class="form-control" id="temporary-address-insert">
              </div>
              <div class="col-md-4 col-sm-12">
                <label for="country">Country <span class="required">*</span></label>
                <span id="country-message-insert" style="color: red;" class="error"></span>
                <input type="text" name="nationality_insert" class="form-control" id="country-insert">
              </div>
            </div>
          </div>

          <div class="container">
            <div id="left-fourth-row" class="row">
              <div class="col-md-4 col-sm-12">
                <label for="pan-number">Pan Card Number <span class="required">*</span></label>
                <span id="pan-number-message-insert" style="color: red;" class="error"></span>
                <input type="text" name="pan_number_insert" value="${user_id}" disabled class="form-control"
                  id="pan-number-insert" />
              </div>

              <div class="col-md-4 col-sm-12">
                <label for="pan-photo">Pan Card Photo <span class="required">*</span></label>
                <span id="pan-photo-message-insert" style="color: red;" class="error"></span>
                <input type="file" class="form-control" id="pan-photo-insert"
                  onchange="document.getElementById('pan-photo-preview-insert').src = window.URL.createObjectURL(this.files[0])">
              </div>
              <div class="col-md-4 col-sm-12">
                <img id="pan-photo-preview-insert" alt="your image" width="100" height="100"
                  style="border: 1px solid #ced4da; margin-left:100px;" />

              </div>
            </div>
          </div>

          <div class="container">
            <div id="left-fourth-row" class="row">
              <div class="col-md-4 col-sm-12">
                <label for="aadhar-number">Aadhar Card Number <span class="required">*</span></label>
                <span id="aadhar-number-message-insert" style="color: red;" class="error"></span>
                <input type="text" class="form-control" name="aadhar_number_insert" id="aadhar-number-insert" />
              </div>

              <div class="col-md-4 col-sm-12">
                <label for="aadhar-photo">Aadhar Card Photo <span class="required">*</span></label>
                <span id="aadhar-photo-message-insert" style="color: red;" class="error"></span>
                <input type="file" class="form-control" id="aadhar-photo-insert"
                  onchange="document.getElementById('aadhar-photo-preview_insert').src = window.URL.createObjectURL(this.files[0])">
              </div>
              <div class="col-md-4 col-sm-12">
                <img id="aadhar-photo-preview_insert" alt="your image" width="100" height="100"
                  style="border: 1px solid #ced4da; margin-left:100px;" />

              </div>
            </div>
          </div>

          <div class="d-flex justify-content-center py-3">
            <button id="personal-details-cancel-insert" class="btn btn-danger m-4">Cancel</button>
            <button id="personal-details-submit-insert" class="btn btn-success m-4">Submit</button>
          </div>

        </form>

      </div>
    </div>
    </div>

    <!-- ************************************************************************Qualification Modal Div******************************************************************************************** -->

    <!-- Qualification Modal for Update -->
    <div class="qualification-modal d-none">
      <div class="full-screen container ">
        <div class="main-content">
          <div class="container d-flex justify-content-between align-items-center text-dark pt-md-5">
            <h3><b>Edit Qualification</b></h3>
          </div>
          <hr>

          <div class="bg-white qualification-data">
          </div>

          <hr>
          <div class="d-flex justify-content-center">
            <button id="qualification-cancel-button" class="btn btn-danger m-4">Cancel</button>
            <button id="qualification-submit-button" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Qualification Modal for Insert -->
    <div class="qualification-modal-insert d-none">
      <div class="full-screen container ">
        <div class="main-content">
          <div class="container d-flex justify-content-between align-items-center text-dark pt-md-5">
            <h3><b> Qualification</b></h3>
            <i id="qualification-add-button"
              class="qualification-add-button fa-solid text-primary fa-circle-plus fa-2x"></i>
          </div>
          <hr>

          <div class="bg-white qualification-data-insert">
          </div>

          <hr>
          <div class="d-flex justify-content-center">
            <button id="qualification-cancel-insert" class="btn btn-danger m-4">Cancel</button>
            <button id="qualification-submit-insert" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>

    <!-- ************************************************************************Work Experience Modal Div******************************************************************************************** -->

    <!-- WorkExperience Modal for Update -->
    <div class="workexperience-modal d-none">
      <div class="full-screen container ">
        <div class="main-content">
          <div class="container d-flex justify-content-between align-items-center text-dark pt-md-5">
            <h3><b>Edit Work Experience</b></h3>
          </div>
          <hr>

          <div class="bg-white workexperience-data">
          </div>

          <hr>
          <div class="d-flex justify-content-center">
            <button id="workexperience-cancel-button" class="btn btn-danger m-4">Cancel</button>
            <button id="workexperience-submit-button" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>

    <!-- WorkExperience Modal for Insert -->
    <div class="workexperience-modal-insert d-none">
      <div class="full-screen container ">
        <div class="main-content">
          <div class="container d-flex justify-content-between align-items-center text-dark pt-md-5">
            <h3><b> Work Experience</b></h3>
            <i id="workexperience-add-button"
              class="workexperience-add-button fa-solid text-primary fa-circle-plus fa-2x"></i>
          </div>
          <hr>

          <div class="bg-white workexperience-data-insert">
          </div>

          <hr>
          <div class="d-flex justify-content-center">
            <button id="workexperience-cancel-insert" class="btn btn-danger m-4">Cancel</button>
            <button id="workexperience-submit-insert" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>


    <!-- ************************************************************************Skills Modal Div******************************************************************************************** -->

    <div class="skills-modal d-none">
      <div id="skill-box" class="container-lg">

        <div class="row ">

          <div class="col-md-6 col-sm-12">
            <div>

              <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <li class="nav-item" role="presentation">
                  <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home"
                    type="button" role="tab" aria-controls="pills-home" aria-selected="true">Soft Skill</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile"
                    type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Hard Skill</button>
                </li>
              </ul>
              <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                  <div id="soft-skill-box" class="col-12">
                    <div class="col-12" style="list-style-type: none;">
                      <input type="text" id="soft-skill-search" placeholder="Search for soft skills.."
                        class="form-control" title="Type in a name">
                      <li class="mx-5 d-none" id="add-custom-soft-skill" style="cursor: pointer;">
                        <div class="row">
                          <div class="col-md-2 col-sm-2 col-2 "><i
                              class="fa-solid text-primary fa-circle-plus fa-2x"></i>

                          </div>
                          <div class="col-md-10 col-sm-10 col-10 "><a class="ms-3 text-dark"
                              id="custom-soft-skill-value" href="#"></a></div>
                        </div>
                      </li>
                    </div>

                    <ul id="soft-skill-UL">

                    </ul>

                  </div>
                </div>
                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                  <div id="hard-skill-box" class="col-12">

                    <div class="col-12" style="list-style-type: none;">
                      <input type="text" id="hard-skill-search" placeholder="Search for hard skills.."
                        class="form-control" title="Type in a name">
                      <li class="mx-5 d-none" id="add-custom-hard-skill" style="cursor: pointer;">
                        <div class="row">
                          <div class="col-md-2 col-sm-2 col-2 "><i
                              class="fa-solid text-primary fa-circle-plus fa-2x"></i></div>
                          <div class="col-md-10 col-sm-10 col-10 "><a class="ms-3 text-dark"
                              id="custom-hard-skill-value" href="#"></a></div>
                        </div>
                      </li>
                    </div>

                    <ul id="hard-skill-UL">
                    </ul>

                  </div>

                </div>
              </div>

            </div>
          </div>
          <div class="col-md-6 col-sm-12">
            <div id="review-box">
              <h4 class="ms-2 text-primary text-center">Review Your Soft Skills</h4>
              <div id="soft-skill-review-box">
                <ul id="soft-skill-display">
                </ul>
              </div>
              <hr>
              <div class="col-sm-12">
                <h4 class="ms-2 text-primary text-center">Review Your Hard Skills</h4>
                <div id="hard-skill-review-box">
                  <ul id="hard-skill-display">
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="save-submit-div">
          <div id="buttons-row" class="d-flex justify-content-center">
            <button id="skills-modal-cancel-button" class="btn btn-danger m-4">Cancel</button>
            <button id="skills-modal-submit-button" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>

    <!-- ************************************************************************Achievement Modal Div******************************************************************************************** -->

    <!-- Award Section For Update -->
    <div class="award-modal d-none">
      <div class="full-screen container">
        <div class="main-content">
          <div class="container d-flex justify-content-between mt-4">
            <h3 class="h3 ps-1 py-4">Edit Award</h3>
          </div>
          <hr>


          <div id="publication-award-div-update" class="bg-white">

          </div>

          <div class="d-flex justify-content-center">
            <button id="award-cancel-button" class="btn btn-danger m-4">Cancel</button>
            <button id="award-submit-button" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Award Section For Insert -->
    <div class="award-modal-insert d-none">
      <div class="full-screen container">
        <div class="main-content">
          <div class="container d-flex justify-content-between mt-4">
            <h3 class="h3 ps-1 py-4">Award</h3>
            <i id="award-add-button" class="fa-solid text-primary fa-circle-plus fa-2x"></i>
          </div>
          <hr>


          <div id="publication-award-div-insert" class="bg-white">

          </div>

          <div class="d-flex justify-content-center">
            <button id="award-cancel-insert" class="btn btn-danger m-4">Cancel</button>
            <button id="award-submit-insert" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>


    <!-- ************************************************************************Publication Modal Div******************************************************************************************** -->

    <!-- Publication Update Model -->
    <div class="publication-modal d-none">

      <div class="full-screen container ">
        <div class="main-content">
          <div class="container d-flex justify-content-between mt-4">
            <h3 class="h3 ps-1 py-4">Edit Publication</h3>
          </div>
          <hr>


          <div id="publication-modal-appending-div" class="bg-white">

          </div>

          <div class="d-flex justify-content-center">
            <button id="publication-cancel-button" class="btn btn-danger m-4">Cancel</button>
            <button id="publication-submit-button" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Publication Insert Model -->
    <div class="publication-modal-insert d-none">

      <div class="full-screen container ">
        <div class="main-content">
          <div class="container d-flex justify-content-between mt-4">
            <h3 class="h3 ps-1 py-4">Publication</h3>
            <i id="publication-add-button" class="fa-solid text-primary fa-circle-plus fa-2x"></i>
          </div>
          <hr>


          <div id="publication-modal-appending-div-insert" class="bg-white">

          </div>

          <div class="d-flex justify-content-center">
            <button id="publication-cancel-insert" class="btn btn-danger m-4">Cancel</button>
            <button id="publication-submit-insert" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>

    <!-- ************************************************************************Research Modal Div******************************************************************************************** -->
    <!-- Reserach Update Model -->
    <div class="research-modal d-none">
      <div class="full-screen container ">
        <div class="main-content">
          <div class="container d-flex justify-content-between mt-4">
            <h3 class="h3 py-4">Edit Research</h3>
          </div>
          <hr>

          <div id="research-data" class="bg-white">


          </div>
          <div class="d-flex justify-content-center ">
            <button id="research-cancel-button" class="btn btn-danger m-4">Cancel</button>
            <button id="research-submit-button" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Reserach Insert Model -->
    <div class="research-modal-insert d-none">
      <div class="full-screen container ">
        <div class="main-content">
          <div class="container d-flex justify-content-between mt-4">
            <h3 class="h3 py-4">Research</h3>
            <i id="research-add-button" class="fa-solid text-primary fa-circle-plus fa-2x"></i>
          </div>
          <hr>

          <div id="research-data-insert" class="bg-white">


          </div>
          <div class="d-flex justify-content-center ">
            <button id="research-cancel-insert" class="btn btn-danger m-4">Cancel</button>
            <button id="research-submit-insert" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>


    <!-- ************************************************************************Certification Modal Div******************************************************************************************** -->

    <!-- Certification Update Model -->
    <div class="certification-modal d-none">
      <div class="full-screen container ">
        <div class="main-content">
          <div class="container d-flex justify-content-between align-items-center text-dark pt-md-5">
            <h3><b>Edit Certification</b></h3>
          </div>
          <hr>

          <div id="certification-data" class="bg-white">

          </div>
          <div class="d-flex justify-content-center">
            <button id="certification-cancel-button" class="btn btn-danger m-4">Cancel</button>
            <button id="certification-submit-button" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Certification Insert Model -->
    <div class="certification-modal-insert d-none">
      <div class="full-screen container ">
        <div class="main-content">
          <div class="container d-flex justify-content-between align-items-center text-dark pt-md-5">
            <h3><b> Certification</b></h3>
            <i id="certification-add-button" class="fa-solid text-primary fa-circle-plus fa-2x"></i>
          </div>
          <hr>

          <div id="certification-data-insert" class="bg-white">

          </div>
          <div class="d-flex justify-content-center">
            <button id="certification-cancel-insert" class="btn btn-danger m-4">Cancel</button>
            <button id="certification-submit-insert" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>

    <!-- ************************************************************************Bank Details Modal Div******************************************************************************************** -->
    <!-- Band Details Modal for Update -->
    <div class="bank-details-modal d-none">

      <div id="bank-form-area">
        <div class="container">
          <div class="d-flex justify-content-center align-items-center my-4">
            <h2>Bank Details</h2>
          </div>

          <div class="row">
            <div class="col-md-6 col-sm-12">
              <label for="bank-name" class="py-md-2">Name of the Bank<span class="required">*</span></label>
              <span id="bank-name-message" style="color: red;" class="error"></span>
              <input type="text" class="form-control" id="bank-name">

            </div>
            <div class="col-md-6 col-sm-12">
              <label for="bank-branch" class="py-md-2">Branch<span class="required">*</span></label>
              <span id="bank-branch-message" style="color: red;" class="error"></span>
              <input type="text" class="form-control" id="bank-branch">

            </div>
          </div>

          <div class="row">
            <div class="col-md-6 col-sm-12">
              <label for="bank-ifsc-code" class="py-md-2">IFSC Code<span class="required">*</span></label>
              <span id="bank-ifsc-code-message" style="color: red;" class="error"></span>
              <input type="text" class="form-control" id="bank-ifsc-code">

            </div>
            <div class="col-md-6 col-sm-12">
              <label for="bank-micr-code" class="py-md-2">MICR code<span class="required">*</span></label>
              <span id="bank-micr-code-message" style="color: red;" class="error"></span>
              <input type="text" class="form-control" id="bank-micr-code">

            </div>
          </div>

          <div class="row">
            <div class="col-md-6 col-sm-12">
              <label for="bank-account-number" class="py-md-2">Account Number<span class="required">*</span></label>
              <span id="bank-account-number-message" style="color: red;" class="error"></span>
              <input type="text" class="form-control" id="bank-account-number">

            </div>
            <div class="col-md-6 col-sm-12">
              <label for="bank-account-type" class="py-md-2">Account Type<span class="required">*</span></label>
              <span id="bank-account-type-message" style="color: red;" class="error"></span>
              <select class="form-control" id="bank-account-type">
              </select>
            </div>
          </div>

          <div class="row">
            <div class="col-md-6 col-sm-12">
              <div>
                <label for="cancelled_cheque_Photo" class="py-md-2">Cancelled Cheque Photo<span
                    class="required">*</span></label>
                <span id="cancelled_cheque_Photo-message" style="color: red;" class="error"></span>
                <input type="file" name="cancelled_cheque_Photo" id="cancelled_cheque_Photo" class="form-control"
                  onchange="document.getElementById('check-preview').src = window.URL.createObjectURL(this.files[0])">
              </div>
            </div>
            <div class="col-md-6 col-sm-12 py-md-2">
              <div>
                <img id="check-preview" alt="Cancelled Cheque photo" width="150" />
              </div>
            </div>
          </div>

          <div class="d-flex justify-content-center">
            <button id="bank-details-cancel-button" class="btn btn-danger m-4">Cancel</button>
            <button id="bank-details-submit-button" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>



    <!-- Band Details Modal for insert-->
    <div class="bank-details-modal-insert d-none">

      <div id="bank-form-area">
        <div class="container">
          <div class="d-flex justify-content-center align-items-center my-4">
            <h2>Bank Details</h2>
          </div>

          <div class="row">
            <div class="col-md-6 col-sm-12">
              <label for="bank-name" class="py-md-2">Name of the Bank<span class="required">*</span></label>
              <span id="bank-name-message-insert" style="color: red;" class="error"></span>
              <input type="text" class="form-control" id="bank-name-insert">

            </div>
            <div class="col-md-6 col-sm-12">
              <label for="bank-branch" class="py-md-2">Branch<span class="required">*</span></label>
              <span id="bank-branch-message-insert" style="color: red;" class="error"></span>
              <input type="text" class="form-control" id="bank-branch-insert">

            </div>
          </div>

          <div class="row">
            <div class="col-md-6 col-sm-12">
              <label for="bank-ifsc-code" class="py-md-2">IFSC Code<span class="required">*</span></label>
              <span id="bank-ifsc-code-message-insert" style="color: red;" class="error"></span>
              <input type="text" class="form-control" id="bank-ifsc-code-insert">

            </div>
            <div class="col-md-6 col-sm-12">
              <label for="bank-micr-code" class="py-md-2">MICR code<span class="required"></span></label>
              <span id="bank-micr-code-message-insert" style="color: red;" class="error"></span>
              <input type="text" class="form-control" id="bank-micr-code-insert">

            </div>
          </div>

          <div class="row">
            <div class="col-md-6 col-sm-12">
              <label for="bank-account-number" class="py-md-2">Account Number<span class="required">*</span></label>
              <span id="bank-account-number-message-insert" style="color: red;" class="error"></span>
              <input type="text" class="form-control" id="bank-account-number-insert">

            </div>
            <div class="col-md-6 col-sm-12">
              <label for="bank-account-type" class="py-md-2">Account Type<span class="required">*</span></label>
              <span id="bank-account-type-message-insert" style="color: red;" class="error"></span>
              <select class="form-control" id="bank-account-type-insert">
              </select>
            </div>
          </div>

          <div class="row">
            <div class="col-md-6 col-sm-12">
              <div>
                <label for="cancelled_cheque_Photo" class="py-md-2">Cancelled Cheque Photo<span
                    class="required">*</span></label>
                <span id="cancelled_cheque_Photo-message" style="color: red;" class="error"></span>
                <input type="file" name="cancelled_cheque_Photo" id="cancelled_cheque_Photo-insert" class="form-control"
                  onchange="document.getElementById('check-preview').src = window.URL.createObjectURL(this.files[0])">
              </div>
            </div>
            <div class="col-md-6 col-sm-12 py-md-2">
              <div>
                <img id="check-preview" alt="Cancelled Cheque photo" width="150" />
              </div>
            </div>
          </div>

          <div class="d-flex justify-content-center">
            <button id="bank-details-cancel-insert" class="btn btn-danger m-4">Cancel</button>
            <button id="bank-details-submit-insert" class="btn btn-success m-4">Submit</button>
          </div>
        </div>
      </div>
    </div>


    <!-- ************************************************************************Pancard Photo Modal Div******************************************************************************************** -->
    <div class="pancard-photo-modal d-none">

      <div id="bank-form-area">
        <div class="container">
          <div class="d-flex justify-content-center align-items-center my-4">
            <h2>Preview Pancard Photo</h2>
          </div>

          <div class="row">
            <div class="col-md-12 col-sm-12 d-flex justify-content-center">
              <img src="/download (3).jpg" alt="Pancard-photo-uploaded" id="Pancard-photo-uploaded"
                style="width:450px;height:300px;">
            </div>
          </div>

          <div class="d-flex justify-content-center">
            <button id="pancard-photo-cancel-button" class="btn btn-danger m-4">Cancel</button>
          </div>
        </div>
      </div>
    </div>

    <!-- ************************************************************************Aadhar Photo Modal Div******************************************************************************************** -->
    <div class="aadhar-photo-modal d-none">

      <div id="bank-form-area">
        <div class="container">
          <div class="d-flex justify-content-center align-items-center my-4">
            <h2>Preview Aadhar Photo</h2>
          </div>

          <div class="row">
            <div class="col-md-12 col-sm-12 d-flex justify-content-center">
              <img src="/download (3).jpg" alt="aadhar-photo-uploaded" id="aadhar-photo-uploaded"
                style="width:450px;height:300px;">
            </div>
          </div>

          <div class="d-flex justify-content-center">
            <button id="aadhar-photo-cancel-button" class="btn btn-danger m-4">Cancel</button>
          </div>
        </div>
      </div>
    </div>

    <!-- ************************************************************************Cancelled cheque Modal Div******************************************************************************************** -->
    <div class="cancelled-cheque-photo-modal d-none">
      <div id="bank-form-area">
        <div class="container">
          <div class="d-flex justify-content-center align-items-center my-4">
            <h2>Preview Cancelled Cheque Photo</h2>
          </div>

          <div class="row">
            <div class="col-md-12 col-sm-12 d-flex justify-content-center">
              <img src="/download (3).jpg" alt="cancelled-cheque-photo-uploaded" id="cancelled-cheque-photo-uploaded"
                style="width:450px;height:300px;">
            </div>
          </div>

          <div class="d-flex justify-content-center">
            <button id="cancelled-cheque-photo-cancel-button" class="btn btn-danger m-4">Cancel</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Rana Changes -->
    <!-- ************************************************************************Qualification photo Modal Div******************************************************************************************** -->
    <div class="image-preview-modal d-none">
      <div id="bank-form-area">
        <div class="container">
          <div class="d-flex justify-content-center align-items-center my-4">
            <h2> Image Preview </h2>
          </div>

          <div class="row">
            <div class="col-md-12 col-sm-12 d-flex justify-content-center">
              <img src="/download (3).jpg" alt="image-uploaded" id="image-uploaded" class="image-uploaded"
                style="width:450px;height:300px;">
            </div>
          </div>

          <div class="d-flex justify-content-center">
            <button id="image-preview-cancel-button" class="btn btn-danger m-4">Cancel</button>
          </div>
        </div>
      </div>
    </div>

  </main>


  <div class="modal-loader d-none" id="main-loader">
    <svg version="1.1" id="L5" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
      y="0px" viewBox="0 0 100 100" enable-background="new 0 0 0 0" xml:space="preserve">
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



  <!-- INCLUDE JS -->
  <script src="/js/jquery.min.js"></script>
  <script src="/js/bootstrap.bundle.min.js"></script>
  <script src="/js/SimpleAlert.js"></script>
  <script src="/js/script.js"></script>
  <script src="/js/leftsidebartoggle.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
  <script src="/js/jquery.bootpag.min.js"></script>
  <script id="script-data"></script>
  <script>
    let resume_lid = '${resume_lid}';
    console.log(resume_lid)

    let resumeinfo;
    $.ajax({
      url: '/get-user-details?resume_lid=' + resume_lid,
      type: 'POST',
      success: function (response) {
        let data = JSON.parse(response.value)
        resumeinfo = data;
        let personal_details = data.personal_details;
        let bank_details = data.bank_details;
        console.log('Resume info :', resumeinfo);




        let resume = `
      <div class="d-flex justify-content-end">

        <i id="download-btn" class="h1 fa-solid fa-download"></i>
      </div>

      <div class="shadow-lg">

        <!--------------------------------------Personal Details Section ---------------------------------------->`

        if (personal_details != null) {

          resume += `<div class="edit-personal-details">
          <div class="position-relative personal-information-div-wrapper d-flex" style="cursor: pointer;">
            <div class="container p-0">
              <div class="personal-information-div">
                <div class="cover-div p-3 px-sm-4 p-lg-4"> <div class="row">
                    <div class="col-md-4 col-sm-12 col-lg-3">
                      <div class="avatar bg-white shadow-sm p-1">
                        <img src="../imagedata/\${personal_details[0].profile_url_path}" alt="Passport Size photo" id="profile-photo-value" width="200"
                          height="200" />
                      </div>
                    </div>
                <div id="right-cover" class="col-md-8 col-sm-12 col-lg-9 p-5">
                      <div class="d-flex" style="color: #740E00;">
                        <h3><b id="first-name-value">\${personal_details[0].f_name}</b></h3> &nbsp &nbsp
                        <h3><b id="last-name-value">\${personal_details[0].l_name}</b></h3>
                      </div>
                    </div>
                  </div>
                </div>

                <div id="personal-details-div" class="pt-lg-4 pt-md-5 px-3 px-sm-4 px-lg-4 mt-1">
                  <div class="row">
                    <div id="personaldetails-left-side"
                      class="col-12 col-md-6 col-lg-6 col-sm-12 ps-4 pt-lg-5 pt-md-2 text-center">
                      <div class="row py-1">
                        <div class="col-md-5 col-sm-3">
                          <h6>Gender :</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="gender-value">\${personal_details[0].name}</p> 
                        </div>
                      </div>
                      <div class="row py-1">
                        <div class="col-md-5 col-sm-3">
                          <h6>Date of birth :</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="date-of-birth-value">\${personal_details[0].date_of_birth}</p>
                        </div>
                      </div>
                      <div class="row py-1">
                        <div class="col-md-5 col-sm-3">
                          <h6>Pancard :</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="pancard-value">\${personal_details[0].pancard_no}</p>
                        </div>
                      </div>
                      <div class="row py-1">
                        <div class="col-md-5 col-sm-3">
                          <h6>Pancard Photo</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="pancard-photo"><i id="pancard-photo-preview" data-image="../imagedata/\${personal_details[0].pancard_url_path}" class="fa-solid fa-ban text-danger"></i></p>
                          </p>
                        </div>
                      </div>
                      <div class="row py-1">
                        <div class="col-md-5 col-sm-3">
                          <h6>Aadhar card :</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="aadhar-card-value">\${personal_details[0].aadhar_card_no}</p>
                        </div>
                      </div>
                      <div class="row py-1">
                        <div class="col-md-5 col-sm-3">
                          <h6>Aadhar card Photo</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="aadhar-card-photo"><i id="aadhar-photo-preview" data-image="../imagedata/\${personal_details[0].aadhar_card_url_path}" class="fa-solid fa-ban text-danger"></i></p>
                        </div>
                      </div>
                      <div class="row py-1">
                        <div class="col-md-5 col-sm-3">
                          <h6>Contact No.</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="contact-number-value">\${personal_details[0].contact_number}</p>
                        </div>
                      </div>
                      <div class="row py-1">
                        <div class="col-md-5 col-sm-3">
                          <h6>Secondary Contact No.</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="temp-contact-value">\${personal_details[0].temp_contact_number}</p>
                        </div>
                      </div>
                    </div>

                    <div id="personaldetails-right-side" class="col-12 col-md-6 col-lg-6 col-sm-12 pt-lg-5 text-center">
                    
                      <div class="row py-2">
                        <div class="col-md-5 col-sm-3">
                          <h6>Email :</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="email-value">\${personal_details[0].email}</p>
                        </div>
                      </div>
                      <div class="row py-2">
                        <div class="col-md-5 col-sm-3">
                          <h6>Secondary Email :</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="temp-email-value">\${personal_details[0].temp_email}</p>
                        </div>
                      </div>
                      <div class="row py-2">
                        <div class="col-md-5 col-sm-3">
                          <h6>Permanent Address :</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="address-value">\${personal_details[0].address}</p>
                        </div>
                      </div>
                      <div class="row py-2">
                        <div class="col-md-5 col-sm-3">
                          <h6 class="temporary-address-heading">Temporary Address :</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="temporary-address-value">\${personal_details[1].address}
                          </p>
                        </div>
                      </div>
                      <div class="row py-1">
                        <div class="col-md-5 col-sm-3">
                          <h6>City</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="city-value">\${personal_details[0].city}</p>
                        </div>
                      </div>
                      <div class="row py-1">
                        <div class="col-md-5 col-sm-3">
                          <h6>Pincode</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="pincode-value">\${personal_details[0].pin_code}</p>
                        </div>
                      </div>
                      <div class="row py-2">
                        <div class="col-md-5 col-sm-3">
                          <h6 class="country-heading">Country :</h6>
                        </div>
                        <div class="col-md-7 col-sm-9">
                          <p id="country-value">\${personal_details[0].nationality}</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="d-none personal-details-edit-box d-flex justify-content-center align-items-center">
              <i class="fa-solid fa-pen fa-2x text-white "></i>
            </div>
        </div>
        <hr />`
        } else {
          resume += `
        <div class="edit-personal-details">
            <div class="container p-0">
              <div class="personal-information-div">
                <div class="cover-div p-3 px-sm-4 p-lg-4"> <div class="row">
                    <div class="col-md-4 col-sm-12 col-lg-3">
                      <div class="avatar bg-white shadow-sm p-1">
                        <img src="/profile.jpg" alt="Passport Size photo" id="profile-photo-value" width="200"
                          height="200" />
                      </div>
                    </div>
                <div id="right-cover" class="col-md-8 col-sm-12 col-lg-9 p-5">
                      <div class="d-flex" style="color: #740E00;">
                        <h3><b id="first-name-value">Name</b></h3> &nbsp &nbsp
                      </div>
                    </div>
                  </div>
                </div>

                <div id="personal-details-div" class="pt-lg-4 pt-md-5 px-3 px-sm-4 px-lg-4 mt-1">
                  <div class="personalinsert d-flex justify-content-center align-items-center">
                    <strong> Add Personal Details</strong><button class="resume-personal-addbtn"><h2><i class='fa fa-plus-circle' style='color:#0aae9a'></i></h2></button>
                  </div>
                </div>
              </div>
         
        <hr />
        `
        }

        resume += `
        <!------------------------------------------------ Qualification Section ------------------------------------------------>

        <div class="position-relative qualification-div-wrapper d-flex" style="cursor: pointer;">
          <div class="container">
            <div id="qualification-div">
              <div class="d-flex justify-content-center align-items-center" style="color: #740E00;">
                <h3><b> <i class="fa-solid fa-graduation-cap"></i>Qualification</b></h3>
              </div>

              <div id="qualification-list">`

        if (data.resume_qualification != null) {
          for (let qual of data.resume_qualification) {

            if (qual.qualification_type_lid === 1 || qual.qualification_type_lid === 2 || qual
              .qualification_type_lid === 3) {

              resume += `<div class="qualification-item d-flex position-relative"> 
          <div class="text-block right container" >
                  <div class="card-body preview-qualification-div">
                    <h2 id="year-of-passing">\${qual.year_of_passing}</h2>

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
                              <p id="">\${qual.qualification_type_lid}</p>
                              <p id="">\${qual.topic_of_study}</p>
                              <p id="">\${qual.university}</p>
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
                              <p class="" id="">\${qual.institute}</p>
                              <p id="" class="">\${qual.institute}</p>
                              <p id=""><i id="qualification-certificate-display" data-image="../imagedata/\${qual.url_path}"
                                  class="fa-solid fa-image text-success qualification-certificate-display"></i></p>

                            </div>
                          </div>
                          
                          </div>
                          </div>
                         
                    </div>

                  </div>
                </div>
                  <div class="d-none qualification-edit-box d-flex justify-content-center align-items-center" data-edit_lid = "\${qual.resume_qualification_lid}">
                           <i class="fa-solid fa-pen fa-2x text-white "></i>
                          </div>
                        </div>
              `
            }

          }
        }


        resume += `
            </div>
                <div class="addbtn-qualification d-flex my-2 justify-content-center align-items-center">
                  <strong> Add More Rows</strong><button class="resume-qualification-addbtn"><h2><i class='fa fa-plus-circle' style='color:#0aae9a'></i></h2></button>
                </div>
          </div>
          </div>
        </div>
        <hr />


        <!------------------------------------------------ Work Experience Section ------------------------------------------------>
        <div class="position-relative workexperience-div-wrapper d-flex" style="cursor: pointer;">
          <div class="container">
            <div id="workexperience-div">
              <div class="d-flex justify-content-center align-items-center" style="color: #740E00;">
                <h3><b> <i class="fa-solid fa-graduation-cap"></i>Work Experience</b></h3>
              </div>
              <div id="workexperience-list">`
        if (data.resume_experience != null) {
          for (let exp of data.resume_experience) {
            resume += ` <div class="text-block right">
                  <div class="card-body">
                    <h2>\${exp.experience_type_lid}</h2>
                    <div id="workexperience-display-div" class=" px-3 px-sm-4 px-lg-4 mt-1">
                      <div class="row">
                        <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                          <div class="row pt-lg-3">
                            <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                              <p class="h5 pb-1">University :</p>
                              <p class="h5 pb-1">Program :</p>
                              <p class="h5 py-1">Subject Taught :</p>
                              <p class="h5 py-1">Designation :</p>
                              <p class="h5 py-1">Padagogy used :</p>
                            </div>
                            <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                              <p id="">\${exp.employer_name}</p>
                              <p id="">\${exp.description}</p>
                              <p id="">\${exp.responsibilities}</p>
                              <p class="" id="">\${exp.designation}</p>
                              <p class="" id="">\${exp.padagogy}</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                          <div class="row pt-lg-3">
                            <div class="col-6 ps-lg-5 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                              <p class="h5 py-1">Start Date :</p>
                              <p class="h5 py-1">End date :</p>
                              <p class="h5 py-1">Teaching Duration :</p>
                              <p class="h5 py-1">Status :</p>
                            </div>
                            <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                              <p id="" class="">\${exp.start_date}</p>
                              <p id="" class="">\${exp.end_date}</p>
                              <p id="" class="">\${exp.duration}</p>
                              <p id="" class="">\${exp.is_current}</p>
                              <!-- <p id=""><i class="fa-solid fa-ban text-danger"></i></p> -->
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  </div>
                  <div class="d-none workexperience-edit-box d-flex justify-content-center align-items-center" >
                     <i class="fa-solid fa-pen fa-2x text-white "></i>
                  </div>`
          }
        }
        resume += `</div>
                <div class="addbtn-workexperience d-flex my-2 justify-content-center align-items-center">
                  <strong> Add More Rows</strong><button class="resume-workexperience-addbtn"><h2><i class='fa fa-plus-circle' style='color:#0aae9a'></i></h2></button>
                </div>
          </div>
          </div>
        </div>
        <hr />
        <!-------------------------------------------------- Skills Section----------------------------------------------->

        <div class="skills-div-wrapper position-relative d-flex" style="cursor: pointer;">
          <div class="container">
            <div id="skills-div" class="px-3 px-sm-4 px-lg-4">
              <div class="d-flex justify-content-center align-items-center">
                <h3 class="mb-4 h3" style="color: #740E00;">
                  <img src="/icons/skills.png" alt="" height="40px"><b> Skills</b>
                </h3>
              </div>
              <div class="container bootstrap snippets bootdeys">
                <div class="row">

                  <div class="col-md-6 col-sm-12 content-card">
                    <div class="card card-just-text" data-background="color" data-color="grey" data-radius="none">
                      <h4 class="title">Hard Skills</h4>

                  <div id="hard-skill-appending-div1" class="d-flex w-100 flex-wrap">`
        if (data.resume_skill_selected != null) {
          for (hardskill of data.resume_skill_selected) {
            if (hardskill.skill_type_lid === 2)
              resume += ` <div data-id="\${hardskill.skill_lid}" data-skilltype="\${hardskill.skill_type_lid}" class="skill-pill-div text-center">
                                    \${hardskill.skill_name}\
                                </div>`
          }

          resume += ` </div>
                    </div> <!-- end card -->
                  </div>

                  <div class="col-md-6 col-sm-12 content-card">
                    <div class="card card-just-text" data-background="color" data-color="green" data-radius="none">
                      <h4 class="title">Soft Skills</h4>
                      <div id="soft-skill-appending-div1" class="d-flex w-100 flex-wrap">`
          for (softskill of data.resume_skill_selected) {
            if (softskill.skill_type_lid === 1) {
              resume += `<div data-id="\${softskill.skill_lid}" data-skilltype="\${softskill.skill_type_lid}" class="skill-pill-div text-center">
                                    \${softskill.skill_name}\
                                </div>`
            }
          }
        } else {
          resume += `                      </div>
                    </div> <!-- end card -->
                  </div>

                  <div class="col-md-6 col-sm-12 content-card">
                    <div class="card card-just-text" data-background="color" data-color="green" data-radius="none">
                      <h4 class="title">Soft Skills</h4>

                      <div id="soft-skill-appending-div1" class="d-flex w-100 flex-wrap">
`
        }

        resume += ` </div>
                    </div> <!-- end card -->
                  </div>`
        resume += ` </div>
              </div>
            </div>
          </div>
          <div class="d-none skills-edit-box d-flex justify-content-center align-items-center">
            <i class="fa-solid fa-pen fa-2x text-white "></i>
          </div>
        </div>
        <hr>

        <!-------------------------------------------------- Award Section----------------------------------------------->

        <div class="award-list d-flex position-relative" style="cursor: pointer;">
          <div class="container">
            <div id="award-div" class="px-3 px-sm-4 px-lg-4">
              <div class="d-flex justify-content-center align-items-center">
                <h3 style="color: #740E00;"><i class="fa-solid fa-award"></i><b> Awards </b></h3>
              </div>
              <div id="award-preview-div">`
        if (data.resume_achievement != null) {
          for (let award of data.resume_achievement) {
            resume += `  <div class="award-item d-flex position-relative">             
            <div id="Award-display-div" class="px-3 px-sm-4 px-lg-4 mt-1 container">
                  <div class="row">

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 pb-1">Award Name :</p>
                          <p class="h5 py-1">organization :</p>
                          <p class="h5 py-1">Organization Type :</p>

                        </div>
                        <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                          <p id="">\${award.title}</p>
                          <p id="">\${award.organization_name} </p>
                          <p id="">\${award.name}</p>
                        </div>
                      </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6 ps-lg-5 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 pb-1">Place :</p>
                          <p class="h5 pb-1">Recieved date :</p>
                          <p class="h5 py-1">Certificate :</p>
                        </div>
                        <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                          <p class="" id="">\${award.description}</p>
                          <p class="" id="">\${award.achievement_date}</p>
                          <p ><i id="award-certificate-display" data-image="../imagedata/\${award.url_path}" class="fa-solid fa-image text-success award-certificate-display"></i></p>
                        </div>
                      </div>
                    </div>

                  </div>
                  </div>
                  <div class="d-none award-edit-box d-flex justify-content-center align-items-center">
                  <i class="fa-solid fa-pen fa-2x text-white "></i>
                    </div>
                    </div>
                <hr>
              `

          }
        }



        resume += `</div>
             <div class="addbtn-award d-flex my-2 justify-content-center align-items-center">
                  <strong> Add More Rows</strong><button class="resume-award-addbtn"><h2><i class='fa fa-plus-circle' style='color:#0aae9a'></i></h2></button>
             </div>
          </div>
          </div>
         
        </div>
        <hr />

        <!------------------------------------------- Publication Section  ----------------------------------------->

        <div class="publication-list d-flex position-relative" style="cursor: pointer;">
          <div class="container">
            <div id="publication-div" class="px-3 px-sm-4 px-lg-4">
              <div class="d-flex justify-content-center align-items-center">
                <h3 class="mb-4 h3" style="color: #740E00;"> <b> Publications </b></h3>
              </div>
              <div id="publication-appending-div" class="bg-white">`
        if (data.resume_publication != null) {
          for (let public of data.resume_publication) {
            resume += `<div class="publication-item d-flex position-relative"> 
           <div class=" px-3 px-sm-4 px-lg-4 mt-1 container">
                  <div class="row">

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 pb-1">Role :</p>
                          <p class="h5 py-1">No. of Authors :</p>
                          <p class="h5 py-1">Book Title :</p>

                        </div>
                        <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                          <p id="">\${public.publication_role}</p>
                          <p id="">\${public.no_of_authors} </p>
                          <p id="">\${public.title}</p>
                        </div>
                      </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6 ps-lg-5 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 pb-1">Publisher :</p>
                          <p class="h5 pb-1">Publication Year:</p>
                          <p class="h5 py-1">Certificate :</p>
                        </div>
                        <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                          <p class="" id="">\${public.publisher}</p>
                          <p class="" id="">\${public.year_of_publication}</p>
                          <p><i id="publication-certificate-display" data-image="../imagedata/\${public.url_path}" class="fa-solid fa-ban text-danger publication-certificate-display"></i></p>

                        </div>
                      </div>
                    </div>
                    
                  </div>
                
              </div>
              <div class="d-none publication-edit-box d-flex justify-content-center align-items-center">
            <i class="fa-solid fa-pen fa-2x text-white "></i>
          </div>
          </div>
              
              `

          }
        }


        resume += `</div>
              <div class="addbtn-publication d-flex my-2 justify-content-center align-items-center">
                    <strong> Add More Rows</strong><button class="resume-publication-addbtn"><h2><i class='fa fa-plus-circle' style='color:#0aae9a'></i></h2></button>
              </div>
            </div>
          </div>
         
        </div>

        <hr />


        <!------------------------------------------- Research Section  ----------------------------------------->


        <div class="research-list d-flex position-relative" style="cursor: pointer;">
          <div class="container">
            <div id="research-div" class="px-3 px-sm-4 px-lg-4">
              <div class="d-flex justify-content-center align-items-center">
                <h3 class="mb-4 pt-2 h3" style="color: #740E00;"><i class="fa-solid fa-telescope"></i><b> Research
                  </b></h3>
              </div>

              <div id="research-appending-div">`
        if (data.resume_research != null) {
          for (let research of data.resume_research) {
            resume += `<div class="research-item d-flex position-relative"> 
           <div class=" ps-3 ps-sm-4 ps-lg-4 mt-1 container">
                  <div class="row">

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 py-1">Title :</p>
                          <p class="h5 py-1">Volume year :</p>

                        </div>
                        <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                          <p id="">\${research.title}</p>
                          <p id="">\${research.volume_year}</p>
                        </div>
                      </div>
                    </div>


                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6 ps-lg-5 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 pb-1">Description :</p>
                          <p class="h5 pb-1">Category :</p>
                          <p class="h5 py-1">Certificate :</p>
                        </div>
                        <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                          <p class="" id="">\${research.description}</p>
                          <p class="" id="">\${research.category}</p>
                          <p><i id="research-certificate-display" class="fa-solid fa-ban text-danger research-certificate-display" ></i></p>

                        </div>
                      </div>
                    </div>

                  </div>
                </div>
                <div class="d-none research-edit-box d-flex justify-content-center align-items-center">
            <i class="fa-solid fa-pen fa-2x text-white "></i>
          </div>
          </div>
                `

          }
        }

        resume += `</div>  
               <div class="addbtn-research d-flex my-2 justify-content-center align-items-center">
                     <strong> Add More Rows</strong><button class="resume-research-addbtn"><h2><i class='fa fa-plus-circle' style='color:#0aae9a'></i></h2></button>
               </div>             

            </div>
          </div>
        
        </div>
        <hr />

        <!------------------------------------------------ Certification Section ------------------------------------------------>

        <div class="position-relative certification-list d-flex" style="cursor: pointer;">
          <div class="container">
            <div id="certification-div">
              <div class="d-flex justify-content-center align-items-center" style="color: #740E00;">
                <h3><i class="fa-solid fa-certificate"></i><b>Professional Membership Certificate</b></h3>
              </div>

              <div id="certification-appending-div">`
        if (data.resume_qualification != null) {
          for (let qual of data.resume_qualification) {
            if (qual.qualification_type_lid === 4) {

              resume += `<div class="professional-certificate-item d-flex position-relative" data-qualificationlid="\${qual.resume_qualification_lid}"> 
                <div class="text-block right container" id="preview-qualification-div">
                  <div class="card-body preview-certification-div">

                    <div class=" px-3 px-sm-4 px-lg-4 mt-1">
                      <div class="row">

                        <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                          <div class="row pt-lg-3">
                            <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                              <p class="h5 pb-1">Certification name:</p>
                            </div>
                            <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                              <p id="">\${qual.topic_of_study}</p>
                            </div>
                          </div>
                        </div>

                        <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                          <div class="row pt-lg-3">
                            <div class="col-6 ps-lg-6 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                              <p class="h5 pb-1">Institution :</p>
                            </div>
                            <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                              <p class="" id="">\${qual.institute}</p>
                            </div>
                          </div>
                        </div>

                        <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                          <div class="row pt-lg-3">
                            <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                              <p class="h5 pb-1">Recieved Year:</p>
                            </div>
                            <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                              <p id="">\${qual.year_of_passing}</p>
                            </div>
                          </div>
                        </div>

                        <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                          <div class="row pt-lg-3">
                            <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                              <p class="h5 pb-1">Certificate:</p>
                            </div>
                            <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                              <p data-image="../imagedata/\${qual.url_path}"><i class="fa-solid fa-image text-success"></i></p>
                            </div>
                          </div>
                        </div>

                      </div>
                    </div>

                  </div>
                </div>
                <div class="d-none certification-edit-box d-flex justify-content-center align-items-center">
            <i class="fa-solid fa-pen fa-2x text-white "></i>
          </div>
          </div>
                `
            }

          }
        }
        resume += `
              </div>
                  <div class="addbtn-certification d-flex my-2 justify-content-center align-items-center">
                    <strong> Add More Rows</strong><button class="resume-certification-addbtn"><h2><i class='fa fa-plus-circle' style='color:#0aae9a'></i></h2></button>
                  </div>
            </div>
          </div>
         
        </div>
        <hr />



        <!------------------------------------------- Bank Details Section  ----------------------------------------->`
        if (bank_details != null) {


          resume += `<div class="bank-details-div-wrapper d-flex position-relative" style="cursor: pointer;">
          <div id="bank-details-div">
            <div class="px-3 px-sm-4 ps-lg-5">
              <div class="d-flex justify-content-center align-items-center">
                <h3 class="p-md-3 pb-sm-3" style="color: #740E00;"><b><i class="fa-solid fa-building-columns"></i>
                    Bank Details </b></h3>
              </div>
              <div class="row">
                <div id="left-side" class="col-12 col-md-6 col-lg-6 col-sm-12">
                  <div class="row pt-lg-3">
                    <div class="col-6 col-md-6 col-lg-6 col-sm-6 ps-lg-4 ps-md-0 ps-0 ps-sm-0">
                      <h6 class="pb-4">Name of Bank</h6>
                      <h6 class="pb-4">Branch</h6>
                      <h6 class="pb-4">IFSC Code</h6>
                    </div>
                    <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                      <p id="bank-name-value">\${bank_details.bank_name}</p>
                      <p id="branch-name-value" class="pt-2">\${bank_details.branch_name}</p>
                      <p id="ifsc-code-value" class="pt-2">\${bank_details.ifsc_code}</p>
                    </div>
                  </div>
                </div>

                <div id="right-side" class="col-12 col-md-6 col-lg-6 col-sm-12">
                  <div class="row pt-lg-3">
                    <div class="col-6 ps-lg-4 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                      <h6 class="pb-4">MICR Code</h6>
                      <h6 class="pb-4">Account Number</h6>
                      <h6 class="pb-4">Account Type</h6>
                      <h6 class="pb-4">Cancalled Cheque Photo</h6>
                    </div>
                    <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                      <p id="micr-code-value">\${bank_details.micr_code}</p>
                      <p id="account-number-value" class="pt-2">\${bank_details.account_number}</p>
                      <p id="account-type-value" class="pt-2">\${bank_details.account_type}</p>
                      <p id="cancelled-check-photo" class="pt-3">
                        <i id="cancelled-cheque-photo-preview" class="fa-solid fa-ban text-danger"></i>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="d-none bank-details-edit-box d-flex justify-content-center align-items-center">
            <i class="fa-solid fa-pen fa-2x text-white "></i>
          </div>
        </div>
      </div>`


        } else {
          resume += `
          <div id="bank-details-div">
              <div class="d-flex justify-content-center align-items-center">
                <h3 class="p-md-3 pb-sm-3" style="color: #740E00;"><b><i class="fa-solid fa-building-columns"></i>Bank Details </b></h3>
              </div> 
                  <div class="addbtn-bank d-flex my-2 justify-content-center align-items-center">
                    <strong> Add Bank Details</strong><button class="resume-bank-addbtn"><h2><i class='fa fa-plus-circle' style='color:#0aae9a'></i></h2></button>
                  </div>
        </div>`
        }
        document.querySelector('#body').insertAdjacentHTML('afterbegin', resume);
        initResume();

        if (bank_details != null) {
          document.querySelector('.bank-details-div-wrapper').addEventListener('mouseover', function () {

            for (let box of document.querySelector('#body').querySelectorAll('.edit-show')) {
              box.classList.add('d-none');
              box.classList.remove('edit-show');
            }

            document.querySelector('.bank-details-edit-box').classList.remove('d-none');
            document.querySelector('.bank-details-edit-box').classList.add('edit-show');

          });


          document.querySelector('#cancelled-cheque-photo-preview').addEventListener('click', function (e) {
            document.getElementById('body').classList.add('d-none');
            document.querySelector('.cancelled-cheque-photo-modal').classList.remove('d-none');
          })

          document.querySelector('#cancelled-cheque-photo-cancel-button').addEventListener('click', function (e) {
            document.getElementById('body').classList.remove('d-none');
            document.querySelector('.cancelled-cheque-photo-modal').classList.add('d-none');
          })
        }
        

        if (resumeinfo.personal_details != null) {

          document.querySelector('.personal-information-div-wrapper').addEventListener('mouseover', function () {

            for (let box of document.querySelector('#body').querySelectorAll('.edit-show')) {
              box.classList.add('d-none');
              box.classList.remove('edit-show');
            }

            document.querySelector('.personal-details-edit-box').classList.remove('d-none');
            document.querySelector('.personal-details-edit-box').classList.add('edit-show');
          });



          document.querySelector('#pancard-photo-preview').addEventListener('click', function (e) {
            document.getElementById('body').classList.add('d-none');
            document.querySelector('.pancard-photo-modal').classList.remove('d-none');
          })

          document.querySelector('#pancard-photo-cancel-button').addEventListener('click', function (e) {
            document.getElementById('body').classList.remove('d-none');
            document.querySelector('.pancard-photo-modal').classList.add('d-none');
          })

          document.querySelector('#aadhar-photo-preview').addEventListener('click', function (e) {
            document.getElementById('body').classList.add('d-none');
            document.querySelector('.aadhar-photo-modal').classList.remove('d-none');
          })

          document.querySelector('#aadhar-photo-cancel-button').addEventListener('click', function (e) {
            document.getElementById('body').classList.remove('d-none');
            document.querySelector('.aadhar-photo-modal').classList.add('d-none');
          })



          //************************************Personal Details Section Start***************************************************************

          //Personal details Edit Btn

          document.querySelector('.personal-details-edit-box').addEventListener('click', function () {

            let editPersonalDetailsForm = new FormData()

            editPersonalDetailsForm.append('editDateOfBirth', document.getElementById('date-of-birth-value')
              .innerText)
            editPersonalDetailsForm.append('editFirstName', document.getElementById('first-name-value')
              .innerText)
            editPersonalDetailsForm.append('editLastName', document.getElementById('last-name-value')
              .innerText)
            editPersonalDetailsForm.append('editPancardNumber', document.getElementById('pancard-value')
              .innerText)
            editPersonalDetailsForm.append('editAadharCardNumber', document.getElementById(
                'aadhar-card-value')
              .innerText)
            editPersonalDetailsForm.append('editContactNumber', document.getElementById(
                'contact-number-value')
              .innerText)
            editPersonalDetailsForm.append('editEmail', document.getElementById('email-value').innerText)
            editPersonalDetailsForm.append('editAddress', document.getElementById('address-value').innerText)
            editPersonalDetailsForm.append('editTemporaryAddress', document.getElementById(
              'temporary-address-value').innerText)
            editPersonalDetailsForm.append('editCity', document.getElementById('city-value').innerText)
            editPersonalDetailsForm.append('editPincode', document.getElementById('pincode-value').innerText)
            editPersonalDetailsForm.append('editCountry', document.getElementById('country-value').innerText)
            editPersonalDetailsForm.append('editGender', document.getElementById('gender-value').innerText)

            document.getElementById('first-name').value = editPersonalDetailsForm.get('editFirstName')
            document.getElementById('last-name').value = editPersonalDetailsForm.get('editLastName')
            document.getElementById('date-of-birth').value = editPersonalDetailsForm.get('editDateOfBirth')
            document.getElementById('pan-number').value = editPersonalDetailsForm.get('editPancardNumber')
            document.getElementById('aadhar-number').value = editPersonalDetailsForm.get(
              'editAadharCardNumber')
            document.getElementById('contact-number').value = editPersonalDetailsForm.get('editContactNumber')
            document.getElementById('email').value = editPersonalDetailsForm.get('editEmail')
            document.getElementById('address').value = editPersonalDetailsForm.get('editAddress')
            document.getElementById('city').value = editPersonalDetailsForm.get('editCity')
            document.getElementById('pincode').value = editPersonalDetailsForm.get('editPincode')
            document.getElementById('temporary-address').value = editPersonalDetailsForm.get(
              'editTemporaryAddress')
            document.getElementById('country').value = editPersonalDetailsForm.get('editCountry')

            document.getElementById('body').classList.add('d-none');
            document.querySelector('.personal-details-modal').classList.remove('d-none');

          });

        }
      },

      error: function (error) {
        console.log("error", error)
      }
    });

    // *************************************************************Functions For Insert Model****************************************************

    //**************************************************************Personal Details Section Start***************************************************** 

    //Personal Details Insert Add
    function personalAddButton() {
      document.querySelector('.personal-details-modal-insert').classList.remove('d-none');
      document.querySelector('#body').classList.add('d-none');
    };

    //Personal Details Cancel Insert
    document.querySelector('#personal-details-cancel-insert').addEventListener('click', function (e) {
      e.preventDefault()
      document.querySelector('.personal-details-modal-insert').classList.add('d-none');
      document.querySelector('#body').classList.remove('d-none');
    });

    //Personal Details Submit
    document.querySelector('#personal-details-submit-insert').addEventListener('click', function (e) {

      console.log()
      e.preventDefault()

      let arrayresult = [];
      let result = {};

      // clearError();

      result.firstName = document.querySelector('#first-name-insert').value;
      result.lastName = document.querySelector('#last-name-insert').value;
      result.profilePhoto1 = document.querySelector('#photo-insert').value;
      result.DOB = document.querySelector('#date-of-birth-insert').value;
      //result.gender = document.querySelector("#gender-row-insert input[type='radio']:checked").value;
      let is = document.querySelector("#gender-row-insert input[type='radio']:checked"); 
        if(is != null)
        {
          document.getElementById('gender-message-insert').innerHTML = '';
          result.gender = document.querySelector("#gender-row-insert input[type='radio']").value;
        } 
        else
        {
          document.getElementById('gender-message-insert').innerHTML = 'Select';
          return;
        }
      result.contactNumber = document.querySelector('#contact-number-insert').value;
      result.temporaryContact = document.querySelector('#temp_contact-number-insert').value;
      result.pancard = "${user_id}";
      result.pancardPhoto = document.querySelector('#pan-photo-insert').value;
      result.email = document.querySelector('#email-insert').value;
      result.aadhar = document.querySelector('#aadhar-number-insert').value;
      result.aadharPhoto1 = document.querySelector('#aadhar-photo-insert').value;
      result.address = document.querySelector('#address-insert').value;
      result.country = document.querySelector('#country-insert').value;
      result.tempaddress = document.querySelector('#temporary-address-insert').value;
      result.tempemail = document.querySelector('#temp_email-insert').value;
      result.city = document.querySelector('#city-insert').value;
      result.pincode = document.querySelector('#pincode-insert').value;

      let firstnamevalid = dynamiCheckSpecialChar(result.firstName, 'first-name-message-insert');
      let lastnamevalid = dynamiCheckSpecialChar(result.lastName, 'last-name-message-insert');
      let addressvalid = dynamicLengthCheck(result.address , 'address-message-insert');
      let emailvalid = dynamicEmailCheck(result.email, 'email-message-insert');
      let cityvalid = dynamicLengthCheck(result.city, 'city-message-insert');
      let countryvalid = dynamicLengthCheck(result.country, 'country-message-insert');
      let contactvalid = dynamicContactCheck(result.contactNumber, 'contact-number-message-insert');
      let adharnumbervalid = dynamicAdharNumberCheck(result.aadhar, 'aadhar-number-message-insert');
      let tempContactNumberValid = dynamicTempContactNumber(result.temporaryContact, 'temporary-contact-number-message-insert');
      let tempemailvalid = dynamicTempEmail(result.tempemail, 'temp-email-message-insert');

      if(!firstnamevalid || !lastnamevalid || !addressvalid || !emailvalid || !cityvalid || !countryvalid || !contactvalid || !adharnumbervalid ||!tempContactNumber|| !tempemailvalid)
      {
        return;
      }


      let personalDetailsData = {
        "insert_user_personal_details": {
          "user_address": arrayresult,
          "user_contact": [],
          "user_info": []
        }
      }

      let photoArray = []

      let profilePhoto = document.getElementById("photo-insert").files[0]
      if (profilePhoto) {
        let filereader = new FileReader();
        filereader.readAsDataURL(profilePhoto);
        filereader.onload = function (evt) {
          let profilePhotoBase64 = evt.target.result;
          photoArray[0] = profilePhotoBase64
        }
      }

      let aadharPhoto = document.getElementById("aadhar-photo-insert").files[0]
      if (aadharPhoto) {
        let filereader = new FileReader();
        filereader.readAsDataURL(aadharPhoto);
        filereader.onload = function (evt) {
          let aadharPhotobase64 = evt.target.result;
          photoArray[1] = aadharPhotobase64
        }
      }

      let panPhoto = document.getElementById("pan-photo-insert").files[0]
      if (panPhoto) {
        let filereader = new FileReader();
        filereader.readAsDataURL(panPhoto);
        filereader.onload = function (evt) {
          let panphotobase64 = evt.target.result;
          photoArray[2] = panphotobase64
        }
      }

      setTimeout(function () {

        console.log(photoArray)
        let user_info = {}
        let user_contact = {}
        console.log(JSON.stringify(result))
        user_contact.user_lid = '${user_lid}'
        user_contact.resume_lid = resume_lid
        user_contact.contact_number = result.contactNumber
        user_contact.temp_contact_number = result.temporaryContact
        personalDetailsData.insert_user_personal_details.user_contact[0] = user_contact
        user_info.user_lid = '${user_lid}'
        user_info.resume_lid = resume_lid
        user_info.f_name = result.firstName
        user_info.l_name = result.lastName
        user_info.email = result.email
        user_info.temp_email = result.tempemail
        user_info.gender_lid = Number.parseInt(result.gender)
        user_info.pancard_no = '${user_id}'
        user_info.pancard_url_path = photoArray[2] //"C://Fakepath://pancardphoto"
        user_info.aadhar_card_url_path = photoArray[1] //"C://Fakepath://aadharphoto"
        user_info.profile_url_path = photoArray[0] //"C://Fakepath://profilephoto" 
        user_info.aadhar_card_no = result.aadhar
        user_info.date_of_birth = result.DOB
        user_info.nationality = result.country
        personalDetailsData.insert_user_personal_details.user_info[0] = user_info

        let addressObject = {}

        addressObject.user_lid = '${user_lid}'
        addressObject.resume_lid = resume_lid
        addressObject.address = result.address
        addressObject.city = result.city
        addressObject.pin_code = result.pincode
        addressObject.address_type_lid = 1

        let addressObject2 = {}
        addressObject2.user_lid = '${user_lid}'
        addressObject2.resume_lid = resume_lid
        addressObject2.address = result.tempaddress
        addressObject2.address_type_lid = 2
        addressObject2.city = result.city
        addressObject2.pin_code = result.pincode

        arrayresult[0] = addressObject
        arrayresult[1] = addressObject2


        console.log(JSON.stringify(personalDetailsData))
        let genderValue = ""
        if (Number.parseInt(result.gender) == 1) {
          genderValue = "Male"
        } else if (result.gender == 2) {
          genderValue = "Female"
        } else {
          genderValue = "Other"
        }
        console.log(genderValue)
        let options = {

          method: 'POST',
          headers: {

            'Content-Type': 'application/json;charset=utf-8'

          },
          body: JSON.stringify(personalDetailsData)

        }

        let fetchRes = fetch('/insert-personal-details', options);

        fetchRes.then(success => {

          if (success.status == 200) {
          document.getElementById('body').classList.remove('d-none');
          document.querySelector('.personal-details-modal-insert').classList.add('d-none')
          }
          else
          {
            alert('Check Data');
          }
        })
      }, 1000)

    })




    //**************************************************************Personal Details Section End*****************************************************

    // ***********************************************************Qualification Section for Insert*************************************************

    let qualificationType = `<option value disabled selected>--Select--</option>`;


    //Resume Qualification Add Button
    function resumequailficationaddbtn() {

      document.querySelector('.qualification-data-insert').innerHTML = "";
      document.querySelector('.qualification-modal-insert').classList.remove('d-none');
      document.querySelector('#body').classList.add('d-none');

      $.ajax({
        url: '/get-qualification-type',
        type: 'get',
        success: function (response) {
          for (let i = 0; i < response.length; i++) {
            qualificationType += `<option value="\${response[i].abbr}" >\${response[i].name}</option>`;
          }
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
        }
      });
    }

    // Qualification Section Add Button
    document.querySelector('.qualification-add-button').addEventListener('click', function () {

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

    //Qualification Data Insert Close
    document.querySelector("#qualification-cancel-insert").addEventListener('click', function () {
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.qualification-modal-insert').classList.add('d-none');
    });

    //Qualification Data Insert Submit
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
            resume_lid: '${resume_lid}',
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
        let fetchRes = fetch('/resume-insert-qualification', options);
        fetchRes.then(success => {
          if (success.status == 200) {
            document.getElementById('body').classList.remove('d-none');
            document.querySelector('.qualification-modal').classList.add('d-none');
          } else {
            alert('Check Qualification details');
          }
        })
      }, 1000)


    });

    // **************************************************Qualification Section End*******************************************************

    //*******************************************************Award Insert Model Section Start*****************************************


    //Resume Award Add Button
    function resumeawardaddbtn() {

      document.querySelector('#publication-award-div-insert').innerHTML = "";
      document.querySelector('.award-modal-insert').classList.remove('d-none');
      document.querySelector('#body').classList.add('d-none');

      let table = `  <div class="position-relative award_delete_btn d-flex" style="cursor: pointer;">  
    <div class="container">   
  <div id="publication-award-div" class="bg-white">
      <div id="award-display-div" class="award-rows px-3 px-sm-4 px-lg-4 mt-1">
        <div class="row">

          <div class="col-12 col-md-12 col-lg-6 col-sm-12">
            <div class="row p-3">
              <div class="col-md-2 ">
                <p class="h6">Award name<span class="required">*</span></p>
              </div>
              <div class="col-md-10"><input class="form-control awardName" type="text" id="award-name"></div>
            </div>
            <div class="row p-3">
              <div class="col-md-2 ">
                <p class="h6">Organisation <span class="required">*</span></p>
              </div>
              <div class="col-md-10 "><input class="form-control awardOrganization" type="text" id="award-organization"></div>
            </div>
            <div class="row p-3">
              <div class="col-md-2 ">
                <p class="h6">Organisation type<span class="required">*</span></p>
              </div>
              <div class="col-md-10 "><select class="form-control awardOrganizationType" id="award-organization-type">
                <option value="0">-select-</option>
                <option value="1">School</option>
                <option value="2">University</option>
                <option value="3">Industry</option>
              </select></div>
            </div>
          </div>

          <div class="col-12 col-md-12 col-lg-6 col-sm-12">
            <div class="row p-3">
              <div class="col-md-2">
                <p class="h6">Description<span class="required">*</span></p>
              </div>
              <div class="col-md-10 "><input class="form-control awardPlace" type="text" id="award-place"></div>
            </div>
            <div class="row p-3">
              <div class="col-md-2">
                <p class="h6">Received date<span class="required">*</span></p>
              </div>
              <div class="col-md-10"><input class="form-control awardRecieveDate" type="date" id="award-receive-date"></div>
            </div>
            <div class="row p-3">
              <div class="col-md-2 ">
                <p class="h6">Certificate<span class="required">*</span></p>
              </div>
              <!--Rana Changes--!>
              <div class="col-md-10"><input class="form-control awardCertificationImage" type="file" 
                 onchange="this.nextElementSibling.firstElementChild.src = window.URL.createObjectURL(this.files[0])">
                <p hidden><img class="award-certificate-preview" type="hidden" alt="your image" width="100"
                height="100" style="border: 1px solid #ced4da; margin-left:100px;" /></p>
              </div>
            </div>
          </div>
        </div>
      </div>
        <div id="delete_btn_award_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_award_symbol">
            <i class="fa-solid fa-trash text-danger fa-2x"></i>
         </div>
      </div>
      <hr style="height: 5px;">
    </div>
    </div> 
   `
      document.getElementById('publication-award-div-insert').insertAdjacentHTML("beforeend", table);
    };

    //Award Insert Cancel Button
    document.querySelector("#award-cancel-insert").addEventListener('click', function () {
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.award-modal-insert').classList.add('d-none');
    });

    //Award Add Button
    document.getElementById('award-add-button').addEventListener('click', function () {
      console.log("Award Add Button clicked");


      let table = `  <div class="position-relative award_delete_btn d-flex" style="cursor: pointer;">  
        <div class="container">   
      <div id="publication-award-div" class="bg-white">
          <div id="award-display-div" class="award-rows px-3 px-sm-4 px-lg-4 mt-1">
            <div class="row">

              <div class="col-12 col-md-12 col-lg-6 col-sm-12">
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Award name<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10"><input class="form-control awardName" type="text" id="award-name"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Organisation <span class="required">*</span></p>
                  </div>
                  <div class="col-md-10 "><input class="form-control awardOrganization" type="text" id="award-organization"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Organisation type<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10 "><select class="form-control awardOrganizationType" id="award-organization-type">
                    <option value="0">-select-</option>
                    <option value="1">School</option>
                    <option value="2">University</option>
                    <option value="3">Industry</option>
                  </select></div>
                </div>
              </div>

              <div class="col-12 col-md-12 col-lg-6 col-sm-12">
                <div class="row p-3">
                  <div class="col-md-2">
                    <p class="h6">Description<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10 "><input class="form-control awardPlace" type="text" id="award-place"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2">
                    <p class="h6">Received date<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10"><input class="form-control awardRecieveDate" type="date" id="award-receive-date"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Certificate<span class="required">*</span></p>
                  </div>
                  <!--Rana Changes--!>
                  <div class="col-md-10"><input class="form-control awardCertificationImage" type="file" 
                     onchange="this.nextElementSibling.firstElementChild.src = window.URL.createObjectURL(this.files[0])">
                    <p hidden><img class="award-certificate-preview" type="hidden" alt="your image" width="100"
                    height="100" style="border: 1px solid #ced4da; margin-left:100px;" /></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
            <div id="delete_btn_award_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_award_symbol">
                <i class="fa-solid fa-trash text-danger fa-2x"></i>
             </div>
          </div>
          <hr style="height: 5px;">
        </div>
        </div> 
       `
      document.getElementById('publication-award-div-insert').insertAdjacentHTML("beforeend", table);
    });

    //Award Insert Submit Btn
    document.querySelector('#award-submit-insert').addEventListener('click', function () {

      let div = '';
      let vjstableelement = document.querySelectorAll('.award-rows');
      let noofrows = vjstableelement.length;
      let resume_achievement = [];
      let outerloopcheck = true;

      for (let i = 0; i < noofrows; i++) {
        //to remove the red border
        vjstableelement[i].querySelector('.awardName').classList.remove('input-border');
        vjstableelement[i].querySelector('.awardOrganization').classList.remove('input-border');
        vjstableelement[i].querySelector('.awardPlace').classList.remove('input-border');
        vjstableelement[i].querySelector('.awardRecieveDate').classList.remove('input-border');
        vjstableelement[i].querySelector('.awardCertificationImage').classList.remove('input-border');
        vjstableelement[i].querySelector('.awardOrganizationType').classList.remove('input-border');

        let title = vjstableelement[i].querySelector('.awardName').value;
        let organization_name = vjstableelement[i].querySelector('.awardOrganization').value;
        let organization_type_lid = vjstableelement[i].querySelector('.awardOrganizationType').value;
        let description = vjstableelement[i].querySelector('.awardPlace').value;
        let achievement_date = vjstableelement[i].querySelector('.awardRecieveDate').value;
        let url_path = vjstableelement[i].querySelector('.awardCertificationImage').value;
        let awardCertificateSRC = vjstableelement[i].querySelector('.award-certificate-preview').src;

        let checktitle = tabledatacheck(title);
        let checkorganization_name = namecheck(organization_name);
        let checkdescription = tabledatacheck(description);
        let checkachievement_date = checkdate(achievement_date);
        let checkurl_path = tabledatacheck(url_path);
        let checkorganization_type_lid = checknotnull(organization_type_lid)

        //to add the red border according to validations
        if (checktitle == false) {
          vjstableelement[i].querySelector('.awardName').classList.add('input-border');
          return;
        } else if (checkorganization_name == false) {
          vjstableelement[i].querySelector('.awardOrganization').classList.add('input-border');
          return;
        } else if (checkdescription == false) {
          vjstableelement[i].querySelector('.awardPlace').classList.add('input-border');
          return;
        } else if (checkachievement_date == false) {
          vjstableelement[i].querySelector('.awardRecieveDate').classList.add('input-border');
          return;
        } else if (checkorganization_type_lid == false) {
          vjstableelement[i].querySelector('.awardOrganizationType').classList.add('input-border');
          return;
        } else if (checkurl_path == false) {
          vjstableelement[i].querySelector('.awardCertificationImage').classList.add('input-border');
          return;
        }

        let photoArray = []

        let awardCertificateInput = vjstableelement[i].querySelector('.awardCertificationImage').files[0]
        if (awardCertificateInput) {
          let filereader = new FileReader();
          filereader.readAsDataURL(awardCertificateInput);
          filereader.onload = function (evt) {
            let awardPhotoBase64 = evt.target.result;
            photoArray[i] = awardPhotoBase64
          }
        }


        setTimeout(function () {
          obj = {
            resume_lid: '${resume_lid}',
            achievement_type_lid: "2",
            title: title,
            organization_name: organization_name,
            organization_type_lid: organization_type_lid,
            achievement_date: achievement_date,
            description: description,
            url_path: photoArray[i]
          }


          let organizationType = organization_type_lid
          console.log(organizationType)
          if (organizationType == 1) {
            organizationType1 = "School"
          } else if (organizationType == 2) {
            organizationType1 = "University"
          } else {
            organizationType1 = "Industry"
          }


          let recievedAwardDate = changeDateFormat(achievement_date)
          div += `
  <div id="award-display-div" class=" px-3 px-sm-4 px-lg-4 mt-1">
              <div class="row">

                <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                  <div class="row pt-lg-3">
                    <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                      <p class="h5 pb-1">Award Name :</p>
                      <p class="h5 py-1">organization :</p>
                      <p class="h5 py-1">Organization Type :</p>

                    </div>
                    <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                      <p id="">\${title}\</p>
                      <p id="">\${organization_name}</p>
                      <p id="">\${organizationType1}\</p>
                    </div>
                  </div>
                </div>

                <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                  <div class="row pt-lg-3">
                    <div class="col-6 ps-lg-5 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                      <p class="h5 pb-1">Description :</p>
                      <p class="h5 pb-1">Recieved date :</p>
                      <p class="h5 py-1">Certificate :</p>
                    </div>
                    <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                      <p class="" id="">\${description}\</p>
                      <p class="" id="">\${recievedAwardDate}\</p>
                      <p ><i id="award-certificate-display" data-image = "\${awardCertificateSRC}" class="fa-solid fa-image text-success award-certificate-display"></i></p>

                    </div>
                  </div>
                </div>

              </div>
            </div>
              `

          resume_achievement.push(obj);
        }, 1000)
      }

      object = {
        "insert_award": resume_achievement
      }

      //Fetch Method
      setTimeout(function () {

        function postdata() {
          url = "/award_insert";
          params = {
            method: "POST",
            headers: {
              contentType: 'application/json'
            },
            body: JSON.stringify(object),
          }
          fetch(url, params).then((data) => {

            if (data.status == 200) {
              document.getElementById('body').classList.remove('d-none');
              document.querySelector('.award-modal-insert').classList.add('d-none');
            } else {
              console.log("Error");
              alert('Check Award Entries');
            }
          })
        }
        postdata()
      }, 1000)
    });


    // ***********************************************************Award Insert Model Section End*****************************************

    // ********************************************************Publication Section Start*************************************************

    //Resume Publication Add Button
    function resumepublicationaddbtn() {

      document.querySelector('#publication-modal-appending-div-insert').innerHTML = "";
      document.querySelector('.publication-modal-insert').classList.remove('d-none');
      document.querySelector('#body').classList.add('d-none');

      let table = ` <div class="position-relative publication_delete_btn d-flex" style="cursor: pointer;">
        <div class="container">
      
      <div class="publication-row px-3 px-sm-4 px-lg-4 mt-1"> 
        <div class="row">

          <div class="col-12 col-md-12 col-lg-6 col-sm-12">
            <div class="row p-3">
              <div class="col-md-2 ">
                <p class="h6">Role<span class="required">*</span></p>
              </div>
              <div class="col-md-10"><select class="form-control role" id="role">
                  <option >-Select-</option>
                  <option >Edited</option>
                  <option >Authored</option>
                </select></div>
            </div>
            <div class="row p-3">
              <div class="col-md-2 ">
                <p class="h6">Number of Authors<span class="required">*</span></p>
              </div>
              <div class="col-md-10 "><input  class="form-control number-of-authors" type="text"></div>
            </div>
            <div class="row p-3">
              <div class="col-md-2 ">
                <p class="h6">Book Title<span class="required">*</span></p>
              </div>
              <div class="col-md-10 "><input class="form-control book-title" type="text"></div>
            </div>
          </div>

          <div class="col-12 col-md-12 col-lg-6 col-sm-12">
            <div class="row p-3">
              <div class="col-md-2">
                <p class="h6">Publisher<span class="required">*</span></p>
              </div>
              <div class="col-md-10 "><input class="form-control publisher" type="text"></div>
            </div>
            <div class="row p-3">
              <div class="col-md-2">
                <p class="h6">Year of Publication<span class="required">*</span></p>
              </div>
              <div class="col-md-10"><input class="form-control year-of-publication" type="text"></div>
            </div>
            <div class="row p-3">
              <div class="col-md-2 ">
                <p class="h6">Certificate<span class="required">*</span></p>
              </div>
              <!--Rana Chanegs--!>
              <div class="col-md-10"><input class="form-control publication-certification" type="file"
                onchange="this.nextElementSibling.firstElementChild.src = window.URL.createObjectURL(this.files[0])">
                  <p hidden><img class="publication-certificate-preview" type="hidden" alt="your image" width="100"
                   height="100" style="border: 1px solid #ced4da; margin-left:100px;" /></p>
              </div>
            </div>
          </div>
        </div>
         <div id="delete_btn_publication_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_publication_symbol">
            <i class="fa-solid fa-trash text-danger fa-2x"></i>
         </div>
      </div>
      <hr style="height: 5px;">
  </div>
      </div>
    `
      document.getElementById('publication-modal-appending-div-insert').insertAdjacentHTML("beforeend", table);
    };

    //Publication Insert cancel Btn]
    document.querySelector("#publication-cancel-insert").addEventListener('click', function () {
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.publication-modal-insert').classList.add('d-none');
    });

    //Publication Add btn
    document.querySelector('#publication-add-button').addEventListener('click', function () {

      let table = ` <div class="position-relative publication_delete_btn d-flex" style="cursor: pointer;">
      <div class="container">
    
    <div class="publication-row px-3 px-sm-4 px-lg-4 mt-1"> 
      <div class="row">

        <div class="col-12 col-md-12 col-lg-6 col-sm-12">
          <div class="row p-3">
            <div class="col-md-2 ">
              <p class="h6">Role<span class="required">*</span></p>
            </div>
            <div class="col-md-10"><select class="form-control role" id="role">
                <option >-Select-</option>
                <option >Edited</option>
                <option >Authored</option>
              </select></div>
          </div>
          <div class="row p-3">
            <div class="col-md-2 ">
              <p class="h6">Number of Authors<span class="required">*</span></p>
            </div>
            <div class="col-md-10 "><input  class="form-control number-of-authors" type="text"></div>
          </div>
          <div class="row p-3">
            <div class="col-md-2 ">
              <p class="h6">Book Title<span class="required">*</span></p>
            </div>
            <div class="col-md-10 "><input class="form-control book-title" type="text"></div>
          </div>
        </div>

        <div class="col-12 col-md-12 col-lg-6 col-sm-12">
          <div class="row p-3">
            <div class="col-md-2">
              <p class="h6">Publisher<span class="required">*</span></p>
            </div>
            <div class="col-md-10 "><input class="form-control publisher" type="text"></div>
          </div>
          <div class="row p-3">
            <div class="col-md-2">
              <p class="h6">Year of Publication<span class="required">*</span></p>
            </div>
            <div class="col-md-10"><input class="form-control year-of-publication" type="text"></div>
          </div>
          <div class="row p-3">
            <div class="col-md-2 ">
              <p class="h6">Certificate<span class="required">*</span></p>
            </div>
            <!--Rana Chanegs--!>
            <div class="col-md-10"><input class="form-control publication-certification" type="file"
              onchange="this.nextElementSibling.firstElementChild.src = window.URL.createObjectURL(this.files[0])">
                <p hidden><img class="publication-certificate-preview" type="hidden" alt="your image" width="100"
                 height="100" style="border: 1px solid #ced4da; margin-left:100px;" /></p>
            </div>
          </div>
        </div>
      </div>
       <div id="delete_btn_publication_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_publication_symbol">
          <i class="fa-solid fa-trash text-danger fa-2x"></i>
       </div>
    </div>
    <hr style="height: 5px;">
</div>
    </div>
  `
      document.getElementById('publication-modal-appending-div-insert').insertAdjacentHTML("beforeend", table);
    });

    //Insert Publication Submit Button
    document.querySelector("#publication-submit-insert").addEventListener('click', function () {

      let div = ''
      let publicationTableArray = []
      let publicationRow = document.querySelectorAll('.publication-row')
      for (i = 0; i < publicationRow.length; i++) {
        //to remove the red border
        publicationRow[i].querySelector('.publisher').classList.remove('input-border');
        publicationRow[i].querySelector('.number-of-authors').classList.remove('input-border');
        publicationRow[i].querySelector('.year-of-publication').classList.remove('input-border');
        publicationRow[i].querySelector('.book-title').classList.remove('input-border');
        publicationRow[i].querySelector('.publication-certification').classList.remove('input-border');

        let publicationRole = publicationRow[i].querySelector('.role').value;
        let publicationPublisher = publicationRow[i].querySelector('.publisher').value;
        let publicationNumberOfAuthors = publicationRow[i].querySelector('.number-of-authors').value;
        let publicationYearOfPublication = publicationRow[i].querySelector('.year-of-publication').value;
        let resume_publication_lid = publicationRow[i].dataset.publicationlid;
        console.log("PUBLICATION LID>>>>>>>>", resume_publication_lid)
        let publicationBookTitle = publicationRow[i].querySelector('.book-title').value;
        let publicationCertificate1 = publicationRow[i].querySelector('.publication-certification').value;
        let publicationCertificateSRC = publicationRow[i].querySelector('.publication-certificate-preview').src;

        let checkPublicationPublisher = tabledatacheck(publicationPublisher);
        let checkPublicationNumberOfAuthors = tabledatacheck(publicationNumberOfAuthors);
        let checkPublicationYearOfPublication = tabledatacheck(publicationYearOfPublication);
        let checkPublicationBookTitle = tabledatacheck(publicationBookTitle);
        let checkPublicationCertificate = tabledatacheck(publicationCertificate1);

        // to add the red border according to validations
        if (checkPublicationPublisher == false) {
          publicationRow[i].querySelector('.publisher').classList.add('input-border');
          return;
        } else if (checkPublicationNumberOfAuthors == false) {
          publicationRow[i].querySelector('.number-of-authors').classList.add('input-border');
          return;
        } else if (checkPublicationYearOfPublication == false) {
          publicationRow[i].querySelector('.year-of-publication').classList.add('input-border');
          return;
        } else if (checkPublicationBookTitle == false) {
          publicationRow[i].querySelector('.book-title').classList.add('input-border');
          return;
        } else if (checkPublicationCertificate == false) {
          publicationRow[i].querySelector('.publication-certification').classList.add('input-border');
          return;
        }

        let photoArray = []

        let publicationCertificateInput = publicationRow[i].querySelector('.publication-certification').files[0]
        if (publicationCertificateInput) {
          let filereader = new FileReader();
          filereader.readAsDataURL(publicationCertificateInput);
          filereader.onload = function (evt) {
            let publicationPhotoBase64 = evt.target.result;
            photoArray[i] = publicationPhotoBase64
          }
        }

        setTimeout(function () {


          object = {
            resume_lid: '${resume_lid}',
            achievement_type_lid: "1",
            resume_achievement_lid: resume_publication_lid,
            publication_role: publicationRole,
            no_of_authors: publicationNumberOfAuthors,
            title: publicationBookTitle,
            publisher: publicationPublisher,
            year_of_publication: publicationYearOfPublication,
            publication_url_path: photoArray[i]
          }
          publicationTableArray.push(object)


          div += `   
<div class=" px-3 px-sm-4 px-lg-4 mt-1">
            <div class="row">
           <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                <div class="row pt-lg-3">
                  <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                    <p class="h5 pb-1">Role :</p>
                    <p class="h5 py-1">No. of Authors :</p>
                    <p class="h5 py-1">Book Title :</p>

                  </div>
                  <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                    <p id="">\${publicationRole}\</p>
                    <p id="">\${publicationNumberOfAuthors}\ </p>
                    <p id="">\${publicationBookTitle}\</p>
                  </div>
                </div>
              </div>

              <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                <div class="row pt-lg-3">
                  <div class="col-6 ps-lg-5 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                    <p class="h5 pb-1">Publisher :</p>
                    <p class="h5 pb-1">Publication Year:</p>
                    <p class="h5 py-1">Certificate :</p>
                  </div>
                  <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                    <p class="" id="">\${publicationPublisher}\</p>
                    <p class="" id="">\${publicationYearOfPublication}\</p>
                    <p><i id="publication-certificate-display" data-image = "\${publicationCertificateSRC}" class="fa-solid fa-image text-success publication-certificate-display"></i></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
            `
        }, 1000)
      }

      let publicationTableData = {
        "insert_publication": publicationTableArray
      }
      setTimeout(function () {

        let options = {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json;charset=utf-8'
          },
          body: JSON.stringify(publicationTableData)
        }
        let fetchRes = fetch("/resume-publication-insert", options);
        fetchRes.then(success => {
          if (success.status == 200) {
            document.getElementById('body').classList.remove('d-none');
            document.querySelector('.publication-modal').classList.add('d-none');
          } else {
            alert('Check');
          }
        })
      }, 1000)
    });

    // ********************************************************Publication Section End***************************************************

    // ***************************************************Research Section Insert Start***************************************************

    //Resume Research Add Button
    function resumeresearchaddbtn() {

      document.querySelector('#research-data-insert').innerHTML = "";
      document.querySelector('.research-modal-insert').classList.remove('d-none');
      document.querySelector('#body').classList.add('d-none');

      let table = ` 
<div class="position-relative research_delete_btn d-flex" style="cursor: pointer;"> 
<div  class="research-row px-3 px-sm-4 px-lg-4 mt-1 bg-white container">
      <div class="row">

        <div class="col-12 col-md-12 col-lg-6 col-sm-12">
          <div class="row p-3">
            <div class="col-md-2 ">
              <p class="h6">Title<span class="required">*</span></p>
            </div>
            <div class="col-md-10 "><input name="journal_name" class="form-control research_Journal_name"
                type="text"></div>
          </div>
          <div class="row p-3">
            <div class="col-md-2 ">
              <p class="h6">Volume Year<span class="required">*</span></p>
            </div>
            <div class="col-md-10 "><input name="volume_year" class="form-control research_volume_year" type="text"></div>
          </div>
        </div>
        <div class="col-12 col-md-12 col-lg-6 col-sm-12">
          <div class="row p-3">
            <div class="col-md-2">
              <p class="h6">Description<span class="required">*</span></p>
            </div>
            <div class="col-md-10 "><input name="number" class="form-control research_description" type="text"></div>
          </div>
          <div class="row p-3">
            <div class="col-md-2">
              <p class="h6">Category<span class="required">*</span></p>
            </div>
            <div class="col-md-10"><input name="category" class="form-control research_category" type="text"></div>
          </div>
          <div class="row p-3">
            <div class="col-md-2 ">
              <p class="h6">Certificate<span class="required">*</span></p>
            </div>
            <!--Rana Changes--!>
            <div class="col-md-10"><input class="form-control research_photo" type="file"
              onchange="this.nextElementSibling.firstElementChild.src = window.URL.createObjectURL(this.files[0])">
             <p hidden><img class="research-certificate-preview" type="hidden" alt="your image" width="100"
                height="100" style="border: 1px solid #ced4da; margin-left:100px;" /></p>
            </div>
          </div>
        </div>
      </div>
      <hr style="height: 5px;"> 
      </div>
     <div id="delete_btn_research_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_research_symbol">
          <i class="fa-solid fa-trash text-danger fa-2x"></i>
       </div>
  </div>`

      document.getElementById('research-data-insert').insertAdjacentHTML("beforeend", table);
    };

    //Reserach Insert Cancel Button
    document.querySelector("#research-cancel-insert").addEventListener('click', function () {
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.research-modal-insert').classList.add('d-none');
    });

    //Reserach Add Button
    document.getElementById('research-add-button').addEventListener('click', function () {

      let table = ` 
<div class="position-relative research_delete_btn d-flex" style="cursor: pointer;"> 
<div  class="research-row px-3 px-sm-4 px-lg-4 mt-1 bg-white container">
      <div class="row">

        <div class="col-12 col-md-12 col-lg-6 col-sm-12">
          <div class="row p-3">
            <div class="col-md-2 ">
              <p class="h6">Title<span class="required">*</span></p>
            </div>
            <div class="col-md-10 "><input name="journal_name" class="form-control research_Journal_name"
                type="text"></div>
          </div>
          <div class="row p-3">
            <div class="col-md-2 ">
              <p class="h6">Volume Year<span class="required">*</span></p>
            </div>
            <div class="col-md-10 "><input name="volume_year" class="form-control research_volume_year" type="text"></div>
          </div>
        </div>
        <div class="col-12 col-md-12 col-lg-6 col-sm-12">
          <div class="row p-3">
            <div class="col-md-2">
              <p class="h6">Description<span class="required">*</span></p>
            </div>
            <div class="col-md-10 "><input name="number" class="form-control research_description" type="text"></div>
          </div>
          <div class="row p-3">
            <div class="col-md-2">
              <p class="h6">Category<span class="required">*</span></p>
            </div>
            <div class="col-md-10"><input name="category" class="form-control research_category" type="text"></div>
          </div>
          <div class="row p-3">
            <div class="col-md-2 ">
              <p class="h6">Certificate<span class="required">*</span></p>
            </div>
            <!--Rana Changes--!>
            <div class="col-md-10"><input class="form-control research_photo" type="file"
              onchange="this.nextElementSibling.firstElementChild.src = window.URL.createObjectURL(this.files[0])">
             <p hidden><img class="research-certificate-preview" type="hidden" alt="your image" width="100"
                height="100" style="border: 1px solid #ced4da; margin-left:100px;" /></p>
            </div>
          </div>
        </div>
      </div>
      <hr style="height: 5px;"> 
      </div>
     <div id="delete_btn_research_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_research_symbol">
          <i class="fa-solid fa-trash text-danger fa-2x"></i>
       </div>
  </div>`

      document.getElementById('research-data-insert').insertAdjacentHTML("beforeend", table);

    });

    //Research Submit Button
    document.querySelector('#research-submit-insert').addEventListener('click', function () {
      console.log("research button clicked");
      let researchTableElem = document.querySelectorAll('.research-row');
      let noofrows = researchTableElem.length;
      console.log("no of rows", noofrows);
      let resumeResearchTable = [];
      let div = ''
      for (let j = 0; j < noofrows; j++) {
        researchTableElem[j].querySelector('.research_Journal_name').classList.remove('input-border');
        researchTableElem[j].querySelector('.research_volume_year').classList.remove('input-border');
        researchTableElem[j].querySelector('.research_description').classList.remove('input-border');
        researchTableElem[j].querySelector('.research_category').classList.remove('input-border');
        researchTableElem[j].querySelector('.research_photo').classList.remove('input-border');

        let Journal_name = researchTableElem[j].querySelector('.research_Journal_name').value;
        let volume_year = researchTableElem[j].querySelector('.research_volume_year').value;
        let description = researchTableElem[j].querySelector('.research_description').value;
        let category = researchTableElem[j].querySelector('.research_category').value;


        let research__lid = researchTableElem[j].dataset.researchlid
        console.log("RESEARCH>>>>>>>>", research__lid)
        let researchCertificateSRC = researchTableElem[j].querySelector('.research-certificate-preview').src;


        let check_journal_name = tabledatacheck(Journal_name);
        let check_volume_year = yearcheck(volume_year);
        let check_description = namecheck(description);
        let check_category = namecheck(category);


        if (check_journal_name == false) {
          researchTableElem[j].querySelector('.research_Journal_name').classList.add('input-border');
          return;
        }

        if (check_volume_year == false) {
          researchTableElem[j].querySelector('.research_volume_year').classList.add('input-border');
          return;
        }

        if (check_description == false) {
          researchTableElem[j].querySelector('.research_description').classList.add('input-border');
          return;
        }

        if (check_category == false) {
          researchTableElem[j].querySelector('.research_category').classList.add('input-border');
          return;
        }



        let photoArray = []
        let researchCertificateInput = researchTableElem[j].querySelector('.research_photo').files[0]
        if (researchCertificateInput) {
          let filereader = new FileReader();
          filereader.readAsDataURL(researchCertificateInput);
          filereader.onload = function (evt) {
            let researchPhotoBase64 = evt.target.result;
            photoArray[j] = researchPhotoBase64
          }
        }
        console.log(photoArray[j])

        setTimeout(function () {


          obj = {
            resume_lid: resume_lid,
            achievement_type_lid: "3",
            resume_achievement_lid: research__lid,
            title: Journal_name,
            volume_year: volume_year,
            description: description,
            category: category,
            research_url_path: photoArray[j] //"c/fakepath://gghs" 
          }

          console.log(JSON.stringify(obj))
          div += `<div  class=" px-3 px-sm-4 px-lg-4 mt-1 ">
                  <div class="row">

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 py-1">Title :</p>
                          <p class="h5 py-1">Volume year :</p>

                        </div>
                        <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                          <p id="">\${Journal_name}\</p>
                          <p id="">\${volume_year}\</p>
                        </div>
                      </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6 ps-lg-5 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 pb-1">Description :</p>
                          <p class="h5 pb-1">Category :</p>
                          <p class="h5 py-1">Certificate :</p>
                        </div>
                        <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                          <p class="" id="">\${description}\</p>
                          <p class="" id="">\${category}\</p>
                          <p><i id="research-certificate-display" data-image = "\${researchCertificateSRC}" class="fa-solid fa-image text-success research-certificate-display"></i></p>

                        </div>
                      </div>
                    </div>
                  </div>
                </div>                  
        `
          resumeResearchTable.push(obj);
        }, 1000)
      }

      object = {
        "insert_research": resumeResearchTable
      }
      console.log('resrearch : ', JSON.stringify(object));
      setTimeout(function () {

        let options = {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json;charset=utf-8'
          },
          body: JSON.stringify(object),
        }
        let fetchRes = fetch("/resume-data-insert", options);
        fetchRes.then(success => {
          if (success.status == 200) {
            document.getElementById('body').classList.remove('d-none');
            document.querySelector('.research-modal').classList.add('d-none');
          } else {
            alert('Check');
          }
        })
      }, 1000)





    });


    // ********************************************************Research Section Insert End***************************************************

    // ******************************************************Certification Section Insert Start**********************************************

    //Resume Certification Add Button
    function resumecertificationaddbtn() {
      document.querySelector('#certification-data-insert').innerHTML = "";
      document.querySelector('.certification-modal-insert').classList.remove('d-none');
      document.querySelector('#body').classList.add('d-none');

      let table = `  
    <div class="position-relative certification_delete_btn d-flex" style="cursor: pointer;"> 
        <div class="container">
            <div class="certification-row px-3 px-sm-4 px-lg-4 mt-1">
                <div class="row">
              <!-- px-lg-5 -->
                    <div class="col-12 col-md-12 col-lg-12 col-sm-12 ">

                        <div class="row p-3">
                          <div class="col-md-2 ">
                            <p class="h6">Certification Name: <span class="required">*</span></p>
                          </div>
                          <div class="col-md-10 "><input class="form-control certification-certificate" type="text"></div>
                        </div>

                        <div class="row p-3">
                          <div class="col-md-2 ">
                            <p class="h6">Institution: <span class="required">*</span></p>
                          </div>
                          <div class="col-md-10 "><input class="form-control certification-institution" type="text"></div>
                        </div>

                        <div class="row p-3">
                          <div class="col-md-2 ">
                            <p class="h6">Recieved Year: <span class="required">*</span></p>
                          </div>
                          <div class="col-md-10 "><input class="form-control certification-YOP" type="text"></div>
                        </div>

                        <div class="row p-3">
                          <div class="col-md-2 ">
                            <p class="h6">Certificate: <span class="required">*</span></p>
                          </div>
                          <div class="col-md-10 "><input class="form-control certificate-photo"

                             onchange="this.nextElementSibling.firstElementChild.src = window.URL.createObjectURL(this.files[0])" type="file">
                              <p hidden><img class="certificate-photo-preview" type="hidden" alt="your image" width="100"

                             height="100" style="border: 1px solid #ced4da; margin-left:100px;" /></p>
                         </div>
                    </div>
                </div>
            </div>
            <div id="delete_btn_certification_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_certification_symbol">
              <i class="fa-solid fa-trash text-danger fa-2x"></i>
           </div>
           <hr style="height: 5px;">
        </div>
      </div>
   </div>      `

      document.getElementById('certification-data-insert').insertAdjacentHTML("beforeend", table);
    };

    //Certification Cancel Button
    document.querySelector('#certification-cancel-insert').addEventListener('click', function () {
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.certification-modal-insert').classList.add('d-none');
    });

    //Certifiaction Add button
    document.querySelector('#certification-add-button').addEventListener('click', function () {
      console.log("entered inside certification add button")

      let table = `  
    <div class="position-relative certification_delete_btn d-flex" style="cursor: pointer;"> 
        <div class="container">
            <div class="certification-row px-3 px-sm-4 px-lg-4 mt-1">
                <div class="row">
              <!-- px-lg-5 -->
                    <div class="col-12 col-md-12 col-lg-12 col-sm-12 ">

                        <div class="row p-3">
                          <div class="col-md-2 ">
                            <p class="h6">Certification Name: <span class="required">*</span></p>
                          </div>
                          <div class="col-md-10 "><input class="form-control certification-certificate" type="text"></div>
                        </div>

                        <div class="row p-3">
                          <div class="col-md-2 ">
                            <p class="h6">Institution: <span class="required">*</span></p>
                          </div>
                          <div class="col-md-10 "><input class="form-control certification-institution" type="text"></div>
                        </div>

                        <div class="row p-3">
                          <div class="col-md-2 ">
                            <p class="h6">Recieved Year: <span class="required">*</span></p>
                          </div>
                          <div class="col-md-10 "><input class="form-control certification-YOP" type="text"></div>
                        </div>

                        <div class="row p-3">
                          <div class="col-md-2 ">
                            <p class="h6">Certificate: <span class="required">*</span></p>
                          </div>
                          <div class="col-md-10 "><input class="form-control certificate-photo"

                             onchange="this.nextElementSibling.firstElementChild.src = window.URL.createObjectURL(this.files[0])" type="file">
                              <p hidden><img class="certificate-photo-preview" type="hidden" alt="your image" width="100"

                             height="100" style="border: 1px solid #ced4da; margin-left:100px;" /></p>
                         </div>
                    </div>
                </div>
            </div>
            <div id="delete_btn_certification_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_certification_symbol">
              <i class="fa-solid fa-trash text-danger fa-2x"></i>
           </div>
           <hr style="height: 5px;">
        </div>
      </div>
   </div>      `

      document.getElementById('certification-data-insert').insertAdjacentHTML("beforeend", table);
    });

    // Certification Submit Insert Button
    document.querySelector('#certification-submit-insert').addEventListener('click', function (e) {

      e.preventDefault()
      let div = ''
      let certificationTableArray = []
      let certificationRow = document.querySelectorAll('.certification-row')
      for (i = 0; i < certificationRow.length; i++) {

        //to remove the red border
        certificationRow[i].querySelector('.certification-certificate').classList.remove('input-border');
        certificationRow[i].querySelector('.certification-institution').classList.remove('input-border');
        certificationRow[i].querySelector('.certification-YOP').classList.remove('input-border');
        certificationRow[i].querySelector('.certificate-photo').classList.remove('input-border');

        let professionalCertificateName = certificationRow[i].querySelector('.certification-certificate').value;
        let professionalInstitution = certificationRow[i].querySelector('.certification-institution').value;
        let professionalYOP = certificationRow[i].querySelector('.certification-YOP').value;
        let professionalCertification = certificationRow[i].querySelector('.certificate-photo').value;

        let professionalCertificationCertificateSRC = certificationRow[i].querySelector(
          '.certificate-photo-preview').src;


        let checkCertificateName = namecheck(professionalCertificateName);
        let checkInstitution = namecheck(professionalInstitution);
        let checkYOP = yearcheck(professionalYOP);
        let checkCertification = tabledatacheck(professionalCertification);

        console.log(checkCertificateName)
        console.log(checkInstitution)
        console.log(checkYOP)
        // console.log(checkSubject)


        //  to add the red border according to validations
        if (checkCertificateName == false) {
          certificationRow[i].querySelector('.certification-certificate').classList.add('input-border');
          return;
        } else if (checkInstitution == false) {
          certificationRow[i].querySelector('.certification-institution').classList.add('input-border');
          return;
        } else if (checkYOP == false) {
          certificationRow[i].querySelector('.certification-YOP').classList.add('input-border');
          return;
        } else if (checkCertification == false) {
          certificationRow[i].querySelector('.certificate-photo').classList.add('input-border');
          return;
        }

        let photoArray = []

        let professionalCertificateInput = certificationRow[i].querySelector('.certificate-photo').files[0]
        if (professionalCertificateInput) {
          let filereader = new FileReader();
          filereader.readAsDataURL(professionalCertificateInput);
          filereader.onload = function (evt) {
            let professionalPhotoBase64 = evt.target.result;
            photoArray[i] = professionalPhotoBase64
          }
        }
        setTimeout(function () {

          object = {
            resume_lid: resume_lid,
            qualification_type_lid: 4,
            topic_of_study: professionalCertificateName,
            institute: professionalInstitution,
            year_of_passing: professionalYOP,
            url_path: photoArray[i],
          }

          div += `
            <div class="text-block right " id="preview-qualification-div">
              <div class="card-body preview-certification-div">

                <div  class=" px-3 px-sm-4 px-lg-4 mt-1">
                  <div class="row">

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 pb-1">Certification name:</p>
                        </div>
                        <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                          <p id="">\${professionalCertificateName}\</p>
                        </div>
                      </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6 ps-lg-6 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 pb-1">Institution :</p>
                        </div>
                        <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                          <p class="" id="">\${professionalInstitution}\</p>
                        </div>
                      </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 pb-1">Recieved Year:</p>
                        </div>
                        <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                          <p id="">\${professionalYOP}\</p>
                        </div>
                      </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 pb-1">Certificate:</p>
                        </div>
                        <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                          <p id=""><i class="fa-solid fa-image text-success"></i></p>
                        </div>
                      </div>
                    </div>

                  </div>
                </div>

              </div>
            </div>

           `

          certificationTableArray.push(object)
        }, 1000)
      }
      let certificationTableData = {
        "qualificationDetails": certificationTableArray
      }
      console.log(JSON.stringify(certificationTableData))
      setTimeout(function () {

        let options = {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json;charset=utf-8'
          },
          body: JSON.stringify(certificationTableData)
        }
        let fetchRes = fetch('/resume-certification-insert', options);
        fetchRes.then(success => {
          if (success.status == 200) {
            document.getElementById('body').classList.remove('d-none');
            document.querySelector('.certification-modal').classList.add('d-none');
          } else {
            alert('Check Professional certificate details');
          }
        })
      }, 1000)
    })

    // ******************************************************Certification Section Insert End**********************************************

    //********************************************************Bank details Section Start***************************************************

    // Bank detail Resume Add Button
    function bankdetailsadd() {
      if (bankDataDB == 1) {
        $.ajax({
            url: '/get-bank-account-type',
            type: 'get',
            success: function (response) {
              for (let i = 0; i < response.length; i++) {
                bankAccountType +=`<option value=\${response[i].id}\ >\${response[i].account_type}\</option>`;
              }
              document.getElementById('bank-account-type').insertAdjacentHTML("beforeend", bankAccountType)
            },
            error: function (error) {
              console.log("Error::::::::::::", error);
            }
          })
          ++bankDataDB;
      }

      let editBankDetailsForm = new FormData()

      document.getElementById('bank-name').value = editBankDetailsForm.get('editBankName')
      document.getElementById('bank-branch').value = editBankDetailsForm.get('editBranchName')
      document.getElementById('bank-ifsc-code').value = editBankDetailsForm.get('editIfscCode')
      document.getElementById('bank-micr-code').value = editBankDetailsForm.get('editMicrCode')
      document.getElementById('bank-account-number').value = editBankDetailsForm.get('editAccountNumber')
      document.getElementById('bank-account-type').value = editBankDetailsForm.get('editAccountType')


      document.getElementById('body').classList.add('d-none');
      document.querySelector('.bank-details-modal-insert').classList.remove('d-none');
    }


    //Bank details Cancel Insert
    document.querySelector('#bank-details-cancel-insert').addEventListener('click', function () {
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.bank-details-modal-insert').classList.add('d-none');
    })

    //resume Bank details Submit Button
    document.querySelector('#bank-details-submit-insert').addEventListener('click', function () {

      let flag3 = document.getElementById('bank-account-type').value
      if (flag3 == 1) {
        accountType1 = "Current Account"
      } else if (flag3 == 2) {
        accountType1 = "Savings Account"
      } else if (flag3 == 3) {
        accountType1 = "Salary Account"
      } else if (flag3 == 4) {
        accountType1 = "Non Residential Ordinary Account"
      } else {
        accountType1 = "Reccuring Deposit Account"
      }

      let submitBankDetailsForm = new FormData()

      submitBankDetailsForm.append('bankName', document.getElementById('bank-name-insert').value)
      submitBankDetailsForm.append('branchName', document.getElementById('bank-branch-insert').value)
      submitBankDetailsForm.append('ifscCode', document.getElementById('bank-ifsc-code-insert').value)
      submitBankDetailsForm.append('micrCode', document.getElementById('bank-micr-code-insert').value)
      submitBankDetailsForm.append('accountNumber', document.getElementById('bank-account-number-insert').value)
      submitBankDetailsForm.append('accountType', accountType1)
      // submitBankDetailsForm.append('cancelledCheckPhoto', document.getElementById('cancelled_cheque_Photo-insert').value)

      let facultyBankNameValid = dynamicLengthCheck(submitBankDetailsForm.get('bankName'), 'bank-name-message-insert');
      let facultyBankBranchValid = dynamicLengthCheck(submitBankDetailsForm.get('branchName'), 'bank-branch-message-insert');
      let facultyIfscCodevalid = dynamicIFSCCheck(submitBankDetailsForm.get('ifscCode'), 'bank-ifsc-code-message-insert');
      let facultyAccountNumberValid = dynamicBankAcountNumber(submitBankDetailsForm.get('accountNumber'), 'bank-account-number-message-insert');

      if(!facultyBankNameValid || !facultyBankBranchValid || !facultyIfscCodevalid || !facultyAccountNumberValid)
      {
        return;
      }



      let photoArray = []

      let bankPhoto = document.getElementById("cancelled_cheque_Photo-insert").files[0]
      if (bankPhoto) {
        let filereader = new FileReader();
        filereader.readAsDataURL(bankPhoto);
        filereader.onload = function (evt) {
          let bankPhotoBase64 = evt.target.result;
          photoArray[0] = bankPhotoBase64
        }
      }

      setTimeout(function () {

        let bankDetailsJson = {
          "insert_bank_data": []
        }
        console.log(bankDetailsJson)
        let bank_detail = {};
        bank_detail.user_lid = '${user_lid}',
        bank_detail.resume_lid = resume_lid,
        bank_detail.bank_name = document.querySelector('#bank-name-insert').value;
        bank_detail.branch_name = document.querySelector('#bank-branch-insert').value;
        bank_detail.ifsc_code = document.querySelector('#bank-ifsc-code-insert').value;
        bank_detail.micr_code = document.querySelector('#bank-micr-code-insert').value;
        bank_detail.account_number = document.querySelector('#bank-account-number-insert').value;
        bank_detail.bank_account_type_lid = document.querySelector('#bank-account-type-insert').value;
        bank_detail.url_path = photoArray[0];
        bankDetailsJson.insert_bank_data[0] = bank_detail
        console.log(JSON.stringify(bankDetailsJson))

        function postdata() {
          url = "/insert-bank-details";
          params = {
            method: 'post',
            headers: {
              'content-Type': 'application/json'
            },
            body: JSON.stringify(bankDetailsJson),
          }
          fetch(url, params).then((data) => {
            if (data.status == 200) {
              console.log(data);

              document.getElementById('body').classList.remove('d-none');
              document.querySelector('.bank-details-modal-insert').classList.add('d-none');
              document.getElementById('bank-name-value').innerText = submitBankDetailsForm.get('bankName')
              document.getElementById('branch-name-value').innerText = submitBankDetailsForm.get(
                'branchName')
              document.getElementById('ifsc-code-value').innerText = submitBankDetailsForm.get('ifscCode')
              document.getElementById('micr-code-value').innerText = submitBankDetailsForm.get('micrCode')
              document.getElementById('account-number-value').innerText = submitBankDetailsForm.get(
                'accountNumber')
              document.getElementById('account-type-value').innerText = submitBankDetailsForm.get(
                'accountType')

            }
          })
        }
        postdata()
      }, 1000)

    })
    //********************************************************Bank details Section Start***************************************************



    document.querySelector('#body').addEventListener('click', function (e) {
      console.log('target', e.target);
      if (e.target.classList.contains('addbtn-qualification') || findClosest(e.target, 'addbtn-qualification')) {
        resumequailficationaddbtn();
      }
      if (e.target.classList.contains('addbtn-workexperience') || findClosest(e.target, 'addbtn-workexperience')) {
        resumeworkexperienceaddbtn();
      }
      if (e.target.classList.contains('addbtn-award') || findClosest(e.target, 'addbtn-award')) {
        resumeawardaddbtn();
      }
      if (e.target.classList.contains('addbtn-publication') || findClosest(e.target, 'addbtn-publication')) {
        resumepublicationaddbtn();
      }
      if (e.target.classList.contains('addbtn-research') || findClosest(e.target, 'addbtn-research')) {
        resumeresearchaddbtn();
      }
      if (e.target.classList.contains('addbtn-certification') || findClosest(e.target, 'addbtn-certification')) {
        resumecertificationaddbtn();
      }
      if (e.target.classList.contains('certification-edit-box') || findClosest(e.target, 'addbtn-certification')) {
        resumecertificationEditbtn();
      }
      if (e.target.classList.contains('personalinsert') || findClosest(e.target, 'addbtn-certification')) {
        personalAddButton()
      }
      if (e.target.classList.contains('addbtn-bank') || findClosest(e.target, 'addbtn-certification')) {
        bankdetailsadd();
      }
    });



    // *************************************************************ADD Buttons Function's End******************************************************




    function initResume() {

      document.querySelector('#body').addEventListener('mouseleave', function () {
        for (let box of this.querySelectorAll('.edit-show')) {
          box.classList.add('d-none');
          box.classList.remove('edit-show');
        }
      })

      document.querySelector('#qualification-list').addEventListener('mouseover', function (e) {

        for (let box of document.querySelector('#body').querySelectorAll('.edit-show')) {
          box.classList.add('d-none');
          box.classList.remove('edit-show');
        }

        if ((e.target.classList.contains('qualification-item') || findClosest(e.target, 'qualification-item'))) {
          let thisParent = e.target.classList.contains('qualification-item') ? e.target : findClosest(e.target,
            'qualification-item');
          thisParent.querySelector('.qualification-edit-box').classList.remove('d-none');
          thisParent.querySelector('.qualification-edit-box').classList.add('edit-show');
        }

      })



if(resumeinfo.resume_experience != null)
{
      document.querySelector('.workexperience-div-wrapper').addEventListener('mouseover', function () {

        for (let box of document.querySelector('#body').querySelectorAll('.edit-show')) {
          box.classList.add('d-none');
          box.classList.remove('edit-show');
        }

        document.querySelector('.workexperience-edit-box').classList.add('edit-show');
        document.querySelector('.workexperience-edit-box').classList.remove('d-none');
      });
}


      document.querySelector('.skills-div-wrapper').addEventListener('mouseover', function () {

        for (let box of document.querySelector('#body').querySelectorAll('.edit-show')) {
          box.classList.add('d-none');
          box.classList.remove('edit-show');
        }

        document.querySelector('.skills-edit-box').classList.add('edit-show');
        document.querySelector('.skills-edit-box').classList.remove('d-none');
      });


      document.querySelector('.award-list').addEventListener('mouseover', function (e) {

        for (let box of document.querySelector('#body').querySelectorAll('.edit-show')) {
          box.classList.add('d-none');
          box.classList.remove('edit-show');
        }

        if ((e.target.classList.contains('award-item') || findClosest(e.target, 'award-item'))) {
          let thisParent = e.target.classList.contains('award-item') ? e.target : findClosest(e.target,
            'award-item');
          thisParent.querySelector('.award-edit-box').classList.remove('d-none');
          thisParent.querySelector('.award-edit-box').classList.add('edit-show');
        }

      });


      document.querySelector('.publication-list').addEventListener('mouseover', function (e) {

        for (let box of document.querySelector('#body').querySelectorAll('.edit-show')) {
          box.classList.add('d-none');
          box.classList.remove('edit-show');
        }

        if ((e.target.classList.contains('publication-item') || findClosest(e.target, 'publication-item'))) {
          let thisParent = e.target.classList.contains('publication-item') ? e.target : findClosest(e.target,
            'publication-item');
          thisParent.querySelector('.publication-edit-box').classList.remove('d-none');
          thisParent.querySelector('.publication-edit-box').classList.add('edit-show');
        }
      });

      document.querySelector('.research-list').addEventListener('mouseover', function (e) {

        for (let box of document.querySelector('#body').querySelectorAll('.edit-show')) {
          box.classList.add('d-none');
          box.classList.remove('edit-show');
        }

        if ((e.target.classList.contains('research-item') || findClosest(e.target, 'research-item'))) {
          let thisParent = e.target.classList.contains('research-item') ? e.target : findClosest(e.target,
            'research-item');
          thisParent.querySelector('.research-edit-box').classList.remove('d-none');
          thisParent.querySelector('.research-edit-box').classList.add('edit-show');
        }
      });

      document.querySelector('.certification-list').addEventListener('mouseover', function (e) {

        for (let box of document.querySelector('#body').querySelectorAll('.edit-show')) {
          box.classList.add('d-none');
          box.classList.remove('edit-show');
        }

        if ((e.target.classList.contains('professional-certificate-item') || findClosest(e.target,
            'professional-certificate-item'))) {
          let thisParent = e.target.classList.contains('professional-certificate-item') ? e.target : findClosest(e
            .target, 'professional-certificate-item');
          thisParent.querySelector('.certification-edit-box').classList.remove('d-none');
          thisParent.querySelector('.certification-edit-box').classList.add('edit-show');
        }
      });


    }

    // });

    //Rana Changes 
    document.querySelector('#body').addEventListener('click', function (e) {
      if (e.target.classList.contains('qualification-certificate-display') || e.target.classList.contains(
          'award-certificate-display') || e.target.classList.contains('publication-certificate-display') || e.target
        .classList.contains('research-certificate-display') || e.target.classList.contains(
          'professional-certificate-display')) {
        document.getElementById('body').classList.add('d-none');
        document.querySelector('.image-preview-modal').classList.remove('d-none');
        document.querySelector(".image-uploaded").src = e.target.dataset.image;
      }
    });

    //Rana Changes 
    document.querySelector('.qualification-modal').addEventListener('click', function (e) {
      if (e.target.classList.contains('qualification_delete_btn')) {
        console.log("delete-button has been clicked")
      }
    });

    //Rana Changes 
    document.querySelector('#image-preview-cancel-button').addEventListener('click', function (e) {
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.image-preview-modal').classList.add('d-none');
      document.getElementById("image-uploaded").src = " ";
    });


    let qualificationDataDB = 1
    let bankDataDB = 1;
    let bankAccountType = ""
    document.querySelector('#body').addEventListener('click', function (e) {


      //************************************Qualification Section Start*************************************************************** 

      //Qualidication Details Btn
      function editQualificationDetail() {
        if (qualificationDataDB == 1) {

          $.ajax({
              url: '/get-qualification-type',
              type: 'get',
              success: function (response) {
                console.log(response)
                for (let i = 0; i < response.length; i++) {
                  qualificationType += `<option value="\${response[i].abbr}" >\${response[i].name}</option>`
                }

                if (resumeinfo.resume_qualification != null) {
                  for (qualedit of resumeinfo.resume_qualification) {
                    if(qualedit.qualification_type_lid != 4)
                    {
                    let table = `
                    <div class="position-relative qualification_delete_btn d-flex" style="cursor: pointer;"> 
                      <div class="container">
                    <div class="row qualification-row"  data-lid = "\${qualedit.resume_qualification_lid}" >
                    <div class="col-12 col-md-12 col-lg-6 col-sm-12">
                      <div class="row p-3">
                        <div class="col-md-2 ">
                          <p class="h6">Title <span class="required">*</span></p>
                        </div>
                        <div class="col-md-10">
                          <select class="form-control qualification-title" value="\${qualedit.abbr}">
                            \${qualificationType}\
                          </select>
                          </div>
                      </div>
                      <div class="row p-3">
                        <div class="col-md-2 ">
                          <p class="h6">Subject <span class="required">*</span></p>
                        </div>
                        <div class="col-md-10 "><input value="\${qualedit.topic_of_study}" class="form-control qualification-subject"
                            id="bachelors-degree-major-subject" type="text"></div>
                      </div>
                      <div class="row p-3">
                        <div class="col-md-2 ">
                          <p class="h6">University<span class="required">*</span></p>
                        </div>
                        <div class="col-md-10 "><input value="\${qualedit.university}" class="form-control qualification-university"
                            id="bachelors-degree-university" type="text"></div>
                      </div>
                      <div class="row p-3">
                        <div class="col-md-2 ">
                          <p class="h6">Year of Passing <span class="required">*</span></p>
                        </div>
                        <div class="col-md-10 "><input value="\${qualedit.year_of_passing}" class="form-control qualification-year"
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
                        <div class="col-md-10 "><input value="\${qualedit.institute}" class="form-control qualification-college"
                            id="bachelors-degree-college" type="text"></div>
                      </div>
                      <div class="row p-3">
                        <div class="col-md-2">
                          <p class="h6">Percentage<span class="required">*</span></p>
                        </div>
                        <div class="col-md-10"><input value="\${qualedit.percentile}" class="form-control qualification-percentile"
                            id="bachelors-degree-percentile" type="text"></div>
                      </div>
                      <div class="row p-3">
                        <div class="col-md-2 ">
                          <p class="h6">Certificate<span class="required">*</span></p>
                        </div>
                        <div class="col-md-10"><input value="\${qualedit.url_path}" class="form-control qualification-certificate"
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

                    document.querySelector('.qualification-data').insertAdjacentHTML("beforeend", table);
                  }
                  }
                }

              },
              error: function (error) {
                console.log("Error::::::::::::", error);
              }
            })

            ++qualificationDataDB;
        }



        document.getElementById('body').classList.add('d-none');
        document.querySelector('.qualification-modal').classList.remove('d-none');
      }

      document.querySelector('#qualification-div').addEventListener('click', function (e) {
        if (findClosest(e.target, 'qualification-item').querySelector('.qualification-edit-box')) {
          document.querySelector('.qualification-data').innerHTML= "";
          editQualificationDetail()
        }
      })


      document.querySelector("#qualification-cancel-button").addEventListener('click', function () {
        document.getElementById('body').classList.remove('d-none');
        document.querySelector('.qualification-modal').classList.add('d-none');
      });




      //************************************Work Experience Section Start***********************************************************

    if(resumeinfo.resume_experience != null)
    {
      document.querySelector(".workexperience-edit-box").addEventListener('click', function () {
        document.getElementById('body').classList.add('d-none');
        document.querySelector('.workexperience-modal').classList.remove('d-none');
      });
    }

      //************************************Skills Section Start******************************************************************


      document.querySelector('.skills-edit-box').addEventListener('click', function () {

        let softSkillUl = document.getElementById('soft-skill-UL')
        let hardSkillUl = document.getElementById('hard-skill-UL')
        let softSkillDisplay = document.getElementById('soft-skill-display')
        let hardSkillDisplay = document.getElementById('hard-skill-display')

        let softSkills = document.getElementById('soft-skill-appending-div1')
        let hardSkills = document.getElementById('hard-skill-appending-div1')

        $.ajax({
          url: '/get-all-skill',
          type: 'POST',
          success: function (response) {
            for (let i = 0; i < response.length; i++) {

              if (response[i].skill_type_lid === 1) {

                softSkillUl.insertAdjacentHTML('beforeend',
                  `
                 <li class="soft-skill-list" data-id="\${response[i].id}">
                    <div class="row">
                      <div class="col-md-2 col-sm-2 col-2 soft-skill-add-button">
                        <i class="fa-solid fa-circle-plus fa-2x"></i>
                      </div>
                      <div class="col-md-10 col-sm-10 col-12"><a>\${response[i].skill_name}\</a></div>
                    </div>
                  </li>
                `
                )

              } else if (response[i].skill_type_lid === 2) {

                hardSkillUl.insertAdjacentHTML('beforeend',

                  `<li class="hard-skill-list" data-id="\${response[i].id}">
                  <div class="row">
                    <div class="col-md-2 col-sm-2 col-2 hard-skill-add-button"><i
                        class="fa-solid fa-circle-plus fa-2x"></i>
                    </div>
                    <div class="col-md-10 col-sm-10 col-12"><a href="#">\${response[i].skill_name}\</a></div>
                  </div>
                </li>`
                )
              } else {
                console.log("Error")
              }

            }
            document.getElementById('body').classList.add('d-none');
            document.querySelector('.skills-modal').classList.remove('d-none');
            for (let skill of document.querySelectorAll('.skill-pill-div')) {
              let skillId = skill.getAttribute('data-id');
              let skillPill = document.querySelector(`#pills-tabContent li[data-id='\${skillId}']`);
              if (skillPill) {
                skillPill.remove()
              }
            }


            for (let skill of document.querySelectorAll('.skill-pill-div')) {


              if (skill.dataset.skilltype == 1) {
                document.getElementById('soft-skill-display').insertAdjacentHTML('beforeend', `<li class="soft-skill-list-group skill-list" data-status="0" data-skilltype="skill.skilltype" data-id="\${skill.id}">
                        <div class="row">
                            <div class="col-md-2 col-sm-2 col-2"><i class="fa-solid fa-trash-can fa-2x soft-skill-delete-button" style="color:red;"></i></div>
                            <div class="col-md-10 col-sm-10 col-10"><a class="ms-3" href="#">\${skill.innerText}\</a></div>
                        </div>
                    </li>`)
              } else if (skill.dataset.skilltype == 2) {

                document.getElementById('hard-skill-display').insertAdjacentHTML('beforeend', `<li class="soft-skill-list-group skill-list" data-status="0" data-skilltype="skill.skilltype" data-id="\${skill.id}">
                        <div class="row">
                            <div class="col-md-2 col-sm-2 col-2"><i class="fa-solid fa-trash-can fa-2x soft-skill-delete-button" style="color:red;"></i></div>
                            <div class="col-md-10 col-sm-10 col-10"><a class="ms-3" href="#">\${skill.innerText}\</a></div>
                        </div>
                    </li>`)
              }

            }
          },
          error: function (error) {
            console.log("Error::::::::::::", error);
          }
        });

      });

      //************************************Award Section Start******************************************************************

      function editAwardDetail() {

        document.getElementById('publication-award-div-update').innerHTML = ""
        if (resumeinfo.resume_achievement != null) {
          for (awardedit of resumeinfo.resume_achievement) {

            let table = `  <div class="position-relative award_delete_btn d-flex" style="cursor: pointer;">  
        <div class="container">   
      <div id="publication-award-div" class="bg-white">
          <div id="award-display-div" class="award-rows px-3 px-sm-4 px-lg-4 mt-1" data-awardlid = "\${awardedit.resume_achievement_lid}">
            <div class="row">

              <div class="col-12 col-md-12 col-lg-6 col-sm-12">
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Award name<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10"><input value="\${awardedit.title}" class="form-control awardName" type="text" id="award-name"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Organisation <span class="required">*</span></p>
                  </div>
                  <div class="col-md-10 "><input value="\${awardedit.organization_name}" class="form-control awardOrganization" type="text" id="award-organization"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Organisation type<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10 "><select value="\${awardedit.organization_type_lid}" class="form-control awardOrganizationType" id="award-organization-type">
                    <option value="0">-select-</option>
                    <option value="1">School</option>
                    <option value="2">University</option>
                    <option value="3">Industry</option>
                  </select></div>
                </div>
              </div>

              <div class="col-12 col-md-12 col-lg-6 col-sm-12">
                <div class="row p-3">
                  <div class="col-md-2">
                    <p class="h6">Description<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10 "><input value="\${awardedit.description}" class="form-control awardPlace" type="text" id="award-place"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2">
                    <p class="h6">Received date<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10"><input value="\${awardedit.achievement_date}" class="form-control awardRecieveDate" type="date" id="award-receive-date"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Certificate<span class="required">*</span></p>
                  </div>
                  <!--Rana Changes--!>
                  <div class="col-md-10"><input class="form-control awardCertificationImage" type="file" 
                     onchange="this.nextElementSibling.firstElementChild.src = window.URL.createObjectURL(this.files[0])">
                    <p hidden><img class="award-certificate-preview" type="hidden" alt="your image" width="100"
                    height="100" style="border: 1px solid #ced4da; margin-left:100px;" /></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
            <div id="delete_btn_award_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_award_symbol">
                <i class="fa-solid fa-trash text-danger fa-2x"></i>
             </div>
          </div>
          <hr style="height: 5px;">
        </div>
        </div> 
       `
            document.getElementById('publication-award-div-update').insertAdjacentHTML("beforeend", table);
          }
        }
        document.getElementById('body').classList.add('d-none');
        document.querySelector('.award-modal').classList.remove('d-none');
      }

      document.querySelector('#award-div').addEventListener('click', function (e) {
        if (findClosest(e.target, 'award-item').querySelector('.award-edit-box')) {
          document.querySelector('#publication-award-div-update').innerHTML= "";
          editAwardDetail()
        }
      })


      //************************************Publication Section Start************************************************************

      function editPublicationDetail() {

        if (resumeinfo.resume_publication != null) {
          for (pubedit of resumeinfo.resume_publication) {
            let table = ` <div class="position-relative publication_delete_btn d-flex" style="cursor: pointer;">
            <div class="container">
          
          <div class="publication-row px-3 px-sm-4 px-lg-4 mt-1" data-publicationlid = "\${pubedit.resume_achievement_lid}">
            <div class="row">

              <div class="col-12 col-md-12 col-lg-6 col-sm-12">
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Role<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10"><select class="form-control role" id="role">
                      <option >-Select-</option>
                      <option >Edited</option>
                      <option >Authored</option>
                    </select></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Number of Authors<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10 "><input value="\${pubedit.no_of_authors}"  class="form-control number-of-authors" type="text"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Book Title<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10 "><input value="\${pubedit.title}" class="form-control book-title" type="text"></div>
                </div>
              </div>

              <div class="col-12 col-md-12 col-lg-6 col-sm-12">
                <div class="row p-3">
                  <div class="col-md-2">
                    <p class="h6">Publisher<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10 "><input value="\${pubedit.publisher}" class="form-control publisher" type="text"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2">
                    <p class="h6">Year of Publication<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10"><input value="\${pubedit.year_of_publication}" class="form-control year-of-publication" type="text"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Certificate<span class="required">*</span></p>
                  </div>
                  <!--Rana Chanegs--!>
                  <div class="col-md-10"><input class="form-control publication-certification" type="file"
                    onchange="this.nextElementSibling.firstElementChild.src = window.URL.createObjectURL(this.files[0])">
                      <p hidden><img class="publication-certificate-preview" type="hidden" alt="your image" width="100"
                       height="100" style="border: 1px solid #ced4da; margin-left:100px;" /></p>
                  </div>
                </div>
              </div>
            </div>
             <div id="delete_btn_publication_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_publication_symbol">
                <i class="fa-solid fa-trash text-danger fa-2x"></i>
             </div>
          </div>
          <hr style="height: 5px;">
      </div>
          </div>
        `
            document.getElementById('publication-modal-appending-div').insertAdjacentHTML("beforeend", table);
          }
        }
        document.getElementById('body').classList.add('d-none');
        document.querySelector('.publication-modal').classList.remove('d-none');
      }

      document.querySelector('#publication-div').addEventListener('click', function (e) {
        if (findClosest(e.target, 'publication-item').querySelector('.publication-edit-box')) {
          document.querySelector('#publication-modal-appending-div').innerHTML = "";
          editPublicationDetail()
        }
      })

      //************************************Research Section Start************************************************************

      function editResearchBox() {

        if (resumeinfo.resume_research) {
          for (researchedit of resumeinfo.resume_research) {
            let table = ` 
      <div class="position-relative research_delete_btn d-flex" style="cursor: pointer;"> 
      <div  class="research-row px-3 px-sm-4 px-lg-4 mt-1 bg-white container" data-researchlid="\${researchedit.resume_achievement_lid}">
            <div class="row">

              <div class="col-12 col-md-12 col-lg-6 col-sm-12">
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Title<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10 "><input value="\${researchedit.title}" name="journal_name" class="form-control research_Journal_name"
                      type="text"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Volume Year<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10 "><input value="\${researchedit.volume_year}" name="volume_year" class="form-control research_volume_year" type="text"></div>
                </div>
              </div>
              <div class="col-12 col-md-12 col-lg-6 col-sm-12">
                <div class="row p-3">
                  <div class="col-md-2">
                    <p class="h6">Description<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10 "><input value="\${researchedit.description}"  name="number" class="form-control research_description" type="text"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2">
                    <p class="h6">Category<span class="required">*</span></p>
                  </div>
                  <div class="col-md-10"><input value="\${researchedit.category}" name="category" class="form-control research_category" type="text"></div>
                </div>
                <div class="row p-3">
                  <div class="col-md-2 ">
                    <p class="h6">Certificate<span class="required">*</span></p>
                  </div>
                  <!--Rana Changes--!>
                  <div class="col-md-10"><input class="form-control research_photo" type="file"
                    onchange="this.nextElementSibling.firstElementChild.src = window.URL.createObjectURL(this.files[0])">
                   <p hidden><img class="research-certificate-preview" type="hidden" alt="your image" width="100"
                      height="100" style="border: 1px solid #ced4da; margin-left:100px;" /></p>
                  </div>
                </div>
              </div>
            </div>
            <hr style="height: 5px;"> 
            </div>
           <div id="delete_btn_research_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_research_symbol">
                <i class="fa-solid fa-trash text-danger fa-2x"></i>
             </div>
        </div>`




            document.getElementById('research-data').insertAdjacentHTML("beforeend", table);

          }
        }
        document.getElementById('body').classList.add('d-none');
        document.querySelector('.research-modal').classList.remove('d-none');
      }

      document.querySelector('#research-div').addEventListener('click', function (e) {
        if (findClosest(e.target, 'research-item').querySelector('.research-edit-box')) {
          document.querySelector('#research-data').innerHTML= "";
          editResearchBox()
        }
      })

      //************************************Profrctional Certificates Section Start***********************************************

      // document.querySelector('.certification-edit-box').addEventListener('click', function () {
      //   document.getElementById('body').classList.add('d-none');
      //   document.querySelector('.certification-modal').classList.remove('d-none');
      // });

      //************************************Bank Details Section Start***********************************************


      if(resumeinfo.bank_details != null)
      {
      document.querySelector('.bank-details-edit-box').addEventListener('click', function () {
        if (bankDataDB == 1) {
          $.ajax({
              url: '/get-bank-account-type',
              type: 'get',
              success: function (response) {
                console.log(response)
                for (let i = 0; i < response.length; i++) {
                  console.log(bankAccountType)
                  bankAccountType +=
                    `<option value=\${response[i].id}\ >\${response[i].account_type}\</option>`
                }
                document.getElementById('bank-account-type').insertAdjacentHTML("beforeend",
                  bankAccountType)
              },
              error: function (error) {
                console.log("Error::::::::::::", error);
              }
            })
            ++bankDataDB;
        }

        let editBankDetailsForm = new FormData()

        editBankDetailsForm.append('editBankName', document.getElementById('bank-name-value').innerText)
        editBankDetailsForm.append('editBranchName', document.getElementById('branch-name-value').innerText)
        editBankDetailsForm.append('editIfscCode', document.getElementById('ifsc-code-value').innerText)
        editBankDetailsForm.append('editMicrCode', document.getElementById('micr-code-value').innerText)
        editBankDetailsForm.append('editAccountNumber', document.getElementById('account-number-value')
          .innerText)
        editBankDetailsForm.append('editAccountType', document.getElementById('account-type-value'.innerText))


        document.getElementById('bank-name').value = editBankDetailsForm.get('editBankName')
        document.getElementById('bank-branch').value = editBankDetailsForm.get('editBranchName')
        document.getElementById('bank-ifsc-code').value = editBankDetailsForm.get('editIfscCode')
        document.getElementById('bank-micr-code').value = editBankDetailsForm.get('editMicrCode')
        document.getElementById('bank-account-number').value = editBankDetailsForm.get('editAccountNumber')
        document.getElementById('bank-account-type').value = editBankDetailsForm.get('editAccountType')


        document.getElementById('body').classList.add('d-none');
        document.querySelector('.bank-details-modal').classList.remove('d-none');
      });
      }

    });



    // document.querySelector('#cancelled-cheque-photo-cancel-button').addEventListener('click', function (e) {
    //   document.getElementById('body').classList.remove('d-none');
    //   document.querySelector('.cancelled-cheque-photo-modal').classList.add('d-none');
    // })


    document.querySelector('#personal-details-submit-button').addEventListener('click', function (e) {

      e.preventDefault()

      let myForm = document.getElementById('myForm')
      let formData = new FormData(myForm)
      let arrayresult = [];
      let result = {};
      for (let entry of formData.entries()) {
        result[entry[0]] = entry[1];
      }

      clearError();

      let firstName = personalDetailFirstNameValidation(result.f_name);
      let lastName = personalDetailLastNameValidation(result.l_name);
      //let profilePhoto1 = personalDetailProfilePhotoValidation(document.getElementById("photo").value);
      let DOB = personalDetailDateOfBirthValidation(result.date_of_birth);
      let gender = personalDetailGenderValidation(result.gender);
      let contactNumber = personalDetailContactNumberValidation(result.contact_number);
      let temporaryContact = personalDetailTemporaryContactValidation(result.temp_contact_number);
      //let pancard = personalDetailPancardValidation(result.pan_number);
      //let pancardPhoto = personalDetailPancardPhotoValidation(document.getElementById("pan-photo").value);
      let email = personalDetailEmailValidation(result.email);
      let aadhar = personalDetailAadharValidation(result.aadhar_number);
      //let aadharPhoto1 = personalDetailAadharPhotoValidation(document.getElementById("aadhar-photo").value);
      let address = personalDetailAddressValidation(result.permanent_address);
      let country = personalDetailCountryValidation(result.nationality);
      let tempContact = (result.temp_contact_number);
      let tempemail = tempemailvalidation(result.temp_email);

      if (!firstName || !lastName || !gender || !contactNumber || !email || !aadhar || !address || !
        country || !DOB || !tempemail) {
        return;
      }

      if (pancardPhoto.length != 0) {
        document.getElementById('pancard-photo').firstElementChild.classList.remove('fa-ban')
        document.getElementById('pancard-photo').firstElementChild.classList.remove('text-danger')
        document.getElementById('pancard-photo').firstElementChild.classList.add('fa-image')
        document.getElementById('pancard-photo').firstElementChild.classList.add('text-success')
      }

      if (aadharPhoto1.length != 0) {
        document.getElementById('aadhar-card-photo').firstElementChild.classList.remove('fa-ban')
        document.getElementById('aadhar-card-photo').firstElementChild.classList.remove('text-danger')
        document.getElementById('aadhar-card-photo').firstElementChild.classList.add('fa-image')
        document.getElementById('aadhar-card-photo').firstElementChild.classList.add('text-success')
      }

      let personalDetailsData = {
        "insert_user_personal_details": {
          "user_address": arrayresult,
          "user_contact": [],
          "user_info": []
        }
      }

      let photoArray = []

      let profilePhoto = document.getElementById("photo").files[0]
      if (profilePhoto) {
        let filereader = new FileReader();
        filereader.readAsDataURL(profilePhoto);
        filereader.onload = function (evt) {
          let profilePhotoBase64 = evt.target.result;
          photoArray[0] = profilePhotoBase64
        }
      }

      let aadharPhoto = document.getElementById("aadhar-photo").files[0]
      if (aadharPhoto) {
        let filereader = new FileReader();
        filereader.readAsDataURL(aadharPhoto);
        filereader.onload = function (evt) {
          let aadharPhotobase64 = evt.target.result;
          photoArray[1] = aadharPhotobase64
        }
      }

      let panPhoto = document.getElementById("pan-photo").files[0]
      if (panPhoto) {
        let filereader = new FileReader();
        filereader.readAsDataURL(panPhoto);
        filereader.onload = function (evt) {
          let panphotobase64 = evt.target.result;
          photoArray[2] = panphotobase64
        }
      }

      setTimeout(function () {

        console.log(photoArray)
        let user_info = {}
        let user_contact = {}

        user_contact.user_lid = '${user_lid}'
        user_contact.resume_lid = resume_lid
        user_contact.contact_number = result.contact_number
        user_contact.temp_contact_number = result.temp_contact_number
        personalDetailsData.insert_user_personal_details.user_contact[0] = user_contact
        user_info.user_lid = '${user_lid}'
        user_info.resume_lid = resume_lid
        user_info.f_name = result.f_name
        user_info.l_name = result.l_name
        user_info.email = result.email
        user_info.temp_email = result.temp_email
        user_info.gender_lid = Number.parseInt(result.gender)
        user_info.pancard_no = '${user_id}'
        user_info.pancard_url_path = photoArray[2] //"C://Fakepath://pancardphoto"
        user_info.aadhar_card_url_path = photoArray[1] //"C://Fakepath://aadharphoto"
        user_info.profile_url_path = photoArray[0] //"C://Fakepath://profilephoto" 
        user_info.aadhar_card_no = aadhar
        user_info.date_of_birth = result.date_of_birth
        user_info.nationality = result.nationality
        personalDetailsData.insert_user_personal_details.user_info[0] = user_info

        let addressObject = {}

        addressObject.user_lid = '${user_lid}'
        addressObject.resume_lid = resume_lid
        addressObject.address = result.permanent_address
        addressObject.city = result.permanent_address_city
        addressObject.pin_code = result.permanent_address_pincode

        addressObject.address_type_lid = 1
        let addressObject2 = {}
        addressObject2.user_lid = '${user_lid}'
        addressObject2.resume_lid = resume_lid
        addressObject2.address = result.temporary_address
        addressObject2.city = result.permanent_address_city
        addressObject2.pin_code = result.permanent_address_pincode
        addressObject2.address_type_lid = 2

        arrayresult[0] = addressObject
        arrayresult[1] = addressObject2


        console.log(JSON.stringify(personalDetailsData))
        let genderValue = ""
        if (Number.parseInt(result.gender) == 1) {
          genderValue = "Male"
        } else if (result.gender == 2) {
          genderValue = "Female"
        } else {
          genderValue = "Other"
        }
        console.log(genderValue)
        let options = {

          method: 'POST',
          headers: {

            'Content-Type': 'application/json;charset=utf-8'

          },
          body: JSON.stringify(personalDetailsData)

        }
        let fetchRes = fetch('/update-personal-details', options);

        fetchRes.then(success => {

          // if (success.status == 200) {
          console.log(success)
          console.log(result.date_of_birth)
          console.log(result.temp_contact_number)
          document.getElementById('body').classList.remove('d-none');
          document.querySelector('.personal-details-modal').classList.add('d-none')
          document.location.reload();
        })
      }, 1000)

    });

    document.querySelector('#personal-details-cancel-button').addEventListener('click', function (e) {
      e.preventDefault()
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.personal-details-modal').classList.add('d-none')
    });





    //*************************************Qualification-modal JS****************************************

    let qualificationID = 0;
    let qualificationModalID = 0;

    document.querySelector("#qualification-submit-button").addEventListener('click', function (e) {
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
            resume_lid: resume_lid,
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
            document.location.reload();
          } else {
            alert('Check Qualification details');
          }
        })
      }, 1200)


    })

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
    })


    document.addEventListener('mouseover', function () {
      let deleteButtonClick = document.querySelectorAll('.delete_btn_qualification_symbol')
      let deleteQualification = document.querySelectorAll('.qualification_delete_btn');
      for (let i = 0; i < deleteQualification.length; i++) {
        deleteQualification[i].addEventListener('mouseover', function () {
          deleteQualification[i].querySelector('.delete_btn_qualification_symbol').classList.remove('d-none');
        });
        deleteQualification[i].addEventListener('mouseleave', function () {
          deleteQualification[i].querySelector('.delete_btn_qualification_symbol').classList.add('d-none');
        });
        deleteButtonClick[i].addEventListener('click', function () {
          this.parentElement.remove()
        });
      }
    })

    //*************************************Award-modal JS****************************************



    document.querySelector("#award-cancel-button").addEventListener('click', function () {
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.award-modal').classList.add('d-none');
    });


    // ***************************************************Award Section Script*************************************************************************

    document.addEventListener('mouseover', function () {
      let deleteButtonClick = document.querySelectorAll('.delete_btn_award_symbol')
      let deleteAward = document.querySelectorAll('.award_delete_btn');
      for (let i = 0; i < deleteAward.length; i++) {
        deleteAward[i].addEventListener('mouseover', function () {
          deleteAward[i].querySelector('.delete_btn_award_symbol').classList.remove('d-none');
        });

        deleteAward[i].addEventListener('mouseleave', function () {
          deleteAward[i].querySelector('.delete_btn_award_symbol').classList.add('d-none');
        });
        deleteButtonClick[i].addEventListener('click', function () {
          this.parentElement.parentElement.parentElement.remove()
        });
      }
    })


    document.querySelector('#award-submit-button').addEventListener('click', function () {

      let div = '';
      let vjstableelement = document.querySelectorAll('.award-rows');
      let noofrows = vjstableelement.length;
      let resume_achievement = [];
      let outerloopcheck = true;

      for (let i = 0; i < noofrows; i++) {
        //to remove the red border
        vjstableelement[i].querySelector('.awardName').classList.remove('input-border');
        vjstableelement[i].querySelector('.awardOrganization').classList.remove('input-border');
        vjstableelement[i].querySelector('.awardPlace').classList.remove('input-border');
        vjstableelement[i].querySelector('.awardRecieveDate').classList.remove('input-border');
        vjstableelement[i].querySelector('.awardCertificationImage').classList.remove('input-border');
        vjstableelement[i].querySelector('.awardOrganizationType').classList.remove('input-border');

        let resume_achievement_lid1 = vjstableelement[i].dataset.awardlid;
        console.log('resume_achievement_lid1', resume_achievement_lid1);
        let title = vjstableelement[i].querySelector('.awardName').value;
        let organization_name = vjstableelement[i].querySelector('.awardOrganization').value;
        let organization_type_lid = vjstableelement[i].querySelector('.awardOrganizationType').value;
        let description = vjstableelement[i].querySelector('.awardPlace').value;
        let achievement_date = vjstableelement[i].querySelector('.awardRecieveDate').value;
        let url_path = vjstableelement[i].querySelector('.awardCertificationImage').value;
        let awardCertificateSRC = vjstableelement[i].querySelector('.award-certificate-preview').src;

        let checktitle = tabledatacheck(title);
        let checkorganization_name = namecheck(organization_name);
        let checkdescription = tabledatacheck(description);
        let checkachievement_date = checkdate(achievement_date);
        let checkurl_path = tabledatacheck(url_path);
        let checkorganization_type_lid = checknotnull(organization_type_lid)

        //to add the red border according to validations
        if (checktitle == false) {
          vjstableelement[i].querySelector('.awardName').classList.add('input-border');
          return;
        } else if (checkorganization_name == false) {
          vjstableelement[i].querySelector('.awardOrganization').classList.add('input-border');
          return;
        } else if (checkdescription == false) {
          vjstableelement[i].querySelector('.awardPlace').classList.add('input-border');
          return;
        } else if (checkachievement_date == false) {
          vjstableelement[i].querySelector('.awardRecieveDate').classList.add('input-border');
          return;
        } else if (checkorganization_type_lid == false) {
          vjstableelement[i].querySelector('.awardOrganizationType').classList.add('input-border');
          return;
        } else if (checkurl_path == false) {
          vjstableelement[i].querySelector('.awardCertificationImage').classList.add('input-border');
          return;
        }

        let photoArray = []

        let awardCertificateInput = vjstableelement[i].querySelector('.awardCertificationImage').files[0]
        if (awardCertificateInput) {
          let filereader = new FileReader();
          filereader.readAsDataURL(awardCertificateInput);
          filereader.onload = function (evt) {
            let awardPhotoBase64 = evt.target.result;
            photoArray[i] = awardPhotoBase64
          }
        }


        setTimeout(function () {
          obj = {
            resume_lid: resume_lid,
            achievement_type_lid: "2",
            title: title,
            resume_achievement_lid: resume_achievement_lid1,
            organization_name: organization_name,
            organization_type_lid: organization_type_lid,
            achievement_date: achievement_date,
            description: description,
            url_path: photoArray[i]
          }


          let organizationType = organization_type_lid
          console.log(organizationType)
          if (organizationType == 1) {
            organizationType1 = "School"
          } else if (organizationType == 2) {
            organizationType1 = "University"
          } else {
            organizationType1 = "Industry"
          }


          let recievedAwardDate = changeDateFormat(achievement_date)
          div += `
        <div id="award-display-div" class=" px-3 px-sm-4 px-lg-4 mt-1">
                    <div class="row">

                      <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                        <div class="row pt-lg-3">
                          <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                            <p class="h5 pb-1">Award Name :</p>
                            <p class="h5 py-1">organization :</p>
                            <p class="h5 py-1">Organization Type :</p>

                          </div>
                          <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                            <p id="">\${title}\</p>
                            <p id="">\${organization_name}</p>
                            <p id="">\${organizationType1}\</p>
                          </div>
                        </div>
                      </div>

                      <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                        <div class="row pt-lg-3">
                          <div class="col-6 ps-lg-5 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                            <p class="h5 pb-1">Description :</p>
                            <p class="h5 pb-1">Recieved date :</p>
                            <p class="h5 py-1">Certificate :</p>
                          </div>
                          <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                            <p class="" id="">\${description}\</p>
                            <p class="" id="">\${recievedAwardDate}\</p>
                            <p ><i id="award-certificate-display" data-image = "\${awardCertificateSRC}" class="fa-solid fa-image text-success award-certificate-display"></i></p>

                          </div>
                        </div>
                      </div>

                    </div>
                  </div>
                    `

          resume_achievement.push(obj);
        }, 1000)
      }

      object = {
        "insert_award": resume_achievement
      }

      //Fetch Method
      setTimeout(function () {

        function postdata() {
          url = "/award_Table_Data";
          params = {
            method: "POST",
            headers: {
              contentType: 'application/json'
            },
            body: JSON.stringify(object),
          }
          fetch(url, params).then((data) => {

            if (data.status == 200) {
              document.getElementById('award-preview-div').firstElementChild.remove()
              document.getElementById('award-preview-div').insertAdjacentHTML('beforeend', div)
              document.getElementById('body').classList.remove('d-none');
              document.querySelector('.award-modal').classList.add('d-none');
              document.location.reload();
            } else {
              console.log("Error");
              alert('Check Award Entries');
            }
          })
        }
        postdata()
      }, 1200)
    });


    //*************************************Publications-modal JS****************************************



    document.querySelector("#publication-cancel-button").addEventListener('click', function () {
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.publication-modal').classList.add('d-none');
    });
    let publicationBase64 = ''

    document.querySelector("#publication-submit-button").addEventListener('click', function (e) {

      e.preventDefault()

      let div = ''
      let publicationTableArray = []
      let publicationRow = document.querySelectorAll('.publication-row')
      for (i = 0; i < publicationRow.length; i++) {
        //to remove the red border
        publicationRow[i].querySelector('.publisher').classList.remove('input-border');
        publicationRow[i].querySelector('.number-of-authors').classList.remove('input-border');
        publicationRow[i].querySelector('.year-of-publication').classList.remove('input-border');
        publicationRow[i].querySelector('.book-title').classList.remove('input-border');
        publicationRow[i].querySelector('.publication-certification').classList.remove('input-border');

        let publicationRole = publicationRow[i].querySelector('.role').value;
        let publicationPublisher = publicationRow[i].querySelector('.publisher').value;
        let publicationNumberOfAuthors = publicationRow[i].querySelector('.number-of-authors').value;
        let publicationYearOfPublication = publicationRow[i].querySelector('.year-of-publication').value;
        let resume_publication_lid = publicationRow[i].dataset.publicationlid;
        let publicationBookTitle = publicationRow[i].querySelector('.book-title').value;
        let publicationCertificate1 = publicationRow[i].querySelector('.publication-certification').value;
        let publicationCertificateSRC = publicationRow[i].querySelector('.publication-certificate-preview').src;

        let checkPublicationPublisher = tabledatacheck(publicationPublisher);
        let checkPublicationNumberOfAuthors = tabledatacheck(publicationNumberOfAuthors);
        let checkPublicationYearOfPublication = tabledatacheck(publicationYearOfPublication);
        let checkPublicationBookTitle = tabledatacheck(publicationBookTitle);
        let checkPublicationCertificate = tabledatacheck(publicationCertificate1);

        // to add the red border according to validations
        if (checkPublicationPublisher == false) {
          publicationRow[i].querySelector('.publisher').classList.add('input-border');
          return;
        } else if (checkPublicationNumberOfAuthors == false) {
          publicationRow[i].querySelector('.number-of-authors').classList.add('input-border');
          return;
        } else if (checkPublicationYearOfPublication == false) {
          publicationRow[i].querySelector('.year-of-publication').classList.add('input-border');
          return;
        } else if (checkPublicationBookTitle == false) {
          publicationRow[i].querySelector('.book-title').classList.add('input-border');
          return;
        } else if (checkPublicationCertificate == false) {
          publicationRow[i].querySelector('.publication-certification').classList.add('input-border');
          return;
        }

        let photoArray = []

        let publicationCertificateInput = publicationRow[i].querySelector('.publication-certification').files[0]
        if (publicationCertificateInput) {
          let filereader = new FileReader();
          filereader.readAsDataURL(publicationCertificateInput);
          filereader.onload = function (evt) {
            let publicationPhotoBase64 = evt.target.result;
            photoArray[i] = publicationPhotoBase64
          }
        }

        setTimeout(function () {


          object = {
            resume_lid: resume_lid,
            achievement_type_lid: "1",
            resume_achievement_lid: resume_publication_lid,
            publication_role: publicationRole,
            no_of_authors: publicationNumberOfAuthors,
            title: publicationBookTitle,
            publisher: publicationPublisher,
            year_of_publication: publicationYearOfPublication,
            publication_url_path: photoArray[i]
          }
          publicationTableArray.push(object)


          div += `   
  <div class=" px-3 px-sm-4 px-lg-4 mt-1">
                  <div class="row">
                 <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 pb-1">Role :</p>
                          <p class="h5 py-1">No. of Authors :</p>
                          <p class="h5 py-1">Book Title :</p>

                        </div>
                        <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                          <p id="">\${publicationRole}\</p>
                          <p id="">\${publicationNumberOfAuthors}\ </p>
                          <p id="">\${publicationBookTitle}\</p>
                        </div>
                      </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6 ps-lg-5 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 pb-1">Publisher :</p>
                          <p class="h5 pb-1">Publication Year:</p>
                          <p class="h5 py-1">Certificate :</p>
                        </div>
                        <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                          <p class="" id="">\${publicationPublisher}\</p>
                          <p class="" id="">\${publicationYearOfPublication}\</p>
                          <p><i id="publication-certificate-display" data-image = "\${publicationCertificateSRC}" class="fa-solid fa-image text-success publication-certificate-display"></i></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                  `
        }, 1000)
      }

      let publicationTableData = {
        "insert_publication": publicationTableArray
      }
      setTimeout(function () {

        let options = {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json;charset=utf-8'
          },
          body: JSON.stringify(publicationTableData)
        }
        let fetchRes = fetch("/insert-publication-details", options);
        fetchRes.then(success => {
          if (success.status == 200) {
            document.getElementById('publication-appending-div').firstElementChild.remove()
            document.getElementById('publication-appending-div').insertAdjacentHTML('beforeend', div)
            document.getElementById('body').classList.remove('d-none');
            document.querySelector('.publication-modal').classList.add('d-none');
            document.location.reload();
          } else {
            alert('Check');
          }
        })
      }, 1200)
    })



    document.addEventListener('mouseover', function () {
      let deleteButtonClick = document.querySelectorAll('.delete_btn_publication_symbol')
      let deletepublication = document.querySelectorAll('.publication_delete_btn');
      for (let i = 0; i < deletepublication.length; i++) {
        deletepublication[i].addEventListener('mouseover', function () {
          deletepublication[i].querySelector('.delete_btn_publication_symbol').classList.remove('d-none');
        });

        deletepublication[i].addEventListener('mouseleave', function () {
          deletepublication[i].querySelector('.delete_btn_publication_symbol').classList.add('d-none');
        });

        deleteButtonClick[i].addEventListener('click', function () {
          this.parentElement.parentElement.parentElement.remove()
        });
      }

    })


    //*************************************Research-modal JS*******************************************************



    document.querySelector("#research-cancel-button").addEventListener('click', function () {
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.research-modal').classList.add('d-none');
    });


    let newBase64 = ''

    document.querySelector('#research-submit-button').addEventListener('click', function () {
      console.log("research button clicked");
      let researchTableElem = document.querySelectorAll('.research-row');
      let noofrows = researchTableElem.length;
      console.log("no of rows", noofrows);
      let resumeResearchTable = [];
      let div = ''
      for (let j = 0; j < noofrows; j++) {
        researchTableElem[j].querySelector('.research_Journal_name').classList.remove('input-border');
        researchTableElem[j].querySelector('.research_volume_year').classList.remove('input-border');
        researchTableElem[j].querySelector('.research_description').classList.remove('input-border');
        researchTableElem[j].querySelector('.research_category').classList.remove('input-border');
        researchTableElem[j].querySelector('.research_photo').classList.remove('input-border');

        let Journal_name = researchTableElem[j].querySelector('.research_Journal_name').value;
        let volume_year = researchTableElem[j].querySelector('.research_volume_year').value;
        let description = researchTableElem[j].querySelector('.research_description').value;
        let category = researchTableElem[j].querySelector('.research_category').value;


        let research__lid = researchTableElem[j].dataset.researchlid
        console.log("RESEARCH>>>>>>>>", research__lid)
        let researchCertificateSRC = researchTableElem[j].querySelector('.research-certificate-preview').src;


        let check_journal_name = tabledatacheck(Journal_name);
        let check_volume_year = yearcheck(volume_year);
        let check_description = namecheck(description);
        let check_category = namecheck(category);


        if (check_journal_name == false) {
          researchTableElem[j].querySelector('.research_Journal_name').classList.add('input-border');
          return;
        }

        if (check_volume_year == false) {
          researchTableElem[j].querySelector('.research_volume_year').classList.add('input-border');
          return;
        }

        if (check_description == false) {
          researchTableElem[j].querySelector('.research_description').classList.add('input-border');
          return;
        }

        if (check_category == false) {
          researchTableElem[j].querySelector('.research_category').classList.add('input-border');
          return;
        }



        let photoArray = []
        let researchCertificateInput = researchTableElem[j].querySelector('.research_photo').files[0]
        if (researchCertificateInput) {
          let filereader = new FileReader();
          filereader.readAsDataURL(researchCertificateInput);
          filereader.onload = function (evt) {
            let researchPhotoBase64 = evt.target.result;
            photoArray[j] = researchPhotoBase64
          }
        }
        console.log(photoArray[j])

        setTimeout(function () {


          obj = {
            resume_lid: resume_lid,
            achievement_type_lid: "3",
            resume_achievement_lid: research__lid,
            title: Journal_name,
            volume_year: volume_year,
            description: description,
            category: category,
            research_url_path: photoArray[j] //"c/fakepath://gghs" 
          }

          console.log(JSON.stringify(obj))
          div += `<div  class=" px-3 px-sm-4 px-lg-4 mt-1 ">
                  <div class="row">

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 py-1">Title :</p>
                          <p class="h5 py-1">Volume year :</p>

                        </div>
                        <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                          <p id="">\${Journal_name}\</p>
                          <p id="">\${volume_year}\</p>
                        </div>
                      </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                      <div class="row pt-lg-3">
                        <div class="col-6 ps-lg-5 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                          <p class="h5 pb-1">Description :</p>
                          <p class="h5 pb-1">Category :</p>
                          <p class="h5 py-1">Certificate :</p>
                        </div>
                        <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                          <p class="" id="">\${description}\</p>
                          <p class="" id="">\${category}\</p>
                          <p><i id="research-certificate-display" data-image = "\${researchCertificateSRC}" class="fa-solid fa-image text-success research-certificate-display"></i></p>

                        </div>
                      </div>
                    </div>
                  </div>
                </div>                  
        `
          resumeResearchTable.push(obj);
        }, 1000)
      }

      object = {
        "insert_research": resumeResearchTable
      }
      console.log('resrearch : ', JSON.stringify(object));
      setTimeout(function () {

        let options = {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json;charset=utf-8'
          },
          body: JSON.stringify(object),
        }
        let fetchRes = fetch("/research-table-data", options);
        fetchRes.then(success => {
          if (success.status == 200) {
            document.getElementById('research-appending-div').firstElementChild.remove()
            document.getElementById('research-appending-div').insertAdjacentHTML('beforeend', div)
            document.getElementById('body').classList.remove('d-none');
            document.querySelector('.research-modal').classList.add('d-none');
            document.location.reload();
          } else {
            alert('Check');
          }
        })
      }, 1200)

    });


    document.addEventListener('mouseover', function () {
      let deleteButtonClick = document.querySelectorAll('.delete_btn_research_symbol')
      let deleteresearch = document.querySelectorAll('.research_delete_btn');
      for (let i = 0; i < deleteresearch.length; i++) {
        deleteresearch[i].addEventListener('mouseover', function () {
          deleteresearch[i].querySelector('.delete_btn_research_symbol').classList.remove('d-none');
        });
        deleteresearch[i].addEventListener('mouseleave', function () {
          deleteresearch[i].querySelector('.delete_btn_research_symbol').classList.add('d-none');
        });
        deleteButtonClick[i].addEventListener('click', function () {
          this.parentElement.remove()
        });
      }
    })



    //*************************************Certification-modal JS****************************************

    console.log("USERLID>>>>>>>", '${user_lid}')
    document.querySelector('#certification-cancel-button').addEventListener('click', function () {
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.certification-modal').classList.add('d-none');
    });

    document.querySelector('#certification-submit-button').addEventListener('click', function (e) {

      e.preventDefault()
      let div = ''
      let certificationTableArray = []
      let certificationRow = document.querySelectorAll('.certification-row')
      for (i = 0; i < certificationRow.length; i++) {

        //to remove the red border
        certificationRow[i].querySelector('.certification-certificate').classList.remove('input-border');
        certificationRow[i].querySelector('.certification-institution').classList.remove('input-border');
        certificationRow[i].querySelector('.certification-YOP').classList.remove('input-border');
        certificationRow[i].querySelector('.certificate-photo').classList.remove('input-border');
        let qualification_lid = certificationRow[i].dataset.qualificationlid

        let professionalCertificateName = certificationRow[i].querySelector('.certification-certificate').value;
        let professionalInstitution = certificationRow[i].querySelector('.certification-institution').value;
        let professionalYOP = certificationRow[i].querySelector('.certification-YOP').value;
        let professionalCertification = certificationRow[i].querySelector('.certificate-photo').value;

        let professionalCertificationCertificateSRC = certificationRow[i].querySelector(
          '.certificate-photo-preview').src;


        let checkCertificateName = namecheck(professionalCertificateName);
        let checkInstitution = namecheck(professionalInstitution);
        let checkYOP = yearcheck(professionalYOP);
        let checkCertification = tabledatacheck(professionalCertification);


        console.log(checkCertificateName)
        console.log(checkInstitution)
        console.log(checkYOP)
        // console.log(checkSubject)


        //  to add the red border according to validations
        if (checkCertificateName == false) {
          certificationRow[i].querySelector('.certification-certificate').classList.add('input-border');
          return;
        } else if (checkInstitution == false) {
          certificationRow[i].querySelector('.certification-institution').classList.add('input-border');
          return;
        } else if (checkYOP == false) {
          certificationRow[i].querySelector('.certification-YOP').classList.add('input-border');
          return;
        } else if (checkCertification == false) {
          certificationRow[i].querySelector('.certificate-photo').classList.add('input-border');
          return;
        }

        let photoArray = []

        let professionalCertificateInput = certificationRow[i].querySelector('.certificate-photo').files[0]
        if (professionalCertificateInput) {
          let filereader = new FileReader();
          filereader.readAsDataURL(professionalCertificateInput);
          filereader.onload = function (evt) {
            let professionalPhotoBase64 = evt.target.result;
            photoArray[i] = professionalPhotoBase64
          }
        }
        setTimeout(function () {

          object = {
            resume_lid: resume_lid,
            resume_qualification_lid: qualification_lid,
            qualification_type_lid: 4,
            topic_of_study: professionalCertificateName,
            institute: professionalInstitution,
            year_of_passing: professionalYOP,
            url_path: photoArray[i],
          }

          div += `
                  <div class="text-block right " id="preview-qualification-div">
                    <div class="card-body preview-certification-div">

                      <div  class=" px-3 px-sm-4 px-lg-4 mt-1">
                        <div class="row">

                          <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                            <div class="row pt-lg-3">
                              <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                                <p class="h5 pb-1">Certification name:</p>
                              </div>
                              <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                                <p id="">\${professionalCertificateName}\</p>
                              </div>
                            </div>
                          </div>

                          <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                            <div class="row pt-lg-3">
                              <div class="col-6 ps-lg-6 col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                                <p class="h5 pb-1">Institution :</p>
                              </div>
                              <div class="col-6 ps-md-0 ps-0 col-md-6 col-lg-6 col-sm-6">
                                <p class="" id="">\${professionalInstitution}\</p>
                              </div>
                            </div>
                          </div>

                          <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                            <div class="row pt-lg-3">
                              <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                                <p class="h5 pb-1">Recieved Year:</p>
                              </div>
                              <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                                <p id="">\${professionalYOP}\</p>
                              </div>
                            </div>
                          </div>

                          <div class="col-12 col-md-6 col-lg-6 col-sm-12">
                            <div class="row pt-lg-3">
                              <div class="col-6  col-md-6 ps-md-0 ps-0 ps-sm-0 col-lg-6 col-sm-6">
                                <p class="h5 pb-1">Certificate:</p>
                              </div>
                              <div class="col-6 col-md-6 col-lg-6 col-sm-6">
                                <p id=""><i class="fa-solid fa-image text-success"></i></p>
                              </div>
                            </div>
                          </div>

                        </div>
                      </div>

                    </div>
                  </div>

                 `

          certificationTableArray.push(object)
        }, 1000)
      }
      let certificationTableData = {
        "qualificationDetails": certificationTableArray
      }
      console.log(JSON.stringify(certificationTableData))
      setTimeout(function () {

        let options = {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json;charset=utf-8'
          },
          body: JSON.stringify(certificationTableData)
        }
        let fetchRes = fetch('/insert-certification-details', options);
        fetchRes.then(success => {
          if (success.status == 200) {
            document.getElementById('certification-appending-div').firstElementChild.remove()
            document.getElementById('certification-appending-div').insertAdjacentHTML('beforeend', div)
            document.getElementById('body').classList.remove('d-none');
            document.querySelector('.certification-modal').classList.add('d-none');
            document.location.reload();
          } else {
            alert('Check Professional certificate details');
          }
        })
      }, 1000)
    })

    document.addEventListener('mouseover', function () {
      let deleteButtonClick = document.querySelectorAll('.delete_btn_certification_symbol')
      let deleteCertification = document.querySelectorAll('.certification_delete_btn');
      for (let i = 0; i < deleteCertification.length; i++) {
        deleteCertification[i].addEventListener('mouseover', function () {
          deleteCertification[i].querySelector('.delete_btn_certification_symbol').classList.remove('d-none');
        });

        deleteCertification[i].addEventListener('mouseleave', function () {
          deleteCertification[i].querySelector('.delete_btn_certification_symbol').classList.add('d-none');
        });

        deleteButtonClick[i].addEventListener('click', function () {
          this.parentElement.parentElement.parentElement.remove()
        });
      }
    })

    function resumecertificationEditbtn() {
      document.querySelector('#certification-data').innerHTML = "";
      document.querySelector('.certification-modal').classList.remove('d-none');
      document.querySelector('#body').classList.add('d-none');



      for (cert of resumeinfo.resume_qualification) {

        if (cert.qualification_type_lid === 4) {
          let table = `  
                    <div class="position-relative certification_delete_btn d-flex" style="cursor: pointer;" > 
                        <div class="container">
                            <div class="certification-row px-3 px-sm-4 px-lg-4 mt-1" data-qualificationlid=\${cert.resume_qualification_lid}>
                                <div class="row">
                              <!-- px-lg-5 -->
                                    <div class="col-12 col-md-12 col-lg-12 col-sm-12 ">

                                        <div class="row p-3">
                                          <div class="col-md-2 ">
                                            <p class="h6">Certification Name: <span class="required">*</span></p>
                                          </div>
                                          <div class="col-md-10 "><input value="\${cert.topic_of_study}" class="form-control certification-certificate" type="text"></div>
                                        </div>

                                        <div class="row p-3">
                                          <div class="col-md-2 ">
                                            <p class="h6">Institution: <span class="required">*</span></p>
                                          </div>
                                          <div class="col-md-10 "><input value="\${cert.institute}" class="form-control certification-institution" type="text"></div>
                                        </div>

                                        <div class="row p-3">
                                          <div class="col-md-2 ">
                                            <p class="h6">Recieved Year: <span class="required">*</span></p>
                                          </div>
                                          <div class="col-md-10 "><input value="\${cert.year_of_passing}" class="form-control certification-YOP" type="text"></div>
                                        </div>

                                        <div class="row p-3">
                                          <div class="col-md-2 ">
                                            <p class="h6">Certificate: <span class="required">*</span></p>
                                          </div>
                                          <div class="col-md-10 "><input class="form-control certificate-photo"

                                            onchange="this.nextElementSibling.firstElementChild.src = window.URL.createObjectURL(this.files[0])" type="file">
                                              <p hidden><img class="certificate-photo-preview" type="hidden" alt="your image" width="100"

                                            height="100" style="border: 1px solid #ced4da; margin-left:100px;" /></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="delete_btn_certification_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_certification_symbol">
                              <i class="fa-solid fa-trash text-danger fa-2x"></i>
                          </div>
                          <hr style="height: 5px;">
                        </div>
                      </div>
                  </div>`

          document.getElementById('certification-data').insertAdjacentHTML("beforeend", table);
        }
      }

    };

    //*************************************Bank-details-modal JS****************************************



    document.querySelector('#bank-details-cancel-button').addEventListener('click', function () {
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.bank-details-modal').classList.add('d-none');
    });

    let accountType1;
    document.querySelector('#bank-details-submit-button').addEventListener('click', function (e) {

      e.preventDefault()

      let flag3 = document.getElementById('bank-account-type').value
      console.log(flag3)
      if (flag3 == 1) {
        accountType1 = "Current Account"
      } else if (flag3 == 2) {
        accountType1 = "Savings Account"
      } else if (flag3 == 3) {
        accountType1 = "Salary Account"
      } else if (flag3 == 4) {
        accountType1 = "Non Residential Ordinary Account"
      } else {
        accountType1 = "Reccuring Deposit Account"
      }

      let submitBankDetailsForm = new FormData()

      submitBankDetailsForm.append('bankName', document.getElementById('bank-name').value)
      submitBankDetailsForm.append('branchName', document.getElementById('bank-branch').value)
      submitBankDetailsForm.append('ifscCode', document.getElementById('bank-ifsc-code').value)
      submitBankDetailsForm.append('micrCode', document.getElementById('bank-micr-code').value)
      submitBankDetailsForm.append('accountNumber', document.getElementById('bank-account-number').value)
      submitBankDetailsForm.append('accountType', accountType1)
      submitBankDetailsForm.append('cancelledCheckPhoto', document.getElementById('cancelled_cheque_Photo').value)

      clearError();

      let facultyBankName1 = bankDetailBankNameValidation(submitBankDetailsForm.get('bankName'))
      let facultyBankBranch1 = bankDetailBankBranchValidation(submitBankDetailsForm.get('branchName'))
      let facultyIfscCode1 = bankDetailIfscCodeValidation(submitBankDetailsForm.get('ifscCode'))
      let facultyMicrCode1 = bankDetailMicrCodeValidation(submitBankDetailsForm.get('micrCode'))
      let facultyAccountNumber1 = bankDetailAccountNumberValidation(submitBankDetailsForm.get('accountNumber'))
      //let facultyCancelledCheque = bankDetailCancelledChequeValidation(submitBankDetailsForm.get('cancelledCheckPhoto'))

      if (!facultyBankName1 || !facultyBankBranch1 || !facultyIfscCode1 || !facultyMicrCode1 || !
        facultyAccountNumber1) {
        return;
      }
      if (facultyCancelledCheque.length != 0) {
        document.getElementById('cancelled-check-photo').firstElementChild.classList.remove('fa-ban')
        document.getElementById('cancelled-check-photo').firstElementChild.classList.remove('text-danger')
        document.getElementById('cancelled-check-photo').firstElementChild.classList.add('fa-image')
        document.getElementById('cancelled-check-photo').firstElementChild.classList.add('text-success')
      }

      let photoArray = []

      let bankPhoto = document.getElementById("cancelled_cheque_Photo").files[0]
      if (bankPhoto) {
        let filereader = new FileReader();
        filereader.readAsDataURL(bankPhoto);
        filereader.onload = function (evt) {
          let bankPhotoBase64 = evt.target.result;
          photoArray[0] = bankPhotoBase64
        }
      }

      setTimeout(function () {

        let bankDetailsJson = {
          "insert_bank_data": []
        }
        let bank_detail = {};
        bank_detail.user_lid = '${user_lid}',
          bank_detail.resume_lid = resume_lid,
          bank_detail.bank_name = document.querySelector('#bank-name').value;
        bank_detail.branch_name = document.querySelector('#bank-branch').value;
        bank_detail.ifsc_code = document.querySelector('#bank-ifsc-code').value;
        bank_detail.micr_code = document.querySelector('#bank-micr-code').value;
        bank_detail.account_number = document.querySelector('#bank-account-number').value;
        bank_detail.bank_account_type_lid = document.querySelector('#bank-account-type').value;
        bank_detail.url_path = photoArray[0];
        bankDetailsJson.insert_bank_data[0] = bank_detail
        console.log(JSON.stringify(bankDetailsJson))

        function postdata() {
          url = "/update-bank-details";
          params = {
            method: 'post',
            headers: {
              'content-Type': 'application/json'
            },
            body: JSON.stringify(bankDetailsJson),
          }
          fetch(url, params).then((data) => {
            if (data.status == 200) {
              console.log(data);

              document.getElementById('body').classList.remove('d-none');
              document.querySelector('.bank-details-modal').classList.add('d-none');
              document.location.reload();
            }
          })
        }
        postdata()
      }, 1000)

    });

    // ****************************************************JS for skills Modal****************************************************************



    document.querySelector('#skills-modal-cancel-button').addEventListener('click', function () {
      console.log('OK!')
      document.getElementById('body').classList.remove('d-none');
      document.querySelector('.skills-modal').classList.add('d-none');
      document.querySelector("#add-custom-soft-skill").outerHTML = "";
      document.querySelector("#add-custom-hard-skill").outerHTML = "";
    });



    document.querySelector('#skills-modal-submit-button').addEventListener('click', function () {


      let skillJson = {
        "skill_details": []
      }

      let softSkillAppendingDiv1 = document.getElementById('soft-skill-appending-div1')
      softSkillAppendingDiv1.innerHTML = ""
      let hardSkillAppendingDiv1 = document.getElementById('hard-skill-appending-div1')
      hardSkillAppendingDiv1.innerHTML = ""
      let softSkillListGroup = document.querySelectorAll('.soft-skill-list-group')
      let hardSkillListGroup = document.querySelectorAll('.hard-skill-list-group')
      let skillIndex = 0;

      for (let i = 0; i < softSkillListGroup.length; i++) {

        let value = softSkillListGroup[i].dataset.id
        let status = softSkillListGroup[i].dataset.status
        let value2 = softSkillListGroup[i].firstElementChild.lastElementChild.lastElementChild.innerText
        if (status == 1) {


          let obj = {}
          obj.resume_lid = resume_lid
          obj.skill_lid = Number.parseInt(value)
          skillJson.skill_details[skillIndex] = obj
          skillIndex++;
        }

      }

      for (let i = 0; i < hardSkillListGroup.length; i++) {
        let value = hardSkillListGroup[i].dataset.id
        let status = hardSkillListGroup[i].dataset.status
        let value2 = hardSkillListGroup[i].firstElementChild.lastElementChild.lastElementChild.innerText
        console.log(value2)

        if (status == 1) {
          let obj = {}
          obj.resume_lid = resume_lid
          obj.skill_lid = Number.parseInt(value)
          skillJson.skill_details[skillIndex] = obj
          skillIndex++;
        }
      }

      function postdata() {
        url = "/insert-all-skills";
        params = {
          method: 'post',
          headers: {
            'content-Type': 'application/json'
          },
          body: JSON.stringify(skillJson),
        }
        fetch(url, params).then((data) => {

          document.getElementById('body').classList.remove('d-none');
          document.querySelector('.skills-modal').classList.add('d-none');
          document.querySelector("#add-custom-soft-skill").outerHTML = "";
          document.querySelector("#add-custom-hard-skill").outerHTML = "";
          // }
        })
      }
      postdata()
      document.location.reload()

    })

    let softSkillSearchButton = document.getElementById('soft-skill-search')
    softSkillSearchButton.addEventListener('keyup', function myFunction() {
      // Declare variables
      var input, filter, ul, li, a, i, txtValue;

      // Input for the variables declared
      input = document.getElementById('soft-skill-search');
      filter = input.value.toUpperCase();
      ul = document.getElementById("soft-skill-UL");
      li = ul.getElementsByTagName('li');

      // Loop through all list items, and hide those who don't match the search query
      for (i = 0; i < li.length; i++) {

        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          li[i].style.display = "";
        } else {
          li[i].style.display = "none";
          document.getElementById('add-custom-soft-skill').firstElementChild.lastElementChild.lastElementChild
            .innerText = input.value;
        }
      }

      // Loop for adding custom soft-skill if no options are present
      for (let i = 0; i < ul.children.length; i++) {
        if (ul.children[i].style.display != "none") {
          document.getElementById('add-custom-soft-skill').classList.add('d-none');
          break;
        } else {
          document.getElementById('add-custom-soft-skill').classList.remove('d-none');
        }
      }
    })

    let addAvailableSoftSkill = document.getElementById('soft-skill-UL')
    let addAvailableHardSkill = document.getElementById('hard-skill-UL')
    let softSkillDisplay = document.getElementById('soft-skill-display')
    let hardSkillDisplay = document.getElementById('hard-skill-display')

    addAvailableSoftSkill.addEventListener('click', function (event) {

      let element = event.target
      if (element.matches('i')) {
        let text = element.parentElement.parentElement.lastElementChild.lastElementChild.innerText;
        let id = element.parentElement.parentElement.parentElement.dataset.id

        let div = ` 
                    <li class="soft-skill-list-group" data-status="1" data-id="\${id}">
                        <div class="row">
                            <div class="col-md-2 col-sm-2 col-2"><i class="fa-solid fa-trash-can fa-2x soft-skill-delete-button" style="color:red;"></i></div>
                            <div class="col-md-10 col-sm-10 col-10"><a class="ms-3" href="#">\${text}\</a></div>
                        </div>
                    </li> `

        softSkillDisplay.insertAdjacentHTML('beforeend', div)
        element.closest('li').classList.add('d-none')
      }
    })

    let hardSkillSearchButton = document.getElementById('hard-skill-search')
    hardSkillSearchButton.addEventListener('keyup', function myFunction() {
      // Declare variables
      var input, filter, ul, li, a, i, txtValue;

      // Input for the variables declared
      input = document.getElementById('hard-skill-search');
      filter = input.value.toUpperCase();
      ul = document.getElementById("hard-skill-UL");
      li = ul.getElementsByTagName('li');

      // Loop through all list items, and hide those who don't match the search query
      for (i = 0; i < li.length; i++) {

        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          li[i].style.display = "";
        } else {
          li[i].style.display = "none";
          document.getElementById('add-custom-hard-skill').firstElementChild.lastElementChild.lastElementChild
            .innerText = input.value;
        }
      }

      // Loop for adding custom hard-skill if no options are present
      for (let i = 0; i < ul.children.length; i++) {
        if (ul.children[i].style.display != "none") {
          document.getElementById('add-custom-hard-skill').classList.add('d-none');
          break;
        } else {
          document.getElementById('add-custom-hard-skill').classList.remove('d-none');

        }
      }
    })

    addAvailableHardSkill.addEventListener('click', function (event) {
      let element = event.target
      if (element.matches('i')) {
        let text = element.parentElement.parentElement.lastElementChild.lastElementChild.innerText;
        let id = element.parentElement.parentElement.parentElement.dataset.id

        let div = ` 
                     <li class="hard-skill-list-group skill-list" data-status="1" data-id="\${id}">
                         <div class="row">
                             <div class="col-md-2 col-sm-2 col-2"><i class="fa-solid fa-trash-can fa-2x hard-skill-delete-button" style="color:red;"></i></div>
                             <div class="col-md-10 col-sm-10 col-10"><a class="ms-3" href="#">\${text}</a></div>
                         </div>
                     </li> `

        hardSkillDisplay.insertAdjacentHTML('beforeend', div)
        element.closest('li').classList.add('d-none')
      }
    })

    let addCustomSoftSkill = document.getElementById('add-custom-soft-skill')
    addCustomSoftSkill.addEventListener('click', function () {

      let customSoftSkillValue = document.getElementById('custom-soft-skill-value').innerText

      $.ajax({
        url: '/insert-custom-skill',
        type: 'POST',
        data: {
          skill_type_lid: 1,
          skill_name: customSoftSkillValue
        },
        success: function (response) {

          // let id = element.parentElement.parentElement.lastElementChild.firstElementChild.value
          console.log(response)

          softSkillDisplay.insertAdjacentHTML('beforeend',
            ` <li class="soft-skill-list-group skill-list" data-status="1" data-id="\${response.id}">
                             <div class="row">
                                 <div class="col-md-2 col-sm-2 col-2"><i class="fa-solid fa-trash-can fa-2x soft-skill-delete-button" style="color:red;"></i></div>
                                 <div class="col-md-10 col-sm-10 col-10"><a class="ms-3">\${response.skill_name}</a></div>
                             </div>
                       </li> `
          )
          document.getElementById('add-custom-soft-skill').classList.add('d-none')
        },
        error: function (error) {
          console.log("Error:::", error)
        }
      })
    })

    let addCustomHardSkill = document.getElementById('add-custom-hard-skill')
    addCustomHardSkill.addEventListener('click', function () {

      let customHardSkillValue = document.getElementById('custom-hard-skill-value').innerText

      $.ajax({
        url: '/insert-custom-skill',
        type: 'POST',
        data: {
          skill_type_lid: 2,
          skill_name: customHardSkillValue
        },
        success: function (response) {

          hardSkillDisplay.insertAdjacentHTML('beforeend',
            `<li class="hard-skill-list-group" data-status="1" data-id="\${response.id}">
                             <div class="row">
                                 <div class="col-md-2 col-sm-2 col-2"><i class="fa-solid fa-trash-can fa-2x soft-skill-delete-button" style="color:red;"></i></div>
                                 <div class="col-md-10 col-sm-10 col-10"><a class="ms-3" href="#">\${customHardSkillValue}</a></div>
                             </div>
                       </li> `
          )
          document.getElementById('add-custom-hard-skill').classList.add('d-none')
        },
        error: function (error) {
          console.log("Error:::", error)
        }
      })
    })

    document.getElementById('soft-skill-review-box').addEventListener('click', function (event) {

      let element = event.target
      let skillDeleteButton = document.getElementsByClassName('soft-skill-delete-button')
      let skillList = document.getElementById('soft-skill-UL')

      if (element.matches('i')) {
        let text = element.parentElement.parentElement.lastElementChild.lastElementChild.innerText
        let id = element.parentElement.parentElement.dataset.id
        let div = `
                            <li class="soft-skill-list" data-id="\${id}">
                              <div class="row">
                                  <div class="col-md-2 col-sm-2 col-2 soft-skill-add-button"><i
                                        class="fa-solid fa-circle-plus fa-2x"></i></div>
                                 <div class="col-md-10 col-sm-10 col-10"><a href="#">\${text}\ </a></div>
                              </div>
                            </li>
                            `

        skillList.insertAdjacentHTML('afterbegin', div)
        element.closest('li').remove()
      }

    })

    document.getElementById('hard-skill-review-box').addEventListener('click', function (event) {

      let element = event.target
      let skillDeleteButton = document.getElementsByClassName('hard-skill-delete-button')
      let skillList = document.getElementById('hard-skill-UL')

      if (element.matches('i')) {
        let text = element.parentElement.parentElement.lastElementChild.lastElementChild.innerText
        let id = element.parentElement.parentElement.dataset.id
        let div = `
                            <li class="hard-skill-list" data-id="\${id}">
                              <div class="row">
                                  <div class="col-md-2 col-sm-2 col-2 hard-skill-add-button"><i
                                        class="fa-solid fa-circle-plus fa-2x"></i></div>
                                 <div class="col-md-10 col-sm-10 col-10"><a href="#">\${text}\</a></div>
                              </div>
                            </li>
                            `

        skillList.insertAdjacentHTML('afterbegin', div)
        element.closest('li').remove()
      }

    })

    // **************************************************Workexperience Section Start*******************************************************


    document.querySelector('#workexperience-submit-insert').addEventListener('click', function (e) {
      let workExperienceModal = ''
      let div = ''
      let workexperienceTableArray = []
      let workexperienceRow = document.querySelectorAll('.workExperience-row')
      console.log(workexperienceRow)

      for (i = 0; i < workexperienceRow.length; i++) {

        //to remove the red border
        workexperienceRow[i].querySelector('.work-experience-type').classList.remove('input-border');
        workexperienceRow[i].querySelector('.employeeName').classList.remove('input-border');
        workexperienceRow[i].querySelector('.description').classList.remove('input-border');
        workexperienceRow[i].querySelector('.responsibility').classList.remove('input-border');
        workexperienceRow[i].querySelector('.status').classList.remove('input-border');
        workexperienceRow[i].querySelector('.padagogy').classList.remove('input-border');
        workexperienceRow[i].querySelector('.designation-title').classList.remove('input-border');
        workexperienceRow[i].querySelector('.other').classList.remove('input-border');
        workexperienceRow[i].querySelector('.start_Date').classList.remove('input-border');
        workexperienceRow[i].querySelector('.end_Date').classList.remove('input-border');

        // let resume_workexperience_lid = workexperienceRow[i].dataset.lid
        let workexperienceType = workexperienceRow[i].querySelector('.work-experience-type').value;
        let workexperienceUniversity = workexperienceRow[i].querySelector('.employeeName').value;
        let workexperienceDesignationTypeLID = workexperienceRow[i].querySelector(".designation-title").options
          .selectedIndex;
        let workexperienceDesignationType = workexperienceRow[i].querySelector('.designation-title').value;
        let workexperienceProgram = workexperienceRow[i].querySelector('.description').value;
        let workexperienceSubjectTaught = workexperienceRow[i].querySelector('.responsibility').value;
        let workexperienceStatus = workexperienceRow[i].querySelector('.status').value;
        let workexperiencePedagogy = workexperienceRow[i].querySelector('.padagogy').value;
        let workexperienceOther = workexperienceRow[i].querySelector('.other').value;
        let workexperienceStartDate = workexperienceRow[i].querySelector('.start_Date').value;
        let workexperienceEndDate = workexperienceRow[i].querySelector('.end_Date').value;


        let checkWorkExp = tabledatacheck(workexperienceType);
        let checkUniversity = tabledatacheck(workexperienceUniversity);
        let checkProgram = tabledatacheck(workexperienceProgram);
        let checkSubjetTaught = tabledatacheck(workexperienceSubjectTaught);
        let checkWorkExpStatus = tabledatacheck(workexperienceStatus);
        let checkWorkExpPedagogy = tabledatacheck(workexperiencePedagogy);
        let checkWorkExpOther = tabledatacheck(workexperienceOther);
        let checkWorkExpStart = tabledatacheck(workexperienceStartDate);
        let checkWorkExpEnd = tabledatacheck(workexperienceEndDate);

        //  to add the red border according to validations
        if (checkWorkExp == false) {
          workexperienceRow[i].querySelector('.work-experience-type').classList.add('input-border');
          return;
        } else if (checkUniversity == false) {
          workexperienceRow[i].querySelector('.employeeName').classList.add('input-border');
          return;
        } else if (checkProgram == false) {
          workexperienceRow[i].querySelector('.description').classList.add('input-border');
          return;
        } else if (checkSubjetTaught == false) {
          workexperienceRow[i].querySelector('.responsibility').classList.add('input-border');
          return;
        } else if (checkWorkExpStatus == false) {
          workexperienceRow[i].querySelector('.status').classList.add('input-border');
          return;
        } else if (checkWorkExpPedagogy == false) {
          workexperienceRow[i].querySelector('.padagogy').classList.add('input-border');
          return;
        } else if (checkWorkExpOther == false) {
          workexperienceRow[i].querySelector('.other').classList.add('input-border');
          return;
        } else if (checkWorkExpStart == false) {
          workexperienceRow[i].querySelector('.start_Date').classList.add('input-border');
          return;
        } else if (checkWorkExpEnd == false) {
          workexperienceRow[i].querySelector('.end_Date').classList.add('input-border');
          return;
        }


        let workexperience_type = 0;
        if (workexperienceType == "ind_exp") {
          workexperience_type = 4
        } else {
          workexperience_type = 5
        }

        let start_date = changeDateFormat(workexperienceStartDate)
        let end_date = changeDateFormat(workexperienceEndDate)

        let Status;
        if (workexperienceStatus == "current") {
          Status = true
        } else {
          Status = false
        }

        object = {
          resume_lid: resume_lid,
          experience_type_lid: workexperience_type,
          employer_name: workexperienceUniversity,
          designation: workexperienceDesignationType,
          designation_lid: workexperienceDesignationTypeLID,
          description: workexperienceProgram,
          start_date: start_date,
          end_date: end_date,
          responsibilities: workexperienceSubjectTaught,
          is_current: Status
        }
        workexperienceTableArray.push(object)
      }

      let workexperienceTableData = {
        "work_Experience": workexperienceTableArray
      }

      console.log(JSON.stringify(workexperienceTableData))

      let options = {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify(workexperienceTableData)
      }
      let fetchRes = fetch('/insert-workexperience-details', options);
      fetchRes.then(success => {
        if (success.status == 200) {
          document.querySelector('.workexperience-modal-insert').classList.add('d-none');
          document.querySelector('#body').classList.remove('d-none');
          document.location.reload();
        } else {
          alert('Check workexperience details');
        }
      })

    })

    document.querySelector('#workexperience-cancel-insert').addEventListener('click', function (e) {

      document.querySelector('.workexperience-modal-insert').classList.add('d-none');
      document.querySelector('#body').classList.remove('d-none');
    })


    let workexperienceDataDB = 1
    let workexperienceType = ` `
    let workexperienceDesignationType = ` `
    document.addEventListener('DOMContentLoaded', function () {
      if (workexperienceDataDB == 1) {

        $.ajax({
          url: '/get-workexperience-type',
          type: 'get',
          success: function (response) {
            for (let expType of response) {
              workexperienceType +=
                `<option value="\${expType.abbr}" data-id="\${expType.id}" >\${expType.name}</option>`
            }
          },
          error: function (error) {
            console.log("Error::::::::::::", error);
          }
        })

        $.ajax({
            url: '/get-workexperience-designation-type',
            type: 'get',
            success: function (response) {
              for (let desig of response) {
                workexperienceDesignationType +=
                  `<option value="\${desig.name}" data-id="\${desig.id}" >\${desig.name}</option>`
              }
            },
            error: function (error) {
              console.log("Error::::::::::::", error);
            }
          })

          ++workexperienceDataDB;
      }
    }, false);

    function resumeworkexperienceaddbtn() {


      document.querySelector('.workexperience-data-insert').innerHTML = "";
      document.querySelector('.workexperience-modal-insert').classList.remove('d-none');
      document.querySelector('#body').classList.add('d-none');

      // let currentDate = getCurrentDate();
      let table = `<div class="position-relative workexperience_delete_btn d-flex" style="cursor: pointer;">

 <div class="workExperience-row px-3 px-sm-4 px-lg-4 mt-1 container ">
         <div class="row ">

           <div class="col-12 col-md-12 col-lg-6 col-sm-12 pt-3">
             <div class="row p-2">
               <div class="col-md-3 ">
                 <p class="h6">Experience Type: <span class="required">*</span></p>
               </div>
               <div class="col-md-9">
                 <select class="work-experience-type form-control" >
                  <option value disabled selected>--Select--</option>
                  \${workexperienceType}
                 </select>
               </div>
             </div>
             
             <div class="row p-2">
               <div class="col-md-3 ">
                 <p class="h6"> University / Institute:<span class="required">*</span></p>
               </div>
               <div class="col-md-9 ">
                 <input class="form-control employeeName"  type="text"/>
               </div>
             </div>
             
             <div class="row p-2">
               <div class="col-md-3 ">
                 <p class="h6"> Program:<span class="required">*</span></p>
               </div>
               <div class="col-md-9 ">
                 <input class="form-control description" type="text"/>
               </div>
             </div>
             <div class="row p-3">
               <div class="col-md-3 ">
                 <p class="h6">Subject Taught:<span class="required">*</span></p>
               </div>
               <div class="col-md-9 ">
                 <input class="form-control responsibility"  type="text"/>
               </div>
             </div>

             <div class="row p-2">
               <div class="col-md-3 ">
                 <p class="h6">Status : <span class="required">*</span></p>
               </div>
               <div class="col-md-9">
                 <select class="status form-control" >
                  <option value="Current">Current</option>
                  <option value="Past">Past</option>
                 </select>
               </div>
             </div>

             <div class="row p-3 ">
               <div class="col-md-3 ">
                 <p class="h6">Padagogy:</p>
               </div>
               <div class="col-md-9 ">
                 <input class="form-control padagogy"  type="text"/>
               </div>
             </div>
           </div>

           <div class="col-12 col-md-12 col-lg-6 col-sm-12">
             <div class="row p-3">
               <div class="col-md-3">
                 <p class="h6">Designation:<span class="required">*</span></p>
               </div>
               <div class="col-md-9 ">
                 <select class="form-control designation-title" id="designation">
                  <option value disabled selected>--Select--</option>
                  \${workexperienceDesignationType}
                 </select>
               </div>
             </div>
             <div class="row p-3">
               <div class="col-md-3">
                 <p class="h6">Other:  <span class="required">*</span></p>
               </div>
               <div class="col-md-9">
                 <input class="form-control other"  type="text"/>
               </div>
             </div>
             <div class="row p-3">
               <div class="col-md-3">
                 <p class="h6">Start Date:  <span class="required">*</span></p>
               </div>
               <div class="col-md-9">
                 <input class="form-control start_Date" type="date"/>
               </div>
             </div>
             <div class="row p-3">
               <div class="col-md-3 ">
                 <p class="h6">End Date:  <span class="required">*</span></p>
               </div>
               <div class="col-md-9">
                 <input class="form-control end_Date" id="endMaxDate"  type="date"/>
               </div>
             </div>
             <div class="row p-3">
               <div class="col-md-3 ">
                 <p class="h6">Teaching Duration: </p>
               </div>
               <div class="col-md-9">
                 <input class="form-control durationOfTeaching" id="durationOfTeaching" type="text"/>
               </div>
             </div>
    
         </div>
       
         </div>
         <hr style="height: 5px;">
       <div id="delete_btn_workexperience_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_workexperience_symbol">
        <i class="fa-solid fa-trash text-danger fa-2x"></i>
        </div>
        
       </div>

       `
      document.querySelector('.workexperience-data-insert').insertAdjacentHTML("beforeend", table);


    }


    document.querySelector('.workexperience-add-button').addEventListener('click', function () {

      let table = `
<div class="position-relative workexperience_delete_btn d-flex" style="cursor: pointer;">

<div class="workExperience-row px-3 px-sm-4 px-lg-4 mt-1 container ">
        <div class="row ">

          <div class="col-12 col-md-12 col-lg-6 col-sm-12 pt-3">
            <div class="row p-2">
              <div class="col-md-3 ">
                <p class="h6">Experience Type: <span class="required">*</span></p>
              </div>
              <div class="col-md-9">
                <select class="work-experience-type form-control exp" data-key="workExperienceType">
                 <option value disabled selected>--Select--</option>
                 \${workexperienceType}
                </select>
              </div>
            </div>
            
            <div class="row p-2">
              <div class="col-md-3 ">
                <p class="h6"> University / Institute:<span class="required">*</span></p>
              </div>
              <div class="col-md-9 ">
                <input class="form-control employer-name exp" type="text" data-key="employer-name"/>
              </div>
            </div>
            
            <div class="row p-2 program">
              <div class="col-md-3 ">
                <p class="h6"> Program:<span class="required">*</span></p>
              </div>
              <div class="col-md-9 ">
                <input class="form-control description exp" type="text" data-key="employer-name"/>
              </div>
            </div>
            <div class="row p-3">
              <div class="col-md-3 ">
                <p class="h6">Subject Taught:<span class="required">*</span></p>
              </div>
              <div class="col-md-9 ">
                <input class="form-control responsibility exp"  type="text"/>
              </div>
            </div>

            <div class="row p-2">
              <div class="col-md-3 ">
                <p class="h6">Status : <span class="required">*</span></p>
              </div>
              <div class="col-md-9">
                <select class="status form-control exp" >
                 <option value="Current">Current</option>
                 <option value="Past">Past</option>
                </select>
              </div>
            </div>

            <div class="row p-3 ">
              <div class="col-md-3 ">
                <p class="h6">Padagogy:</p>
              </div>
              <div class="col-md-9 ">
                <input class="form-control padagogy exp"  type="text"/>
              </div>
            </div>
          </div>

          <div class="col-12 col-md-12 col-lg-6 col-sm-12">
            <div class="row p-3">
              <div class="col-md-3">
                <p class="h6">Designation:<span class="required">*</span></p>
              </div>
              <div class="col-md-9 ">
                <select class="form-control designation-title exp" id="designation">
                 <option value disabled selected>--Select--</option>
                 \${workexperienceDesignationType}
                </select>
              </div>
            </div>
            <div class="row p-3  ">
              <div class="col-md-3">
                <p class="h6">Other:  <span class="required">*</span></p>
              </div>
              <div class="col-md-9">
                <input class="form-control other exp"  type="text"/>
              </div>
            </div>
            <div class="row p-3">
              <div class="col-md-3">
                <p class="h6">Start Date:  <span class="required">*</span></p>
              </div>
              <div class="col-md-9">
                <input class="form-control start_Date exp" type="date"/>
              </div>
            </div>
            <div class="row p-3">
              <div class="col-md-3 ">
                <p class="h6">End Date:  <span class="required">*</span></p>
              </div>
              <div class="col-md-9">
                <input class="form-control end_Date exp" id="endMaxDate"  type="date"/>
              </div>
            </div>
            <div class="row p-3">
              <div class="col-md-3 ">
                <p class="h6">Teaching Duration: </p>
              </div>
              <div class="col-md-9">
                <input class="form-control durationOfTeaching" id="durationOfTeaching" type="text"/>
              </div>
            </div>
   
        </div>
      
        </div>
        <hr style="height: 5px;">
      <div id="delete_btn_workexperience_symbol" class="d-none d-flex justify-content-center align-items-center delete_btn_workexperience_symbol">
       <i class="fa-solid fa-trash text-danger fa-2x"></i>
       </div>
       
      </div>`

      document.querySelector('.workexperience-data-insert').insertAdjacentHTML("beforeend", table);
    });

    document.addEventListener('mouseover', function () {
      let deleteButtonClick = document.querySelectorAll('.delete_btn_workexperience_symbol')
      let deleteQualification = document.querySelectorAll('.workexperience_delete_btn');
      for (let i = 0; i < deleteQualification.length; i++) {
        deleteQualification[i].addEventListener('mouseover', function () {
          deleteQualification[i].querySelector('.delete_btn_workexperience_symbol').classList.remove('d-none');
        });
        deleteQualification[i].addEventListener('mouseleave', function () {
          deleteQualification[i].querySelector('.delete_btn_workexperience_symbol').classList.add('d-none');
        });
        deleteButtonClick[i].addEventListener('click', function () {
          this.parentElement.parentElement.remove()
        });
      }
    })

    //     document.querySelector('.workExperience-row').addEventListener('change', function (e) {
    //       let target = e.target;
    //       if (target.classList.contains('workExperience-Type')) {
    //         let closestParent = findClosest(e.target, 'workExperience-row').querySelector('.padagogy');
    //         let universityOrOrg = findClosest(e.target, 'workExperience-row').querySelector('.universityOrOrg');
    //         let responseOrSubjetTaught =findClosest(e.target, 'workExperience-row').querySelector('.responseOrSubjetTaught');
    //         let closestParentProgram = findClosest(e.target, 'workExperience-row').querySelector('.program');
    //         if (target.value === 'teach_exp') {
    //           closestParent.classList.remove('d-none');
    //           closestParentProgram.classList.remove('d-none');
    //           universityOrOrg.innerHTML="University / Institute:<span class='required'>*</span>";
    //           responseOrSubjetTaught.innerHTML ="Subject Taught:<span class='required'>*</span>";

    //         } else {
    //           closestParent.classList.add('d-none');
    //           closestParentProgram.classList.add('d-none');
    //           universityOrOrg.innerHTML="Organization Name:<span class='required'>*</span>";
    //           responseOrSubjetTaught.innerHTML="keys And Responsibility:<span class='required'>*</span>";  
    //         }

    //       }
    //       if (target.classList.contains('designation-title')) {
    //         let closestParent = findClosest(e.target, 'workExperience-row').querySelector('.other');
    //         if (target.value === 'Other') {
    //           closestParent.classList.remove('d-none');
    //         } else {
    //           closestParent.classList.add('d-none');
    //         }

    //       }
    //       if (target.classList.contains('end_Date')) {
    //         let closestParent = findClosest(target, 'workExperience-row');
    //         let startValue = closestParent.querySelector('.start_Date').value;
    //         let endValue = closestParent.querySelector('.end_Date').value;
    //         let dateDifferenceCount = dateCount(startValue,endValue);

    //         if(dateDifferenceCount>=0){
    //         let dateDifferenceStr = dateDifference(startValue, endValue);
    //         closestParent.querySelector('.durationOfTeaching').value=dateDifferenceStr;
    //         closestParent.querySelector('.startErrorMessage').classList.add('d-none');
    //         }
    //         else{
    //           closestParent.querySelector('.startErrorMessage').classList.remove('d-none');
    //         }
    //       }
    //     })

    // **************************************************Workexperience Section end*******************************************************
  </script>
</body>

</html>