<main class="app-content">
 <div class="app-title">
    <div>
         <h1><i class="fa fa-dashboard"></i>Spare Report</h1>
    </div>
 </div>
 <div class="row">
 <div class="col-md-12">
   <div class="tile">
        <div class="row">
          <div class="col-lg-6">
			 <form>
				    
				         <fieldset class="form-fieldset">
							<div class="form-group">
								<label class="form-label">Spare Name<span class="form-required">*</span></label>
								<input id="countries" class="form-control"  />
							</div>
						</fieldset>
		    </form> 
	   </div>
	 </div>	
   </div>
 </div>
</div>
</main>
 <script type="text/javascript" src="resources/assets/js/jquery-3.2.1.min.js"></script>
 <script type="text/javascript" src="resources/assets/js/jquery-ui.js"></script>
 
 <script type="text/javascript">
      $(document).ready(function () {
        alert("hi");
      });
      
      $( "#countries" ).autocomplete({
          source: function( request, response ) {
            $.ajax( {
              url: "getSparesBySearchString?searchString="+$("#countries").val(),
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
