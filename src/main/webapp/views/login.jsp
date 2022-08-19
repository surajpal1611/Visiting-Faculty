<!DOCTYPE html>
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
    <form id="login-form">
      <input type="email" class="form-control my-5" name="email" placeholder="Enter Email">
      <input type="password" class="form-control my-5" name="password" placeholder="Enter password">
      <input type="number" class="form-control my-4 d-none" name="tokenToVerify" id="verify-token-input" placeholder="Please Enter Your Code">
      <div class="d-flex justify-content-center align-items-center">
        <button id="login-button" class="btn btn-primary">Login</button>
        <button id="verify-button" class="btn btn-primary d-none">Verify</button>
      </div>
    </form>
  </div>
  <script>
    console.log("Entered")
    let loginButton = document.getElementById('login-button')

    loginButton.addEventListener('click', function(e) {
      e.preventDefault();

      let myForm = document.getElementById('login-form')
        let formData = new FormData(myForm)

        let result = {};
        for (let entry of formData.entries()) {
          result[entry[0]] = entry[1];
        }

        console.log(result)
    
        fetch('/verify-login', {
          method : "POST",
          body : JSON.stringify(result),
          headers : {
            "Content-Type" : "application/json; charset=UTF-8",

          }
        })
        .then(response => response.text())
        .then(response => 
        {
          if (response == null) {
            console.log("Email Not sent")
          } else {
            document.getElementById('verify-token-input').classList.remove('d-none')
            document.getElementById('login-button').classList.add('d-none')
            document.getElementById('verify-button').classList.remove('d-none')
          }
        }
        )
    })

    let verifyButton = document.getElementById('verify-button')
    verifyButton.addEventListener('click', function(e) {

      e.preventDefault();

      let tokenToVerify = document.getElementById('verify-token-input').value

      console.log(tokenToVerify)


      fetch('/verify-token', {
          method : "POST",
          body :  tokenToVerify,
          headers : {
            "Content-Type" : "application/json; charset=UTF-8",

          }
        })
        .then(response => response.text())
        .then(response => 
        {
          if (response == "verification success") {
            console.log("success")
           location.href = 'http://localhost:8080/dashboard'
          } else {
            console.log("Wrong otp")
          }
        }
        )
    })

  </script>
</body>

</html>