@extends('apps.layout.master')
@section('title','Create New Repair Ticket')
@section('content')
<section id="form-action-layouts">
	<div class="row">
		<div class="col-md-12">
	        <div class="card">

	 
	            <div class="card-header">
	                <h4 class="card-title" id="striped-label-layout-card-center"><i class="icon-ticket"></i> New Ticket</h4>
	                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
        			<div class="heading-elements">
	                    <ul class="list-inline mb-0">
	                        <li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
	                        <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
	                    </ul>
	                </div>
	            </div>
	            <div class="card-body collapse in">
	                <div class="card-block">
						<form method="post"  
						@if(isset($editData))
							action="{{url('ticket/update/'.$editData->id)}}" 
						@else 
							action="{{url('ticket/save')}}" 
						@endif
						class="form form-horizontal striped-labels">
							{{csrf_field()}}
							
							<div class="row">
								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">Select Customer</label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<select  name="ticket_customer_id" id="ticket_customer_id" class="select2 form-control" style="width: 100%;"> 
								                          <option value="">Please Select</option>
								                          @if(isset($customer))
								                            @foreach($customer as $pro)
								                            <option  value="{{$pro->id}}">
								                              {{$pro->name}}
								                            </option>
								                            @endforeach
								                          @endif
								                    </select>
												</div>
											</div>
				                        </div>
									</div>
								</div>	

								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">Items Dropped Off ?</label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<label class="radio-inline">
														<input type="radio" name="isdropoff" checked="checked" value="Yes" class="style" id="isdropoff_0">
														<strong> Yes</strong>
													</label>
                        							<label class="radio-inline">
                        								<input type="radio" name="isdropoff" value="No" class="style" id="isdropoff_1">
                        								<strong> No</strong>
                        							</label>
												</div>
											</div>
				                        </div>
									</div>
								</div>
																
								
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">Device Type / Subject</label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<input type="text" id="eventRegName" class="form-control border-primary" placeholder="Device Type / Subject" 
													@if(isset($editData))
														value="{{$editData->device_type}}"  
													@endif 
													 name="ticket_device_type">
												</div>
											</div>
				                        </div>
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">IMEI</label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<input type="text" id="eventRegName" class="form-control border-primary" placeholder="IMEI" 
													@if(isset($editData))
														value="{{$editData->imei}}"  
													@endif 
													 name="ticket_imei">
												</div>
											</div>
				                        </div>
									</div>
								</div>

								

															
								
							</div>

							<div class="row">

								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">Problem type </label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<select  name="ticket_problem_id" id="ticket_problem_id" class="select2 form-control" style="width: 100%;"> 
								                          <option value="">Please Select</option>
								                          <option value="TP0001">Create New Problem</option>
								                          @if(isset($problem))
								                            @foreach($problem as $pro)
								                            <option  value="{{$pro->id}}">
								                              {{$pro->name}}
								                            </option>
								                            @endforeach
								                          @endif
								                    </select>
								                    <input type="text" id="projectinput2" style="display: none;" class="form-control" placeholder="Type Problem Name" name="ticket_problem_name">
												</div>
											</div>
				                        </div>
									</div>
								</div>
								
								
								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">Password</label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<input type="text" id="eventRegName" class="form-control border-primary" placeholder="Password" 
													@if(isset($editData))
														value="{{$editData->password}}"  
													@endif 
													 name="ticket_password">
												</div>
											</div>
				                        </div>
									</div>
								</div>								
								
							</div>

							<div class="row">

								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">Our Cost </label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<input type="text" id="eventRegName" class="form-control border-primary" placeholder="Our Cost" 
													@if(isset($editData))
														value="{{$editData->our_cost}}"  
													@endif 
													 name="ticket_our_cost">
												</div>
											</div>
				                        </div>
									</div>
								</div>	
								

								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">Type and Color</label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<input type="text" id="eventRegName" class="form-control border-primary" placeholder="Type and Color" 
													@if(isset($editData))
														value="{{$editData->type_n_color}}"  
													@endif 
													 name="ticket_type_n_color">
												</div>
											</div>
				                        </div>
									</div>
								</div>
															
								
							</div>

							<div class="row">
								
								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">Retail Price for customer</label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<input type="text" id="eventRegName" class="form-control border-primary" placeholder="Retail Price for customer" 
													@if(isset($editData))
														value="{{$editData->retail_price}}"  
													@endif 
													 name="ticket_retail_price">
												</div>
											</div>
				                        </div>
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">How did you hear about us ?</label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<input type="text" id="eventRegName" class="form-control border-primary" placeholder="How did you hear about us ?" 
													@if(isset($editData))
														value="{{$editData->how_did_you_hear_about_us}}"  
													@endif 
													 name="ticket_how_did_you_hear_about_us">
												</div>
											</div>
				                        </div>
									</div>
								</div>	


								

								
								
							</div>

							<div class="row">							
								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">Carrier</label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<input type="text" id="eventRegName" class="form-control border-primary" placeholder="Carrier" 
													@if(isset($editData))
														value="{{$editData->carrier}}"  
													@endif 
													 name="ticket_carrier">
												</div>
											</div>
				                        </div>
									</div>
								</div>	

								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">Tested After By</label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<input type="text" id="eventRegName" class="form-control border-primary" placeholder="Tested After By" 
													@if(isset($editData))
														value="{{$editData->tested_after_by}}"  
													@endif 
													 name="ticket_tested_after_by">
												</div>
											</div>
				                        </div>
									</div>
								</div>


								
							</div>

							<div class="row">							
								
								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">Tech Notes</label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<input type="text" id="eventRegName" class="form-control border-primary" placeholder="Tech Notes" 
													@if(isset($editData))
														value="{{$editData->tech_notes}}"  
													@endif 
													 name="ticket_tech_notes">
												</div>
											</div>
				                        </div>
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-body">
			                			<div class="form-group row last">
			                        		<label class="col-md-4 label-control">Tested Before By</label>
			                        		<div class="col-md-7">
												<div class="form-group">
													<input type="text" id="eventRegName" class="form-control border-primary" placeholder="Tested Before By" 
													@if(isset($editData))
														value="{{$editData->tested_before_by}}"  
													@endif 
													 name="ticket_tested_before_by">
												</div>
											</div>
				                        </div>
									</div>
								</div>
							</div>

							<div class="row">
			                    <div class="col-md-8 offset-md-2">
			                      <div class="form-group">
			                        <label for="projectinput2">Additional Info</label>
			                        <div class="form-control" style="clear: both; display: block; height: 150px; overflow-x: auto;">
			                            @if(isset($ticketAsset))
			                              @foreach($ticketAsset as $rep)
			                                <div class="col-md-12">
			                                  <input type="checkbox" id="projectinput2" name="ticket_{{strtolower(preg_replace('/[^a-zA-Z0-9]/', "",$rep->name))}}"> {{$rep->name}}
			                                  <div class="clearfix"></div>
			                                </div>
			                              @endforeach
			                            @endif
			                        </div>
			                      </div>
			                    </div>
			                 </div>

							
							


						



							<div class="form-actions center">
	                            <button type="button" class="btn btn-warning mr-1">
	                            	<i class="icon-cross2"></i> Cancel
	                            </button>
	                            <button type="submit" class="btn btn-primary">
	                                <i class="icon-check2"></i> Save
	                            </button>
	                        </div>


							</div>
				

						</form>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>

</section>
@endsection

@include('apps.include.datatable',['dateDrop'=>1,'selectTwo'=>1,'ticket'=>1])