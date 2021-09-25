<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
.error{
	color: red;
}
</style>
</head>
<body>
    <form class="modal-content animate" id="checkForm" action="/action_page.php" method="post">
        <div class="container">
            <label for="name"><b>Employee ID</b></label>
            <input type="text" placeholder="Enter Employee ID" name="emp_id" id="emp_id" required>
            <br>
            <button type="submit">Check</button>
        </div>
        <div id="emp_details" style="display: none;">
            <label ><b>Name: <span id="name"></span></b></label><br>
            <label ><b>email: <span id="email"></span></b></label><br>
            <label ><b>phone: <span id="phone"></span></b></label><br>
            <label ><b>address: <span id="address"></span></b></label>
        </div>
    </form>

	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.min.js"></script> 
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
   <script>
        $(document).ready(function() {
            $("#checkForm").validate({
                debug: true,
                errorElement: 'span',
                errorClass: 'error',
                rules: {
                    emp_id: { required: true}
                },
                messages: {
                    emp_id: { required: "Please enter Employee ID" }
                },
                submitHandler: function(form) {
                    $(form).ajaxSubmit({
                        url: 'login_validate/'+$('#emp_id').val(),
                        target: 'result',
                        dataType:'json',
                        beforeSubmit: function() {
                        },
                        success: function(data) {
                            if (data.error) {
                                toastr.error(data.message);
                                $('#emp_details').hide();
                            }else{
                                $('#emp_details').show();
                                $('#name').html(data.message.name);
                                $('#email').html(data.message.email);
                                $('#phone').html(data.message.phone);
                                $('#address').html(data.message.address);
                                
                            }
                            
                        },
                        erroe:function(){
                            toastr.success('Server error try again');
                        },
                        complete:function(){
                        }
                    });
                }
            });
        });
    </script>
    <script type="text/javascript">
    // Default Configuration
        $(document).ready(function() {
            toastr.options = {
                'closeButton': true,
                'debug': false,
                'newestOnTop': false,
                'progressBar': false,
                'positionClass': 'toast-top-right',
                'preventDuplicates': false,
                'showDuration': '1000',
                'hideDuration': '1000',
                'timeOut': '5000',
                'extendedTimeOut': '1000',
                'showEasing': 'swing',
                'hideEasing': 'linear',
                'showMethod': 'fadeIn',
                'hideMethod': 'fadeOut',
            }
        });
    </script>
</body>
</html>
