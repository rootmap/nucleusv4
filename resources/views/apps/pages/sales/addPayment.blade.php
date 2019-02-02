@extends('apps.layout.master')
@section('title','System Available Menu')
@section('content')
<section id="file-exporaat">
	<div class="row">
		<div class="col-md-6">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-card-center">
						<i class="icon-money"></i> Add Invoice / Sales Payment
					</h4>
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
						<form class="form" method="post"
							@if(isset($edit))
							action="{{url('menu-item/modify/'.$dataRow->id)}}"
							@else
							action="{{url('menu-item/save')}}"
							@endif
							>
							{{ csrf_field() }}
							<div class="form-body">
								
								<div class="form-group">
									<label for="eventRegInput1">Parent / Child Menu <span class="text-danger">*</span></label>
									<select id="eventRegInput1" class="form-control select2 border-green" name="menu_type">
										<option
											@if(isset($edit))
											@if($dataRow->is_parent==0)
											selected="selected"
											@endif
											@endif
										value="0">Select Type</option>
										<option
											@if(isset($edit))
											@if($dataRow->is_parent==1)
											selected="selected"
											@endif
											@endif
										value="1">Parent Menu</option>
										<option
											@if(isset($edit))
											@if(!empty($dataRow->parent_id))
											selected="selected"
											@endif
											@endif
										value="2">Child Menu</option>
									</select>
								</div>
								<div class="form-group">
									<label for="eventRegInput1">Select Parent <span class="text-danger">*</span></label>
									<select id="eventRegInput1" class="form-control border-green" name="parent_id">
										<option value="0">Select Parent Menu</option>
										@if(isset($dataTableParent))
										@foreach($dataTableParent as $row)
										<option
											@if(isset($edit))
											@if(!empty($dataRow->parent_id))
											@if($dataRow->parent_id==$row->id)
											selected="selected"
											@endif
											@endif
											@endif
										value="{{$row->id}}">{{$row->name}} - {{$row->total}}</option>
										@endforeach
										@endif
									</select>
								</div>
							</div>
							<div class="form-actions center">
								<button type="button" class="btn btn-green btn-lighten-2 mr-1">
								<i class="icon-cross2"></i> Cancel
								</button>
								@if(isset($edit))
								<button type="submit" class="btn btn-green btn-darken-2">
								<i class="icon-check2"></i> Update
								</button>
								@else
								<button type="submit" class="btn btn-green btn-darken-2">
								<i class="icon-check2"></i> Save
								</button>
								@endif
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-card-center">
						<i class="icon-file"></i> Invoice Detail
					</h4>
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
							<div class="form-body">
								
								<div class="form-group">
									<label for="eventRegInput1">Menu Name <span class="text-danger">*</span></label>
									<input type="text"
									@if(isset($edit))
									value="{{$dataRow->name}}"
									@endif
									id="eventRegInput1" class="form-control border-green" placeholder="System Available Menu Name" name="name">
								</div>
								<div class="form-group">
									<label for="eventRegInput1">Menu URL <span class="text-danger">*</span></label>
									<input type="text"
									@if(isset($edit))
									value="{{$dataRow->url}}"
									@endif
									id="eventRegInput1" class="form-control border-green" placeholder="URL" name="url">
								</div>
								<div class="form-group">
									<label for="eventRegInput1">Parent / Child Menu <span class="text-danger">*</span></label>
									<select id="eventRegInput1" class="form-control border-green" name="menu_type">
										<option
											@if(isset($edit))
											@if($dataRow->is_parent==0)
											selected="selected"
											@endif
											@endif
										value="0">Select Type</option>
										<option
											@if(isset($edit))
											@if($dataRow->is_parent==1)
											selected="selected"
											@endif
											@endif
										value="1">Parent Menu</option>
										<option
											@if(isset($edit))
											@if(!empty($dataRow->parent_id))
											selected="selected"
											@endif
											@endif
										value="2">Child Menu</option>
									</select>
								</div>
								<div class="form-group">
									<label for="eventRegInput1">Select Parent <span class="text-danger">*</span></label>
									<select id="eventRegInput1" class="form-control border-green" name="parent_id">
										<option value="0">Select Parent Menu</option>
										@if(isset($dataTableParent))
										@foreach($dataTableParent as $row)
										<option
											@if(isset($edit))
											@if(!empty($dataRow->parent_id))
											@if($dataRow->parent_id==$row->id)
											selected="selected"
											@endif
											@endif
											@endif
										value="{{$row->id}}">{{$row->name}} - {{$row->total}}</option>
										@endforeach
										@endif
									</select>
								</div>
							</div>
							<hr>
							<div class="form-actions center">
								<button type="button" class="btn btn-green btn-lighten-2 mr-1">
								<i class="icon-cross2"></i> Cancel
								</button>
								@if(isset($edit))
								<button type="submit" class="btn btn-green btn-darken-2">
								<i class="icon-check2"></i> Update
								</button>
								@else
								<button type="submit" class="btn btn-green btn-darken-2">
								<i class="icon-check2"></i> Save
								</button>
								@endif
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
@endsection
@include('apps.include.datatable',['JDataTable'=>1,'selectTwo'=>1])