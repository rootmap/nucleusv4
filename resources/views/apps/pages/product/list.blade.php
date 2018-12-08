@extends('apps.layout.master')
@section('title','Product')
@section('content')
<section id="form-action-layouts">
<?php 
    $dataMenuAssigned=array();
    $dataMenuAssigned=StaticDataController::dataMenuAssigned();
    //dd($dataMenuAssigned);
?>
  
    <!-- Both borders end-->
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title"><i class="icon-database"></i> Product List</h4>
                <a class="heading-elements-toggle">
                    <i class="icon-ellipsis font-medium-3"></i>
                </a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
                        <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                    </ul>
                </div>
            </div>

                <div class="card-body collapse in">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered zero-configuration">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Category Name</th>
                                <th>Barcode</th>
                                <th>Name</th>
                                <th style="width: 50px;">Quantity in Stock</th>
                                <th>Price</th>
                                <th>Cost</th>
                                <th>Total price</th>
                                <th>Total cost</th>
                                <th style="width: 100px;">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(isset($dataTable))
                            @foreach($dataTable as $row)
                            <tr>
                                <td>{{$row->id}}</td>
                                <td>{{$row->category_name}}</td>
                                <td>{{$row->barcode}}</td>
                                <td>{{$row->name}}</td>
                                <td>{{$row->quantity}}</td>
                                <td>{{$row->price}}</td>
                                <td>{{$row->cost}}</td>
                                <td>{{($row->price*$row->quantity)}}</td>
                                <td>{{($row->cost*$row->quantity)}}</td>
                                <td>
                                        @if(in_array('Product_List_Edit', $dataMenuAssigned)) 
                                            <button type="button" data-id="{{$row->barcode}}" class="btn btn-secondary btn-sm barcodeCreate" id="barcodeCreateDD"><i class="icon-barcode"></i></button>
                                        @endif
                                        @if(in_array('Product_List_Edit', $dataMenuAssigned)) 
                                            <a href="{{url('product/edit/'.$row->id)}}" title="Edit" class="btn btn-sm btn-outline-info"><i class="icon-pencil22"></i></a>
                                        @endif
                                        @if(in_array('Product_List_Delete', $dataMenuAssigned)) 
                                            <a  href="{{url('product/delete/'.$row->id)}}" title="Delete" class="btn btn-sm btn-outline-info btn-accent-2"><i class="icon-cross"></i></a>
                                        @endif

                                </td>
                            </tr>
                            @endforeach
                            @else
                            <tr>
                                <td colspan="6">No Record Found</td>
                            </tr>
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Both borders end -->

</section>
@include('apps.include.modal.barcode-modal')
@endsection

@include('apps.include.datatable',['JDataTable'=>1,'barcodejs'=>1])