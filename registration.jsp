<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form</title>
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="css/styles.css"></head>
<body>
        <div class="main">
                <section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form action="uploaduserinfo.jsp" method="post" class="reg-form"
							id="reg-form">
							<div class="form-group">
								<label for="name"><i
									class="item"></i></label> <input
									type="text" name="Control" id="name" placeholder="Control No" required/>
							</div>
                                                        <div class="form-group">
								<label for="name"><i
									class="item"></i></label> <input
									type="text" name="Fname" id="name" placeholder="First Name" required/>
							</div>
                                                        <div class="form-group">
								<label for="name"><i
									class="item"></i></label> <input
									type="text" name="Lname" id="name" placeholder="Last Name" required/>
							</div>
							<div class="form-group">
								<label for="email"><i class="item"></i></label> <input
									type="email" name="Email" id="email" placeholder="Your Email" required/>
							</div>
                                                        <div class="form-group">
								<label for="contact"><i class="item"></i></label>
								<input type="text" name="Mobile" id="contact"
									placeholder="Contact no" pattern="[0-9]{10}" title="Enter 10 Digits" required/>
							</div>
							<div class="form-group">
                                                            <label for="pass"><i class="item"></i></label>
                                                                <input type="password" name="pwd" id="pwd" 
                                                                        placeholder="Password" pattern="{4-10}" title="Enter Password" required/>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="item"></i></label>
								<input type="password" name="pwdr" id="pwdr"
									placeholder="Repeat your password" pattern="{4-10}" title="Repeat Password" required/>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" onclick="pass()" value="Register" />
							</div>
                                                    <div class="form-group form-button">
								<g id="error"></g>
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="img/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="index.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>


</body>
</html>
<script>
function pass(){
	var pas = document.getElementById("pwd");
	var rpas = document.getElementById("pwdr"); 
if (pas.value != rpas.value){
	document.getElementById("error").innerHTML="Enter same password in Repeat Password..";
	}
else{
	document.getElementById("error").innerHTML="";
    }
}
	

</script>
