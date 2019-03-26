<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<main class="app-content">
 <div class="app-title">
    <div>
         <h1><i class="fa fa-dashboard"></i>Add Customer</h1>
    </div>
 </div>
 <div class="row">
 <div class="col-md-12">
   <div class="tile">
        <div class="row">
          <div class="col-lg-6">
			 <form:form action="saveCustomer" method="post" modelAttribute="customer">
				    
				         <fieldset class="form-fieldset">
							<div class="form-group">
								<label class="form-label">Customer Name<span class="form-required">*</span></label>
								<form:input path="customerName" class="form-control"  />
							</div>
							<div class="form-group">
								<label class="form-label">Company Name<span class="form-required">*</span></label>
								<form:input path="companyName" class="form-control"  />
							</div>
							<div class="form-group">
								<label class="form-label">Address 1</label>
								<form:input path="address1" class="form-control" />
							</div>
							<div class="form-group">
								<label class="form-label">Address 2</label>
								<form:input path="address2" class="form-control" />
							</div>
							<div class="form-group">
								<label class="form-label">Email</label>
								<form:input path="email" class="form-control" />
							</div>
							<div class="form-group">
								<label class="form-label">Contact Number</label>
								<form:input path="contactNumber" class="form-control" />
							</div>
							<div class="form-group">
								<label class="form-label">Gst Number</label>
								<form:input path="gstNumber" class="form-control" />
							</div>
							
						</fieldset>
						<div class="tile-footer">
			              <button class="btn btn-primary" type="submit">Submit</button>
			            </div>
		   </form:form> 
	   </div>
	 </div>	
   </div>
 </div>
</div>
</main>
 <script type="text/javascript" src="resources/assets/js/jquery-3.2.1.min.js"></script>
