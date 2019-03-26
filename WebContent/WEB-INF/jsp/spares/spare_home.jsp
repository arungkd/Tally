<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<main class="app-content">
 <div class="app-title">
    <div>
         <h1><i class="fa fa-dashboard"></i>Add Spare</h1>
    </div>
 </div>
 <div class="row">
 <div class="col-md-12">
   <div class="tile">
        <div class="row">
          <div class="col-lg-6">
			 <form:form action="saveSpare" method="post" modelAttribute="spares">
				    
				         <fieldset class="form-fieldset">
							<div class="form-group">
								<label class="form-label">Spare Name<span class="form-required">*</span></label>
								<form:input path="sparename" class="form-control"  />
							</div>
							<div class="form-group">
								<label class="form-label">Spare Unit<span class="form-required">*</span></label>
								<form:input path="spareunit" class="form-control"  />
							</div>
							<div class="form-group">
								<label class="form-label">Spare Description</label>
								<form:input path="sparedescription" class="form-control" />
							</div>
							<div class="form-group">
								<label class="form-label">Spare Price</label>
								<form:input path="spareprice" class="form-control" />
							</div>
							<div class="form-group">
								<label class="form-label">Spare Stock</label>
								<form:input path="sparestock" class="form-control" />
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
