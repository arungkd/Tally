<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<main class="app-content">
 <div class="app-title">
    <div>
         <h1><i class="fa fa-dashboard"></i>Edit Spare</h1>
    </div>
 </div>
<div class="row">
 <div class="col-md-12">
   <div class="tile">
        <div class="row">
          <div class="col-lg-6">
			 <form:form action="editSpare" method="post" modelAttribute="spares">
			          
				        
				         <fieldset class="form-fieldset">
				            <div class="form-group" style="display:none;">
								 <form:input path="spareid" id ="sprid" class="form-control"  />
							</div>
							<div class="form-group">
								<label class="form-label">Spare Name<span class="form-required">*</span></label>
								<form:input path="sparename" class="form-control"  />
							</div>
							<div class="form-group">
								<label class="form-label">Spare Unit<span class="form-required">*</span></label>
								<form:input path="spareunit" id="unit" class="form-control"  />
							</div>
							<div class="form-group">
								<label class="form-label">Spare Description</label>
								<form:input path="sparedescription" id="description" class="form-control" />
							</div>
							<div class="form-group">
								<label class="form-label">Spare Price</label>
								<form:input path="spareprice" id="price" class="form-control" />
							</div>
							<div class="form-group">
								<label class="form-label">Spare Stock</label>
								<form:input path="sparestock" id="stock" class="form-control" />
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
      
      $( "#sparename" ).autocomplete({
          source: function( request, response ) {
            $.ajax( {
              url: "getSparesBySearchString?searchString="+$("#sparename").val(),
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
                $(this).val(ui.item.sparename);
                console.log( "Selected: " + ui.item.sparename + " - SpareId " +ui.item.spareid );
	            $.ajax( {
	                url: "getSparesById?spareId="+ui.item.spareid,
	                method: "GET",
	                dataType: "json",
	                success: function( data ) {
	              	  console.log( data );
	            	  
	            	  $("#sprid").val(data.spareid);
	            	  $("#unit").val(data.spareunit);
	            	  $("#description").val(data.sparedescription);
	            	  $("#price").val(data.spareprice);
	            	  $("#stock").val(data.sparestock);
	            	  
	                },
	                error: function(error){
	              	  console.log("Error while calling auto complete getSpares method - "+error);
	                }
	                
	              } );
          }
      }) .autocomplete( "instance" )._renderItem = function( ul, item ) {
          return $( "<li id='"+item.spareid+"'>"+ item.sparename +"</li>" )
          .appendTo( ul );
      };

   
  </script>