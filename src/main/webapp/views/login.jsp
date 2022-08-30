<!-- <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />
</head>

<body>
  <div class="container" style="width: 400px; margin-top: 200px;">
    <div class="text-center">
      <h3>Login Form</h3>
    </div>
    <form id="login-form">
      <input type="text" class="form-control my-5" name="user_id" placeholder="Enter PanCard No.">
      <input type="email" class="form-control my-5" name="email" placeholder="Enter Email">
      <input type="password" class="form-control my-5" name="password" placeholder="Enter password">
      <input type="number" class="form-control my-4 d-none" name="tokenToVerify" id="verify-token-input"
        placeholder="Please Enter Your Code">
      <div class="d-flex justify-content-center align-items-center">
        <button id="login-button" class="btn btn-primary">Login</button>
        <button id="verify-button" class="btn btn-primary d-none">Verify</button>
      </div>
    </form>
  </div>
  <script>
    console.log("Entered")
    let loginButton = document.getElementById('login-button')

    loginButton.addEventListener('click', function (e) {
      e.preventDefault();

      let myForm = document.getElementById('login-form')
      let formData = new FormData(myForm)

      let result = {};
      for (let entry of formData.entries()) {
        result[entry[0]] = entry[1];
      }

      console.log(result)

      fetch('/verify-login', {
          method: "POST",
          body: JSON.stringify(result),
          headers: {
            "Content-Type": "application/json; charset=UTF-8",

          }
        })
        .then(response => response.text())
        .then(response => {
          if (response == null) {
            console.log("Email Not sent")
          } else {
            document.getElementById('verify-token-input').classList.remove('d-none')
            document.getElementById('login-button').classList.add('d-none')
            document.getElementById('verify-button').classList.remove('d-none')
          }
        })
    })

    let verifyButton = document.getElementById('verify-button')
    verifyButton.addEventListener('click', function (e) {

      e.preventDefault();

      let tokenToVerify = document.getElementById('verify-token-input').value

      console.log(tokenToVerify)

      fetch('/verify-token', {
          method: "POST",
          body: tokenToVerify,
          headers: {
            "Content-Type": "application/json; charset=UTF-8",

          }
        })
        .then(response => response.text())
        .then(response => {
          if (response == "verification success") {
            console.log("success")
            location.href = 'http://localhost:8080/dashboard'
          } else {
            console.log("Wrong otp")
          }
        })
    })
  </script>
</body>

</html> -->


<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />
    <link rel="stylesheet" href="/login.css">
    <link rel="stylesheet" href="/simpleAlert.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css" rel="stylesheet" />
    
    <title>Login</title> 


<style>
  :root {
    --login-bg-color: radial-gradient(circle, rgb(143 0 0) 0%, rgb(0 0 0) 100%);
    --welcome-color: #740e00;
    --bottom-line-color: #ff1f00;
  }



  .background {
    background: var(--login-bg-color);
    position: fixed;
    display: block;
    top: 0;
    left: 0;
    z-index: -1;
    height: 100vh;
    width: 100%;
  }


  /* Custom CSS */
  .cust-btn-group {
    display: flex;
    align-items: center;
    padding: 7px 15px;
    background: #fff;
    border: 1px solid #c2c2c2;
    border-radius: 25px;
    font-size: 18px;
  }

  .cust-input-prepend {
    margin-right: 10px;
    width: 20px;
  }

  .cust-btn-group input {
    border: none;
    width: 100%;
  }

  .cust-btn-group input:focus {
    outline: none;
  }

  .bottom-line {
    width: 100px;
    position: relative;
    height: 1px;
    margin-bottom: 25px;
    background: var(--bottom-line-color);
    display: block;
  }

  .bottom-line::after {
    content: '';
    width: 100%;
    height: 2px;
    position: absolute;
    top: 2px;
    left: 0;
    background: #6b6d6d;
  }


  /* // Custom CSS */


  img {
    width: 100%;
  }

  .login-wrapper {
    overflow: hidden;
    padding: 15px;
    position: fixed;
    width: 1200px;
    left: calc(50% - 600px);
    top: calc(50% - 280px);
    box-shadow: 0px 0px 8px 1px;
    background: rgb(255 255 255 / 80%);
    border-radius: 30px;
  }

  section.login-wrapper::before {
    content: "";
    position: absolute;
    left: 0;
    bottom: 0;
    z-index: -1;
    width: 50%;
    height: 100%;
    background: rgb(255 255 255 / 80%);
  }

  .inner-login-wrapper {
    height: 100%;
    width: 100%;
  }

  .logo img {
    width: 170px;
  }

  #login-left {
    padding: 150px 100px;
  }

  #login-left .cust-btn-group i {
    color: #757575;
  }

  #login-left h3 span {
    color: var(--welcome-color);
  }


  .login-btn {
    display: block;
    margin: auto;
    background: #000;
    padding: 7px 50px;
    border-radius: 25px;
  }
  .verify-button {
    display: block;
    margin: auto;
    background: #000;
    padding: 7px 50px;
    border-radius: 25px;
  }

  @media (max-width: 1200px) {
    .login-wrapper {
      width: 950px;
      top: calc(50% - 268px);
      left: calc(50% - 475px);
    }

    #login-left {
      padding: 133px 50px;
    }
  }

  @media (max-width: 1023px) {
    .login-wrapper {
      width: 700px;
      top: calc(50% - 230px);
      left: calc(50% - 350px);
    }

    #login-left {
      padding: 49px 15px;
    }
  }

  @media (max-width: 767px) {
    .login-wrapper {
      position: relative;
      width: 100%;
      min-height: 100vh;
      border-radius: 0;
      left: 0;
      top: 0;
    }

    .inner-login-wrapper {
      height: 100%;
      width: 100%;
    }


  }
</style>
</head>

<body>
  <canvas class="background"></canvas>

  <section class="login-wrapper">
    <div class="inner-login-wrapper">
      <div class="row">
        <div class="col-md-6" id="login-right">
          <div class="logo">
            <img src="/image/logo-nmims.png" />
          </div>
          <object type="image/svg+xml" data="/image/login-animate-nmims.svg">
            <img src="/image/login-animate-nmims.svg" />
          </object>
        </div>
        <div class="col-md-6" id="login-left">
          <form  method="POST" class="text-center" id="login-form">
            <h3><span>Wel</span>come</h3>
            <span class="bottom-line mx-auto"></span>
            <div class="cust-btn-group mt-3 mb-3">
              <div class="cust-input-prepend">
                <i class="fa-solid fa-user"></i>
              </div>
              <input type="text" name="user_id" placeholder="Pan Card No."  required >
            </div>
            <div class="cust-btn-group mt-3 mb-3">
              <div class="cust-input-prepend">
                <i class="fas fa-envelope"></i>
              </div>
              <input type="text" name="email" placeholder="Email id"  required >
            </div>
            <div class="cust-btn-group mb-3">
              <div class="cust-input-prepend">
                <i class="fas fa-key"></i>
              </div>
              <input type="password" name="password" placeholder="Password" required>
              <input type="hidden" name="devicecheck" id="devicecheck">
            </div>
            <div id="token-div" class="cust-btn-group mb-3 d-none">
              <div class="cust-input-prepend">
                <i class="fas fa-key"></i>
              </div>
              <input type="text"  name="tokenToVerify" id="verify-token-input" placeholder="Verify Token">
            </div>
            <!-- <label>Is trusted device</label>
            <input type="checkbox" name="is_trusted" id="is_trusted"> -->
            <button class="btn btn-dark login-btn"><i class="fas fa-sign-in-alt"></i> Sign In</button>
              New user? <a href="/register">Sign Up</a>
            <button class="btn btn-dark d-none verify-button"><i class="fas fa-sign-in-alt"></i> Verify Email</button>
            <!-- <button type="button" class="btn btn-dark test-btn"><i class="fas fa-sign-in-alt"></i> Test Btn</button> -->
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Optional JavaScript -->
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.bundle.min.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/2.3.0/socket.io.dev.js"></script>
<script src="/js/session-timeout.js"></script>
<script src="/js/SimpleAlert.js"></script>
<script src="/js/script.js"></script>
<script src="/js/leftsidebartoggle.js"></script>
<script src="/js/ajaxApi.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
<script src="/js/jquery.bootpag.min.js"></script>

  <script src="/js/particlejs.min.js"></script>


  <!-- Page Level JavaScript Libaries End -->
  <script>
    window.onload = function () {
      console.log("Window on load")
      Particles.init({
        selector: '.background',
        connectParticles: true,
        color: '#ffffff'
      });
    };


    //DYNAMIC CSS
    const cssRoot = document.querySelector(':root');

    let org = 'nmims'

    if (org !== 'nmims') {
      cssRoot.style.setProperty("--login-bg-color",
        'radial-gradient(circle, rgb(0 13 107) 0%, rgb(0 0 0) 100%)')

      cssRoot.style.setProperty("--welcome-color",
        'rgb(0 13 107)')
    }


    let loginButton = document.querySelector('.login-btn')

    loginButton.addEventListener('click', function (e) {
      e.preventDefault();

      let myForm = document.getElementById('login-form')
      let formData = new FormData(myForm)

      let result = {};
      for (let entry of formData.entries()) {
        result[entry[0]] = entry[1];
      }

      console.log(result)

      fetch('/verify-login', {
          method: "POST",
          body: JSON.stringify(result),
          headers: {
            "Content-Type": "application/json; charset=UTF-8",

          }
        })
        .then(response => response.text())
        .then(response => {
          if (response == 200) {
            document.getElementById('token-div').classList.remove('d-none')
            document.querySelector('.login-btn').classList.add('d-none')
            document.querySelector('.verify-button').classList.remove('d-none')
          } else {
            alert("Error")
           
          }
        })
    })

    let verifyButton = document.querySelector('.verify-button')
    verifyButton.addEventListener('click', function (e) {

      e.preventDefault();

      let tokenToVerify = document.getElementById('verify-token-input').value

      console.log(tokenToVerify)

      fetch('/verify-token', {
          method: "POST",
          body: tokenToVerify,
          headers: {
            "Content-Type": "application/json; charset=UTF-8",

          }
        })
        .then(response => response.text())
        .then(response => {
          if (response == "verification success") {
            console.log("success")
            location.href = 'http://localhost:8080/dashboard'
          } else {
            console.log("Wrong otp")
          }
        })
    })

    let loginErrorMessage = ``;

    console.log('loginErrorMessage', loginErrorMessage)

    if (loginErrorMessage) {
      let simpleAlert = new SimpleAlert();
       

      simpleAlert.alert({
        title: "Login failed!",
        message: [{"":'User name or Password Invalid'}], 
        type:"alert-danger",
        buttons: {
          positive: {
            text: "Okay",
            action: function () {
              document.querySelector('.simple-alert').remove();
            }
          },
          negative: {
            text: "Cancel",
            action: function () {
              alert('Negative')
            }
          }
        }
      });
    }

    $("#devicecheck").val(localStorage.getItem('devicecheck'))


  </script>
</body>

</html>