<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket Raise</title>

</style>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
	<style type="text/css">
	@media (min-width: 1025px) {
  .h-custom {
    height: 100vh !important;
  }  
}
section #sec{
background-color: #8EC5FC;
background-image: linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 100%);

}
div textarea{
background-color: #D9AFD9;
background-image: linear-gradient(0deg, #D9AFD9 0%, #97D9E1 100%);
overflow: hidden;
}

         .btn-grad {background-image: linear-gradient(to right, #3CA55C 0%, #B5AC49  51%, #3CA55C  100%)}
         .btn-grad {
            margin: 10px;
            padding: 15px 45px;
            text-align: center;
            text-transform: uppercase;            
            background-size: 200% auto;
            color: white;            
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
            display: block;
            transition: linear 0.5s;
          }

          .btn-grad:hover {
            background-position: right center; /* change the direction of the change here */
            color: #fff;
            text-decoration: none;
          }
          
          #select{
          
          }
	section  #ticket{ 
    border: 2px solid rgba(255, 120, 250, .2);
    background-clip: padding-box; 
         }
         
	</style>
</head>
<body style="background-color: #8fc4b7;">
<jsp:include page="/WEB-INF/header/userheader.jsp"/>
	<!-- ###############################CODE STARTS HERE##########################################  -->
	
	
	
	
	<section class="h-100 vh-99 h-custom mb-3 " >
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100" >
      <div class="col-lg-8 col-xl-6"  >
        <div class="card rounded-3" style="" id="sec">
          <img src="ticket-office.png" class="w-20 mt-3" style="width: 110px;height: 110px;border:5px #8fc4b7 solid;border-radius:50% ;margin-left: 40%;background-color: black;opacity: 0.8  " alt="Sample photo">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2 text-center fs-1 btn-floating btn-rounded" id="ticket">Ticket Raise</h3>

            <form class="px-md-2" action="raise" method="post">
              

              <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline datepicker w-100  text-left container-fluid"  >
                    <input
                      type="date"
                      class="form-control "
                      id="exampleDatepicker1"
                      name="date"
                      placeholder="Select Date"
                      required="required"
                      style="width: 200x;text-align: left;"
                    />
                    
                  </div>

                </div>
            
              </div>

              <div class="mb-4 text-center dropdown btn-outline-secondary">

                <select class="select containter p-3 pl-5 pr-5 text-center w-100 dropdown-toggle" id="select" name="type"  >
                  <option value="Select" disabled class="bg-dark">Select Issue Type</option>
                  <option value="Account" >Personal Account Issue</option>
                  <option value="Technical" >Technical Issue</option>
                  <option value="Asset" >Asset Issue</option>
                  <option value="Payment">Payment Issue</option>
                  <option value="Other" >Other Issue</option>
                </select>

              </div>

              <div class="row mb-4 pb-2 pb-md-0 mb-md-5">
                <div class="col-md-6">

                  <div class="form-outline bg-outline-primary">
                   <textarea rows="10" cols="50" placeholder="Describe your issue here" class="text-dark" name="description"></textarea>
                  </div>

                </div>
              </div>

              <button type="submit" class="btn btn-grad btn-lg mb-1 btn-floating ">Submit</button>
			 <button type="button" onclick="history.back()" class="btn bg-dark text-right text-light btn-lg mb-1 btn-floating ">Back</button>
            </form>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
	
	
	
	
	
	<!-- ##############################CODE ENDS HERE###########################################  -->
	<footer>
		<jsp:include page="/WEB-INF/footer/footer.jsp"></jsp:include>
	</footer>
	<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
</body>
</html>