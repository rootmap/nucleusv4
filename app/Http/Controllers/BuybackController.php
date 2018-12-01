<?php

namespace App\Http\Controllers;

use App\Buyback;
use App\Customer;
use App\Tender;
use Illuminate\Http\Request;

class BuybackController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private $moduleName="Buyback ";
    private $sdc;
    public function __construct(){ $this->sdc = new StaticDataController(); }

    public function index()
    {
        $tab=Buyback::where('store_id',$this->sdc->storeID())->get();
        return view('apps.pages.buyback.customer-lead',['existing_cus'=>$tab]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $tender=Tender::where('store_id',$this->sdc->storeID())->get();
        $authorizeNettender=Tender::where('authorizenet',1)->get();
        $payPaltender=Tender::where('paypal',1)->get();

        $productData=Customer::select('id','name')->where('store_id',$this->sdc->storeID())->get();
        return view('apps.pages.buyback.create',compact('productData','tender','authorizeNettender','payPaltender'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'customer_id'=>'required',
            'model'=>'required',
            'keep_this_on'=>'required',
            'price'=>'required',
            'payment_method_id'=>'required'
        ]);
        
            $cus=Customer::find($request->customer_id);
            $ten=Tender::find($request->payment_method_id);
            //dd($request->payment_method_id);
            $tab=new Buyback;
            $tab->customer_id=$request->customer_id;
            $tab->customer_name=$cus->name;
            $tab->model=$request->model;
            $tab->carrier=$request->carrier;
            $tab->imei=$request->imei;
            $tab->type_and_color=$request->type_and_color;
            $tab->memory=$request->memory;
            $tab->keep_this_on=$request->keep_this_on;
            $tab->condition=$request->condition;
            $tab->price=$request->price;
            $tab->payment_method_id=$request->payment_method_id;
            $tab->payment_method_name=$ten->name;
            $tab->store_id=$this->sdc->storeID();
            $tab->created_by=$this->sdc->UserID();
            $tab->save();
        
        $this->sdc->log("Buyback","New Buyback Has Been Created.");
        return redirect('buyback/create')->with('status', $this->moduleName.' Created Successfully !');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\CustomerLead  $customerLead
     * @return \Illuminate\Http\Response
     */
    public function show($id=0)
    {
        if($id>0)
        {
            $tender=Tender::where('store_id',$this->sdc->storeID())->get();
            $authorizeNettender=Tender::where('authorizenet',1)->get();
            $payPaltender=Tender::where('paypal',1)->get();

            

            $tab=\DB::table('buybacks')
                    ->where('id',$id)
                    ->where('store_id',$this->sdc->storeID())
                    ->first();

            $createdBY=\DB::table('users')->select("name")->where('id',$tab->created_by)->first();
            $createdByName=$createdBY->name;

            $productData=Customer::where('id',$tab->customer_id)->where('store_id',$this->sdc->storeID())->first();

            return view('apps.pages.buyback.view',['dataTable'=>$tab,'customer'=>$productData,'created_by'=>$createdByName,'tender'=>$tender,'authorizeNettender'=>$authorizeNettender,'payPaltender'=>$payPaltender,'id'=>$id]);
        }
        else
        {
            $tab=\DB::table('buybacks')->where('store_id',$this->sdc->storeID())->get();
            return view('apps.pages.buyback.list',['dataTable'=>$tab]);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\CustomerLead  $customerLead
     * @return \Illuminate\Http\Response
     */
    public function edit($id=0)
    {
        $tender=Tender::where('store_id',$this->sdc->storeID())->get();
        $authorizeNettender=Tender::where('authorizenet',1)->get();
        $payPaltender=Tender::where('paypal',1)->get();

        $productData=Customer::select('id','name')->where('store_id',$this->sdc->storeID())->get();
        $dataRow=\DB::table('buybacks')->where('id',$id)->first();
       //dd($dataRow);
        $orderStatusArray=array('Order Placed','Ready for Shipment','On The Way','Received','Return Order','Cancel');
        return view('apps.pages.buyback.create',['productData'=>$productData,'dataRow'=>$dataRow,'edit'=>$id,'orderStatusArray'=>$orderStatusArray,'tender'=>$tender,'authorizeNettender'=>$authorizeNettender,'payPaltender'=>$payPaltender]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\CustomerLead  $customerLead
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id=0)
    {
        $this->validate($request,[
            'customer_id'=>'required',
            'model'=>'required',
            'keep_this_on'=>'required',
            'price'=>'required',
            'payment_method_id'=>'required'
        ]);
        
            $cus=Customer::find($request->customer_id);
            $ten=Tender::find($request->payment_method_id);
            //dd($request->payment_method_id);
            $tab=\DB::table('buybacks')
                    ->where('id',$id)
                    ->update([
                        'customer_id'=>$request->customer_id,
                        'customer_name'=>$cus->name,
                        'model'=>$request->model,
                        'carrier'=>$request->carrier,
                        'imei'=>$request->imei,
                        'type_and_color'=>$request->type_and_color,
                        'memory'=>$request->memory,
                        'keep_this_on'=>$request->keep_this_on,
                        'condition'=>$request->condition,
                        'price'=>$request->price,
                        'payment_method_id'=>$request->payment_method_id,
                        'payment_method_name'=>$ten->name,
                        'updated_by'=>$this->sdc->UserID()
                    ]);
        
        $this->sdc->log("Buyback","Buyback Info Has Been Updated.");
        return redirect('buyback/list')->with('status', $this->moduleName.' Updated Successfully !');

    }

    public function buybackAjaxUpdate(Request $request,$id=0)
    {
        if($id>0)
        {
            $field=$request->fid;            
            $field_value=$request->fval; 
            
            if(isset($request->fidd))
            {
                $fieldd=$request->fidd; 
                $field_valuee=$request->fvall; 
                $tab=\DB::table('buybacks')
                    ->where('id',$id)
                    ->update([
                        $field=>$field_value,
                        $fieldd=>$field_valuee,
                        'updated_by'=>$this->sdc->UserID()
                    ]);
            }
            else
            {
                if($field=='address')
                {
                    $buy=\DB::table('buybacks')
                            ->where('id',$id)->first();
                    $cus=\DB::table("customers")
                            ->where('id',$buy->customer_id)
                            ->update(['address'=>$field_value,'store_id'=>$this->sdc->storeID()]);
                }
                elseif($field=='phone')
                {
                    $buy=\DB::table('buybacks')
                            ->where('id',$id)->first();
                    $cus=\DB::table("customers")
                            ->where('id',$buy->customer_id)
                            ->update(['phone'=>$field_value,'store_id'=>$this->sdc->storeID()]);
                }
                elseif($field=='email')
                {
                    $buy=\DB::table('buybacks')
                            ->where('id',$id)->first();
                    $cus=\DB::table("customers")
                            ->where('id',$buy->customer_id)
                            ->update(['email'=>$field_value,'store_id'=>$this->sdc->storeID()]);
                }
                else
                {
                    $tab=\DB::table('buybacks')
                    ->where('id',$id)
                    ->update([
                        $field=>$field_value,
                        'updated_by'=>$this->sdc->UserID()
                    ]);
                }
                
            }
            

            $this->sdc->log("Buyback","Buyback ID - ".$id." Info Has Been Updated.");

            return 1;
        }
        else
        {
            return 0;
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\CustomerLead  $customerLead
     * @return \Illuminate\Http\Response
     */
    public function destroy($id=0)
    {
        $tab=\DB::table('buybacks')->where('id',$id)->delete();
        $this->sdc->log("Buyback","Buyback Order deleted."); 
        return redirect('buyback/list')->with('status', $this->moduleName.' Deleted Successfully !');
    }
}
