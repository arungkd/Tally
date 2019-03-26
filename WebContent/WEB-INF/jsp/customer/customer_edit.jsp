<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<main class="app-content">
 <div class="app-title">
    <div>
         <h1><i class="fa fa-dashboard"></i>Edit Customer</h1>
    </div>
 </div>
 <div class="row">
 <div class="col-md-12">
   <div class="tile">
        <div class="row">
          <div class="col-lg-6">
			 <form:form action="editCustomer" method="post" modelAttribute="customer">
				    
				         <fieldset class="form-fieldset">
				           <div class="form-group" style="display:none;">
								 <form:input path="customerid" id ="cstmrid" class="form-control"  />
							</div>
							<div class="form-group">
								<label class="form-label">Customer Name<span class="form-required">*</span></label>
								<form:input path="customerName" class="form-control"  />
							</div>
							<div class="form-group">
								<label class="form-label">Company Name<span class="form-required">*</span></label>
								<form:input path="companyName" id="companyName" class="form-control"  />
							</div>
							<div class="form-group">
								<label class="form-label">Address 1</label>
								<form:input path="address1" id="address1" class="form-control" />
							</div>
							<div class="form-group">
								<label class="form-label">Address 2</label>
								<form:input path="address2" id="address2" class="form-control" />
							</div>
							<div class="form-group">
								<label class="form-label">Email</label>
								<form:input path="email" id="email" class="form-control" />
							</div> 
							<div class="form-group">
								<label class="form-label">Contact Number</label>
								<form:input path="contactNumber" id="contactnumber" class="form-control" />
							</div>
							<div class="form-group">
								<label class="form-label">Gst Number</label>
								<form:input path="gstNumber" id="gstNumber" class="form-control" />
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
 <script type="text/javascript" src="resources/assets/js/jquery-ui.js"></script>
 
 <script type="text/javascript">
      
      $( "#customerName" ).autocomplete({
          source: function( request, response ) {
            $.ajax( {
              url: "getCustomerBySearchString?searchString="+$("#customerName").val(),
              method: "GET",
              dataType: "json",
              success: function( data ) {
            	  response( data );
              },
              error: function(error){
            	  console.log("Error while calling auto complete getSpares method - "+error);
              }
              
            } );
          },
          minLength: 3,
          select: function( event, ui ) {
        	    event.preventDefault();
                $(this).val(ui.item.customerName);
                console.log( "Selected: " + ui.item.customerName + " - CustomerId " +ui.item.customerid );
	            $.ajax( {
	                url: "getCustomerById?customerId="+ui.item.customerid,
	                method: "GET",
	                dataType: "json",
	                success: function( data ) {
	              	  console.log( data );
	            	  
	            	  $("#cstmrid").val(data.customerid);
	            	  $("#companyName").val(data.companyName);
	            	  $("#address1").val(data.address1);
	            	  $("#address2").val(data.address2);
	            	  $("#email").val(data.email);
	            	  $("#contactNumber").val(data.contactNumber);
	            	  $("#gstNumber").val(data.gstNumber);
	            	  
	                },
	                error: function(error){
	              	  console.log("Error while calling auto complete getSpares method - "+error);
	                }
	                
	              } );
          }
      }) .autocomplete( "instance" )._renderItem = function( ul, item ) {
          return $( "<li id='"+item.customerid+"'>"+ item.customerName +"</li>" )
          .appendTo( ul );
      };

   
  </script>
