<section class="content-header">
	<h1>
		<span class="glyphicon glyphicon-list-alt"></span>
		Change Request
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
		<li><a href="#">Change Management</a></li>
		<li class="active">Change Request</li>
	</ol>

	<!-- Main content -->
	<div class="row">
		<div class="col-md-12">
			<?php if(!empty($success_message)) { ?>
			<div class="alert alert-success alert-dismissible" style="margin-top: 3px;margin-bottom: 3px;">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
				<?php echo $success_message; ?>
			</div>
			<?php } ?>
			<?php if(!empty($error_message)) { ?>
			<div class="alert alert-danger alert-dismissible" style="margin-top: 3px;margin-bottom: 3px;">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
				<?php echo $error_message; ?>
			</div>
			<?php } ?>
			
			<form role="form" id="changeRequestForm" action="<?php echo base_url() ?>index.php/ChangeManagement/doChangeProcess/" method="post" enctype="multipart/form-data">
				<?php echo form_hidden($hfield); ?>
				<div class="box box-primary">
					<div class="box-header with-border">
	                    <h3 class="box-title">Project Information</h3>
	                </div>
                	<div class="box-body">
                		<div class="row">
                			<div class="col-sm-12">
                				<div class="form-group">
                					<table class="table-bordered" cellpadding="1px" cellspacing="1px" style="width:100%">
                						<tr>
                							<td height="10" style="background: #F2F3F4;width: 30%;text-align: left;vertical-align: center;">
            									<label for="projectAlias" style="margin-right: 3px;margin-bottom: 0px;">Project Name Alias:</label>
            								</td>
            								<td height="10" style="width: 20%;text-align: left;vertical-align: center;">
            									<label for="projectAlias" style="margin-left: 5px;margin-bottom: 0px;"><?php echo $projectInfo->projectNameAlias; ?></label>
            								</td>
            								<td height="10" style="background: #F2F3F4;width: 20%;text-align: left;vertical-align: center;">
            									<label for="projectName" style="margin-right: 3px;margin-bottom: 0px;">Project Name:</label>
            								</td>
            								<td height="10" style="width: 30%;text-align: left;vertical-align: center;"">
            									<label for="projectName" style="margin-left: 5px;margin-bottom: 0px;"><?php echo $projectInfo->projectName; ?></label>
            								</td>
                						</tr>
                					</table>
                				</div>
                			</div>
                		</div>
                	</div>
                	<div class="box-header with-border" style="margin-top: -10px;">
	                    <h3 class="box-title">Functional Requirement Information</h3>
	                </div>
	                <div class="box-body">
                		<div class="row">
                			<div class="col-sm-12">
                				<div class="form-group">
                					<table class="table-bordered" cellpadding="1px" cellspacing="1px" style="width: 100%;">
                						<tr>
                							<td height="10" style="background: #F2F3F4;width: 30%;text-align: left;">
                								<label for="functionNo" style="margin-right: 3px;margin-bottom: 0px;">Functional Requirement ID:</label>
                							</td>
                							<td height="10" style="width: 70%;">
                								<label for="projectName" style="margin-left: 5px;margin-bottom: 0px;"><?php echo $resultHeader->functionNo; ?></label>
                							</td>
                						</tr>
                						<tr>
                							<td height="10" style="background: #F2F3F4;width: 30%;text-align: left;">
                								<label for="functionNo" style="margin-right: 3px;margin-bottom: 0px;">Functional Requirement Description:</label>
                							</td>
                							<td height="10" style="width: 70%;">
                								<label for="projectName" style="margin-left: 5px;margin-bottom: 0px;"><?php echo $resultHeader->functionDescription; ?></label>
                							</td>
                						</tr>
                						<tr>
                							<td height="10" style="background: #F2F3F4;width: 30%;text-align: left;">
                								<label for="functionNo" style="margin-right: 3px;margin-bottom: 0px;">Functional Requirement Version:</label>
                							</td>
                							<td height="10" style="width: 70%;">
                								<label for="projectName" style="margin-left: 5px;margin-bottom: 0px;"><?php echo $resultHeader->functionVersion; ?></label>
                							</td>
                						</tr>
                					</table>
                				</div>
                			</div>
                		</div>
                	</div>
                	<div class="box-header with-border" style="margin-top: -10px;">
	                    <h3 class="box-title">Functional Requirement Detail</h3>
	                </div>
	                <div class="box-body no-padding">
	                	<div class="row">
	                		<div class="col-sm-12">
	                			<div class="form-group">
	                				<table class="table table-condensed">
	                					<tbody>
<!--
	                						<tr>
	                							<th>#</th>
	                							<th>Input Name</th>
	                							<th>Data Type</th>
	                							<th>Data Length</th>
	                							<th>Scale</th>
	                							<th>Unique</th>
	                							<th>NOT NULL</th>
	                							<th>Default</th>
	                							<th>Min</th>
	                							<th>Max</th>
	                							<th>Table</th>
	                							<th>Column</th>
	                							<th>-->
	                							<!-- <a href="#"><span class="label label-success">Add new input</span></a> -->
	          <!--      								<button type="button" name="addBtn" id="addBtn" class="btn btn-success btn-xs addInput" >Add new input</button>
	                							</th>
	                						</tr>
											-->
	                						<tr>
	                							<th>#</th>
	                							<th>Type of Data</th>
												<th>Data Name</th>
	                							<th>Data Type</th>
	                							<th>Data Length</th>
	                							<th>Scale</th>
	                							<th>Unique</th>
	                							<th>NOT NULL</th>
	                							<th>Default</th>
	                							<th>Min</th>
	                							<th>Max</th>
	                							<th>Table</th>
	                							<th>Column</th>
	                							<th> 
	                							<!-- <a href="#"><span class="label label-success">Add new input</span></a> -->
	                								<button type="button" name="addBtn" id="addBtn" class="btn btn-success btn-xs addInput" >Add new Input/Output</button>
	                							</th>
	                						</tr>

	                						<?php 
	                						$define = 1;
	                						foreach ($resultDetail as $value): ?>
                							<tr>
												
                								<td><?php echo $define++; ?></td>
												<?php 
												if ($value['typeData'] == 1) { 
													$value["typeData"] = "Input"; 
												}
												if ($value['typeData'] == 2) { 
													$value["typeData"] = "Output"; 
												}?>
												<td><?php echo $value['typeData']; ?> 
												</td>
                								<td>
                									<?php echo $value['dataName']; ?>
                								</td>
                								<td>
                									<?php echo $value['dataType']; ?>
                								</td>
                								<td>
                									<?php echo $value['dataLength']; ?>
                								</td>
                								<td>
                									<?php echo $value['decimalPoint']; ?>
                								</td>
                								<td>
                									<?php echo $value['constraintUnique']; ?>
                								</td>
                								<td>
                									<?php echo $value['constraintNull']; ?>
                								</td>
                								<td>
                									<?php echo $value['constraintDefault']; ?>
                								</td>
                								<td>
                									<?php echo $value['constraintMinValue']; ?>
                								</td>
                								<td>
                									<?php echo $value['constraintMaxValue']; ?>
                								</td>
                								<td>
                									<?php echo $value['refTableName']; ?>
                								</td>
                								<td>
                									<?php echo $value['refColumnName']; ?> 
                								</td>
												
                								<td>
										
												<?php if ($value['typeData'] == 'Input'){
													$value['typeData'] = '1';
												}else{
													$value['typeData'] = '2';
												}	?>											
                									<?php $keyId = $projectInfo->projectId."|".$value['dataId']."|".$value['schemaVersionId']."|".$hfield['functionId']."|".$value['typeData']; ?>
													<input type="hidden" name="projectId" id="projectId" value="<?php echo $value['projectId']; ?>">
                								<button type="button" name="edit" id="<?php echo $keyId; ?>" class="btn btn-warning btn-xs view" >Edit</button> 
													<button type="button" name="delete" id="<?php echo $keyId; ?>" class="btn btn-danger btn-xs delete" >Delete</button>

                									<!-- <a href="#"><span class="label label-primary">Edit</span></a>
                									<a href="#"><span class="label label-danger">Delete</span></a> -->
                								</td>
                							</tr>
	                						<?php endforeach ?>
	                					</tbody>
	                				</table>
	                			</div>
	                		</div>
	                	</div>
	                </div>
                </div>
                <div class="box box-warning">
                	<div class="box-header with-border">
	                    <h3 class="box-title">Change List</h3>
	                </div>
	                <div class="box-body no-padding">
	                	<div class="row">
	                		<div class="col-sm-12">
	                			<div class="form-group" id="inputChangeListTbl">
	                				<table class="table table-condensed">
	                					<tbody>
	                						<tr>
	                							<th>#</th>
												<th>Type of Data</th>
												<th>Data Name</th>
	                							<th>Data Type</th>
	                							<th>Data Length</th>
	                							<th>Scale</th>
	                							<th>Unique</th>
	                							<th>NOT NULL</th>
	                							<th>Default value</th>
	                							<th>Min</th>
	                							<th>Max</th>
	                							<th style="text-align: center;">Change Type</th>
	                							<th></th>
	                						</tr>
	                						<?php if(isset($inputChangeList) && 0 < count($inputChangeList)) { 
	                							$define = 1;
			               						foreach($inputChangeList as $value): ?>
				               					<tr>
												   
				               						<td><?php echo $define++; ?></td>
													<?php if ($value['typeData']== 1) { ?>
														<td><?php echo "Input"; ?> </td>
													<?php } else { ?>
														<td><?php echo "Output"; ?> </td>
													<?php }	?>
				               						<td><?php echo $value['dataName'] ?></td>
				               						<td><?php echo $value['newDataType'] ?></td>
				               						<td><?php echo $value['newDataLength'] ?></td>
				               						<td><?php echo $value['newScaleLength'] ?></td>
				               						<td><?php echo $value['newUnique'] ?></td>
				               						<td><?php echo $value['newNotNull'] ?></td>
				               						<td><?php echo $value['newDefaultValue'] ?></td>
				               						<td><?php echo $value['newMinValue'] ?></td>
				               						<td><?php echo $value['newMaxValue'] ?></td>
				               						<td style="text-align: center;">
				               							<?php $labelType = ('add' == $value['changeType'])? 'label-success': (('edit' == $value['changeType'])? 'label-warning' : 'label-danger') ?>
				               							<small class="label <?php echo $labelType ?>">
			               									<?php echo $value['changeType']; ?>
			               								</small>
				               						</td>
				               						<td>
				               							<span id="<?php echo $value['lineNumber']; ?>" class="glyphicon glyphicon-trash deleteTmpFRInputChg"></span>
				               						</td>
				               					</tr>
			               					<?php endforeach; ?>
	                						<?php }  ?>
	                					</tbody>
	                				</table>
									<?php $var = ('1' == $value['confirmflag'])? 'disabled' : ''; ?>
									<div class="box-body" align="right">
										<button type="button" name="confirmChange" id="confirmChange" class="btn btn-primary" style="margin-top: -10px;" onclick="mst001Save()" <?php echo $var;?>>
										<i class="fa fa-save"></i> Confirm
										</button>
									</div>		
									
									<input type="hidden" name="functionId" id="functionId" value="<?php echo $value['functionId']; ?>">
            						<input type="hidden" name="functionVersion" id="functionVersion" value="<?php echo $value['functionVersion']; ?>">
	                			</div>
	                		</div>
	                	</div>
	                </div>
                </div>
				<?php if ( 3 == $staffflag){ ?>
				<?php $var = ('1' == $value['approveflag'])? 'disabled' : ''; ?>
                <div align="right">
                	<button type="button" class="btn btn-primary sumbitChangeRequest" style="margin-top: -10px;" <?php echo $var;?>>
                		<i class="fa fa-save"></i> Submit
                	</button>
                </div>
				<?php } ?>

				<script type="text/javascript">
					function mst001Save(){
						var msg = "Are you sure to Confirm Change?";
						if(confirm(msg)){
							var projectId = $('#projectId').val();
							var functionId = $('#functionId').val();
							var functionVersion = $('#functionVersion').val();
							window.location  = baseUrl + "index.php/ChangeManagement/updateTempFRChangeList/"+projectId+"/"+functionId+"/"+functionVersion;
						}else{
							return false;
						}
					}
				</script>


                <!-- Start: Modal -->
                <div class="modal fade" id="confirm_change_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
               		<div class="modal-dialog" role="document">
               			<div class="modal-content">
               				<div class="modal-header">
               					<h4 class="modal-title" id="myModalLabel">Confirmation</h4>
               				</div>
               				<div class="modal-body">
               					This change relates to other functional requirements. Are you sure to submit the change request?
               				</div>
               				<div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">
						        	Cancel
						        </button>
						        <button type="button" class="btn btn-primary confirmChangeRequest">
						        	OK
						        </button>
					      	</div>
               			</div>
               		</div>	
                </div>
                <!-- End: Modal -->
            </form>
		</div>
	</div>


	<div id="edit_input_modal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content" style="border-radius:6px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Change Input/Output of Functional Requirements ID: 
						<b> <?php echo $resultHeader->functionNo; ?> </b>
					</h4>
				</div>
				<form method="post" id="changeInput_form" >
					<div class="modal-body" id="input_detail" align="center">
						<!-- detail here -->
					</div>
																												
				<div class="box-body" align="left">
				 	<button type="submit" name="saveChange" id="saveChange" class="btn btn-primary">
				 		<i class="fa fa-save"></i> Save
				 	</button>
			 	</div>
			 	</form>	
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

</section>