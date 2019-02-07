<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="row">
 <div class="col-12">
	 <form:form action="saveSpare" method="post" modelAttribute="spares">
		  <div class="card-header">
				<h3 class="card-title">Spare Add</h3>
		  </div>
		  <div class="card-body">
		    <div class="row">
		      <div class="col-md-6 col-lg-4">
		         <fieldset class="form-fieldset">
					<div class="form-group">
						<label class="form-label">Spare Name<span class="form-required">*</span></label>
						<form:input path="sparename" class="form-control" placeholder="Enter Spare Name" />
					</div>
					<div class="form-group">
						<label class="form-label">Spare Unit<span class="form-required">*</span></label>
						<form:input path="spareunit" class="form-control" placeholder="Enter Spare Unit" />
					</div>
					<div class="form-group">
						<label class="form-label">Spare Description</label>
						<form:input path="sparedescription" class="form-control" placeholder="Enter Spare Description"/>
					</div>
					<div class="form-group">
						<label class="form-label">Spare Price</label>
						<form:input path="spareprice" class="form-control" placeholder="Enter Spare Price"/>
					</div>
				</fieldset>
		      </div>
		    </div>
		  </div>
		  <div class="card-footer text-right">
			<div class="d-flex">
				<a href="javascript:void(0)" class="btn btn-link">Cancel</a>
				<button type="submit" class="btn btn-primary ml-auto" >Save</button>
			</div>
		</div>
	 </form:form>
 </div>
</div>