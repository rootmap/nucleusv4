<?php

namespace App\Http\Controllers;

use App\InStoreRepair;
use Illuminate\Http\Request;
use App\InStoreRepairDevice;
use App\InStoreRepairModel;
use App\InStoreRepairProblem;
use App\InStoreRepairPrice;
use App\InStoreRepairProduct;
use App\Category;
use App\Product;
use App\ProductStockin;
use App\RetailPosSummary;
use App\RetailPosSummaryDateWise;
use App\Store;
use Auth;
class InStoreRepairController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private $moduleName="In Store Repair Settings ";
    private $sdc;
    public function __construct(){ $this->sdc = new StaticDataController(); }


    public function index()
    {
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $device=InStoreRepairDevice::select('id','name')->where('store_id',$this->sdc->storeID())->get();
        $model=InStoreRepairModel::select('id','name','device_id')->where('store_id',$this->sdc->storeID())->get();
        $problem=InStoreRepairProblem::select('id','name','model_id')->where('store_id',$this->sdc->storeID())->get();
        $estPrice=InStoreRepairPrice::select('id','price','device_id','model_id','problem_id','device_name','model_name','problem_name')->where('store_id',$this->sdc->storeID())->get();

        return view('apps.pages.instorerepair.settings.create',compact('device','model','problem','estPrice'));
    }

    public function deviceModel(Request $request)
    {
        $model=InStoreRepairModel::where('device_id',$request->device_id)->where('store_id',$this->sdc->storeID())->get();
        return response()->json($model);
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
            'device_id'=>'required',
            'model_id'=>'required',
            'problem_id'=>'required',
            'price'=>'required',
            'name'=>'required',
            'quantity'=>'required',
            'our_cost'=>'required',
        ]);

        \DB::beginTransaction();
        $creation_type="Store";
        if(Auth::user()->user_type==1)
        {
            $creation_type="Master";
        }
        
        $device_id=0;
        $device_name="";
        if($request->device_id=="D000")
        {
            $tabCount=InStoreRepairDevice::where('name',trim($request->device_name))->where('store_id',$this->sdc->storeID())->count();
            if($tabCount==0)
            {
                $tab=new InStoreRepairDevice;
                $tab->name=$request->device_name;
                $tab->used_type=$creation_type;
                $tab->store_id=$this->sdc->storeID();
                $tab->created_by=$this->sdc->UserID();
                $tab->save();
            }
            else
            {
                $tab=InStoreRepairDevice::where('name',trim($request->device_name))->where('store_id',$this->sdc->storeID())->first();
            }
            
            $device_id=$tab->id;
            $device_name=$tab->name;
        }
        else
        {
            $tab=InStoreRepairDevice::find($request->device_id);
            $device_id=$tab->id;
            $device_name=$tab->name;
        }

        $model_id=0;
        $model_name="";
        if($request->model_id=="M000")
        {
            $tabModelCount=InStoreRepairModel::where('device_id',$device_id)->where('store_id',$this->sdc->storeID())->where('name',trim($request->model_name))->count();
            if($tabModelCount==0)
            {
                $tabModel=new InStoreRepairModel;
                $tabModel->device_id=$device_id;
                $tabModel->device_name=$device_name;
                $tabModel->name=$request->model_name;
                $tabModel->used_type=$creation_type;
                $tabModel->store_id=$this->sdc->storeID();
                $tabModel->created_by=$this->sdc->UserID();
                $tabModel->save();
            }
            else
            {
                $tabModel=InStoreRepairModel::where('device_id',$device_id)->where('store_id',$this->sdc->storeID())->where('name',trim($request->model_name))->first();
            }
            
            $model_id=$tabModel->id;
            $model_name=$tabModel->name;
        }
        else
        {
            $tabModel=InStoreRepairModel::find($request->model_id);
            $model_id=$tabModel->id;
            $model_name=$tabModel->name;
        }


        $problem_id=0;
        $problem_name="";
        //dd($request->problem_id);
        
        if($request->problem_id=="P000")
        {
            $tabProblemCount=InStoreRepairProblem::where('name',trim($request->problem_name))->where('store_id',$this->sdc->storeID())->count();
            if($tabProblemCount==0)
            {
                $tabProblem=new InStoreRepairProblem;
                $tabProblem->name=$request->problem_name;
                $tabProblem->used_type=$creation_type;
                $tabProblem->store_id=$this->sdc->storeID();
                $tabProblem->created_by=$this->sdc->UserID();
                $tabProblem->save();
            }
            else
            {
                $tabProblem=InStoreRepairProblem::where('name',trim($request->problem_name))->where('store_id',$this->sdc->storeID())->first();
            }
            
            $problem_id=$tabProblem->id;
            $problem_name=$tabProblem->name;
            
        }
        else
        {
            $tabProblem=InStoreRepairProblem::find($request->problem_id);
            $problem_id=$tabProblem->id;
            $problem_name=$tabProblem->name;
        }

        $tabPriceCount=InStoreRepairPrice::where('device_id',$device_id)
                                        ->where('model_id',$model_id)
                                        ->where('problem_id',$problem_id)
                                        ->where('store_id',$this->sdc->storeID())
                                        ->count();

        if($tabPriceCount==0)
        {
            $tabPrice=new InStoreRepairPrice;
            $tabPrice->device_id=$device_id;
            $tabPrice->device_name=$device_name;            
            $tabPrice->model_id=$model_id;
            $tabPrice->model_name=$model_name;            
            $tabPrice->problem_id=$problem_id;
            $tabPrice->problem_name=$problem_name;
            $tabPrice->price=$request->price;
            $tabPrice->used_type=$creation_type;
            $tabPrice->store_id=$this->sdc->storeID();
            $tabPrice->created_by=$this->sdc->UserID();
            $tabPrice->save();
        }

        $tabProductCount=InStoreRepairProduct::where('device_id',$device_id)
                                        ->where('model_id',$model_id)
                                        ->where('problem_id',$problem_id)
                                        ->where('store_id',$this->sdc->storeID())
                                        ->count();

        $checkRepairCategory=Category::where('name','Repair')->where('store_id',$this->sdc->storeID())->count();

        if($tabProductCount==0 && $checkRepairCategory==1)
        {
            

            $RepairCategory=Category::select('id','name')->where('name','Repair')->where('store_id',$this->sdc->storeID())->first();

            $repair_cid=$RepairCategory->id;
            $cat_name=$RepairCategory->name;
            //************adding product info Start**************************//
            $tabCount=Product::where('name',$request->name)
                             ->where('category_id',$request->category_id)
                             ->where('store_id',$this->sdc->storeID())
                             ->count();
            if($tabCount>0)
            {
                \DB::rollBack();
                return redirect('settings/instorerepair')->with('error', $this->moduleName.' Failed to create, Same Product already exists on product database.');
            }

            $tab=new Product;
            $tab->category_id=$repair_cid;
            $tab->category_name=$cat_name;
            $tab->name=$request->name;
            $tab->barcode=$request->barcode;
            $tab->quantity=$request->quantity;
            $tab->price=$request->retail_price;
            $tab->cost=$request->our_cost;
            $tab->used_type=$creation_type;
            $tab->store_id=$this->sdc->storeID();
            $tab->created_by=$this->sdc->UserID();
            $tab->save();
            $pid=$tab->id;

            $tabProduct=new InStoreRepairProduct;
            $tabProduct->product_id=$pid;
            $tabProduct->device_id=$device_id;
            $tabProduct->device_name=$device_name;            
            $tabProduct->model_id=$model_id;
            $tabProduct->model_name=$model_name;            
            $tabProduct->problem_id=$problem_id;
            $tabProduct->problem_name=$problem_name;
            $tabProduct->barcode=$request->barcode;
            $tabProduct->name=$request->name;
            $tabProduct->price=$request->retail_price;
            $tabProduct->cost=$request->our_cost;
            $tabProduct->quantity=$request->quantity;
            $tabProduct->description=$request->description;
            $tabProduct->used_type=$creation_type;
            $tabProduct->store_id=$this->sdc->storeID();
            $tabProduct->created_by=$this->sdc->UserID();
            $tabProduct->save();

            $tab_stock=new ProductStockin;
            $tab_stock->product_id=$pid;
            $tab_stock->quantity=$request->quantity;
            $tab_stock->price=$request->retail_price;
            $tab_stock->cost=$request->our_cost;
            $tab_stock->used_type=$creation_type;
            $tab_stock->store_id=$this->sdc->storeID();
            $tab_stock->created_by=$this->sdc->UserID();
            $tab_stock->save();
            $this->sdc->log("product","Product created from repair system.");
            RetailPosSummary::where('id',1)
            ->update([
               'product_item_quantity' => \DB::raw('product_item_quantity + 1'),
               'product_quantity' => \DB::raw('product_quantity + '.$request->quantity),
               'stockin_product_quantity' => \DB::raw('stockin_product_quantity + '.$request->quantity),
            ]);

            $Todaydate=date('Y-m-d');
            if(RetailPosSummaryDateWise::where('report_date',$Todaydate)->count()==0)
            {
                RetailPosSummaryDateWise::insert([
                   'report_date'=>$Todaydate,
                   'product_item_quantity' => \DB::raw('1'),
                   'product_quantity' => \DB::raw($request->quantity),
                   'stockin_product_quantity' => \DB::raw($request->quantity)
                ]);
            }
            else
            {
                RetailPosSummaryDateWise::where('report_date',$Todaydate)
                ->update([
                   'product_item_quantity' => \DB::raw('product_item_quantity + 1'),
                   'product_quantity' => \DB::raw('product_quantity + '.$request->quantity),
                   'stockin_product_quantity' => \DB::raw('stockin_product_quantity + '.$request->quantity)
                ]);
            }
            //************adding product info End**************************//


        }

        

        //dd($tabProduct);
        if($checkRepairCategory==0)
        {
            \DB::rollBack();
            return redirect('settings/instorerepair')->with('error', $this->moduleName.' Failed to create, Please Create a category ( Repair ) on Category Settings.');
        }
        elseif($tabPriceCount==1)
        {
            \DB::rollBack();
            return redirect('settings/instorerepair')->with('error', $this->moduleName.' Failed to create, Similar Repair Price already available in system.');
        }
        elseif($tabProductCount==1)
        {
            \DB::rollBack();
            return redirect('settings/instorerepair')->with('error', $this->moduleName.' Failed to create, Similar Repair Product already available in system.');
        }
        elseif(!empty($device_id) && !empty($device_name) && !empty($model_id) && !empty($model_name) && !empty($problem_id) && !empty($problem_name) && $tabProductCount==0 && $tabPriceCount==0 && $checkRepairCategory==1)
        {
            \DB::commit();
            return redirect('settings/instorerepair')->with('status', $this->moduleName.' for '.$request->name.' Created Successfully. !');
        }
        else
        {
            \DB::rollBack();
            return redirect('settings/instorerepair')->with('error', $this->moduleName.' Failed to create, Please try again. !');
        }

    }

    public function mergeDataTostore()
    {
        $search_type="Master";
        $store=Store::all();
        $device=InStoreRepairDevice::where('used_type',$search_type)->where('store_id',$this->sdc->storeID())->count();
        $model=InStoreRepairModel::where('used_type',$search_type)->where('store_id',$this->sdc->storeID())->count();
        $problem=InStoreRepairProblem::where('used_type',$search_type)->where('store_id',$this->sdc->storeID())->count();
        $price=InStoreRepairPrice::where('used_type',$search_type)->where('store_id',$this->sdc->storeID())->count();
        $product=InStoreRepairProduct::where('used_type',$search_type)->where('store_id',$this->sdc->storeID())->count();
        //dd($store);
        return view('apps.pages.instorerepair.settings.merge',compact('store','device','model','problem','price','product'));
    }

    public function clearstoreData(Request $request)
    {
        $this->validate($request,[
            'store_id'=>'required'
        ]);


        $search_type="Clone";
        \DB::beginTransaction();
        try{

            \DB::table('in_store_repair_devices')->where('used_type',$search_type)->where('store_id',$request->store_id)->delete();
            \DB::table('in_store_repair_models')->where('used_type',$search_type)->where('store_id',$request->store_id)->delete();
            \DB::table('in_store_repair_problems')->where('used_type',$search_type)->where('store_id',$request->store_id)->delete();
            \DB::table('in_store_repair_prices')->where('used_type',$search_type)->where('store_id',$request->store_id)->delete();
            \DB::table('in_store_repair_products')->where('used_type',$search_type)->where('store_id',$request->store_id)->delete();
            \DB::commit();

            return redirect('settings/instore/merge/repair/data')->with('status', 'Instore Repair Data Cleared Successfully. !');

        } catch (\Exception $e) {
            \DB::rollback();
            return redirect('settings/instore/merge/repair/data')->with('error', 'Instore Repair Data failed to clear. !');
        }
        
        
        
    }

    public function mergestoreData(Request $request)
    {
        $this->validate($request,[
            'store_id'=>'required'
        ]);

        //dd($request->store_id);

        $store=Store::where('store_id',$request->store_id)->first();

        if(Auth::user()->user_type==1)
        {
            \DB::beginTransaction();
            $creation_type="Clone";
            $search_type="Master";
            $deviceCount=0;
            if(isset($request->device))
            {
                $deviceCount=InStoreRepairDevice::where('used_type',$search_type)
                                                ->where('store_id',$this->sdc->storeID())
                                                ->count();
                if($deviceCount>0)
                {
                    $deviceSQL=InStoreRepairDevice::where('used_type',$search_type)
                                                  ->where('store_id',$this->sdc->storeID())
                                                  ->get();
                    foreach($deviceSQL as $row)
                    {
                        $tab=new InStoreRepairDevice;
                        $tab->name=$row->name;
                        $tab->used_type=$creation_type;
                        $tab->store_id=$request->store_id;
                        $tab->created_by=$this->sdc->UserID();
                        $tab->save();
                    }
                }
            }

            $ModelCount=0;
            if(isset($request->device))
            {
                $ModelCount=InStoreRepairModel::where('used_type',$search_type)
                                              ->where('store_id',$this->sdc->storeID())
                                              ->count();

                if($ModelCount>0)
                {
                    $ModelSQL=InStoreRepairModel::where('used_type',$search_type)
                                                ->where('store_id',$this->sdc->storeID())
                                                ->get();
                    //dd($ModelSQL);

                    foreach($ModelSQL as $row)
                    {
                        
                        $deviceSQL=InStoreRepairDevice::where('used_type',$creation_type)
                                                      ->where('name',$row->device_name)
                                                      ->where('store_id',$request->store_id)
                                                      ->first();

                        $tabModel=new InStoreRepairModel;
                        $tabModel->device_id=$deviceSQL->id;
                        $tabModel->device_name=$deviceSQL->name;
                        $tabModel->name=$row->name;
                        $tabModel->used_type=$creation_type;
                        $tabModel->store_id=$request->store_id;
                        $tabModel->created_by=$this->sdc->UserID();
                        $tabModel->save();

                    }
                }
            }


            $problemCount=0;
            if(isset($request->problem))
            {
                $problemCount=InStoreRepairProblem::where('used_type',$search_type)
                                                  ->where('store_id',$this->sdc->storeID())
                                                  ->count();
                                              
                if($problemCount>0)
                {
                    $problemSQL=InStoreRepairProblem::where('used_type',$search_type)
                                                    ->where('store_id',$this->sdc->storeID())
                                                    ->get();

                    foreach($problemSQL as $row)
                    {
                        $tabProblem=new InStoreRepairProblem;
                        $tabProblem->name=$row->name;
                        $tabProblem->used_type=$creation_type;
                        $tabProblem->store_id=$request->store_id;
                        $tabProblem->created_by=$this->sdc->UserID();
                        $tabProblem->save();
                    }
                }
            }

            $priceCount=0;
            if(isset($request->price))
            {
                $priceCount=InStoreRepairPrice::where('used_type',$search_type)
                                                  ->where('store_id',$this->sdc->storeID())
                                                  ->count();
                                              
                if($priceCount>0)
                {
                    $priceSQL=InStoreRepairPrice::where('used_type',$search_type)
                                                    ->where('store_id',$this->sdc->storeID())
                                                    ->get();

                    foreach($priceSQL as $row)
                    {



                        $deviceSQL=InStoreRepairDevice::where('used_type',$creation_type)
                                                      ->where('name',$row->device_name)
                                                      ->where('store_id',$request->store_id)
                                                      ->first();

                        

                        $ModelSQL=InStoreRepairModel::where('used_type',$creation_type)
                                                    ->where('device_id',$deviceSQL->id)
                                                    ->where('name',$row->model_name)
                                                    ->where('store_id',$request->store_id)
                                                    ->first();

                        $ProblemSQL=InStoreRepairProblem::where('used_type',$creation_type)
                                                        ->where('name',$row->problem_name)
                                                        ->where('store_id',$request->store_id)
                                                        ->first();

                        $tabPrice=new InStoreRepairPrice;
                        $tabPrice->device_id=$deviceSQL->id;
                        $tabPrice->device_name=$deviceSQL->name;            
                        $tabPrice->model_id=$ModelSQL->id;
                        $tabPrice->model_name=$ModelSQL->name;            
                        $tabPrice->problem_id=$ProblemSQL->id;
                        $tabPrice->problem_name=$ProblemSQL->name;
                        $tabPrice->price=$row->price;
                        $tabPrice->used_type=$creation_type;
                        $tabPrice->store_id=$request->store_id;
                        $tabPrice->created_by=$this->sdc->UserID();
                        $tabPrice->save();
                    }
                }
            }

            $categoryCount=0;
            if(isset($request->category))
            {

                $categoryCount=Category::where('store_id',$this->sdc->storeID())
                                             ->where('name',"Repair")
                                             ->count();
                if($categoryCount>0)
                {
                    $cat=new Category;
                    $cat->name="Repair";
                    $cat->store_id=$request->store_id;
                    $cat->created_by=$this->sdc->UserID();
                    $cat->save();
                }
            }


            $productCount=0;
            if(isset($request->product))
            {
                $productCount=InStoreRepairProduct::where('used_type',$search_type)
                                                  ->where('store_id',$this->sdc->storeID())
                                                  ->count();
                                              
                if($productCount>0)
                {
                    $productSQL=InStoreRepairProduct::where('used_type',$search_type)
                                                    ->where('store_id',$this->sdc->storeID())
                                                    ->get();

                    $categorySQL=Category::where('store_id',$request->store_id)
                                         ->where('name',"Repair")
                                         ->first();

                    $repair_cid=$categorySQL->id;
                    $cat_name=$categorySQL->name;

                    foreach($productSQL as $row)
                    {

                        $productPriceSQL=InStoreRepairPrice::where('used_type',$creation_type)
                                                           ->where('device_name',$row->device_name)
                                                           ->where('model_name',$row->model_name)
                                                           ->where('problem_name',$row->problem_name)
                                                           ->where('store_id',$request->store_id)
                                                           ->first();

                        //dd($productPriceSQL);

                        $tab=new Product;
                        $tab->category_id=$repair_cid;
                        $tab->category_name=$cat_name;
                        $tab->name=$row->name;
                        $tab->barcode=$row->barcode;
                        $tab->quantity=$row->quantity;
                        $tab->price=$row->price;
                        $tab->cost=$row->cost;
                        $tab->used_type=$creation_type;
                        $tab->store_id=$request->store_id;
                        $tab->created_by=$this->sdc->UserID();
                        $tab->save();
                        $pid=$tab->id;

                        $tabProduct=new InStoreRepairProduct;
                        $tabProduct->product_id=$pid;
                        $tabProduct->device_id=$productPriceSQL->device_id;
                        $tabProduct->device_name=$productPriceSQL->device_name;            
                        $tabProduct->model_id=$productPriceSQL->model_id;
                        $tabProduct->model_name=$productPriceSQL->model_name;            
                        $tabProduct->problem_id=$productPriceSQL->problem_id;
                        $tabProduct->problem_name=$productPriceSQL->problem_name;
                        $tabProduct->barcode=$row->barcode;
                        $tabProduct->name=$row->name;
                        $tabProduct->price=$row->price;
                        $tabProduct->cost=$row->cost;
                        $tabProduct->quantity=$row->quantity;
                        $tabProduct->description=$row->description;
                        $tabProduct->used_type=$creation_type;
                        $tabProduct->store_id=$request->store_id;
                        $tabProduct->created_by=$this->sdc->UserID();
                        $tabProduct->save();

                        $tab_stock=new ProductStockin;
                        $tab_stock->product_id=$pid;
                        $tab_stock->quantity=$row->quantity;
                        $tab_stock->price=$row->price;
                        $tab_stock->cost=$row->cost;
                        $tab_stock->used_type=$creation_type;
                        $tab_stock->store_id=$request->store_id;
                        $tab_stock->created_by=$this->sdc->UserID();
                        $tab_stock->save();
                        $this->sdc->log("product","Product Clone created from repair system.");
                        RetailPosSummary::where('id',1)
                        ->update([
                           'product_item_quantity' => \DB::raw('product_item_quantity + 1'),
                           'product_quantity' => \DB::raw('product_quantity + '.$row->quantity),
                           'stockin_product_quantity' => \DB::raw('stockin_product_quantity + '.$row->quantity),
                        ]);

                        $Todaydate=date('Y-m-d');
                        if(RetailPosSummaryDateWise::where('report_date',$Todaydate)->count()==0)
                        {
                            RetailPosSummaryDateWise::insert([
                               'report_date'=>$Todaydate,
                               'product_item_quantity' => \DB::raw('1'),
                               'product_quantity' => \DB::raw($row->quantity),
                               'stockin_product_quantity' => \DB::raw($row->quantity)
                            ]);
                        }
                        else
                        {
                            RetailPosSummaryDateWise::where('report_date',$Todaydate)
                            ->update([
                               'product_item_quantity' => \DB::raw('product_item_quantity + 1'),
                               'product_quantity' => \DB::raw('product_quantity + '.$row->quantity),
                               'stockin_product_quantity' => \DB::raw('stockin_product_quantity + '.$row->quantity)
                            ]);
                        }
                    }
                }
            }



            if(!empty($deviceCount) && !empty($ModelCount) && !empty($problemCount) && !empty($priceCount) && !empty($categoryCount) && !empty($productCount))
            {
                $smsCount="Device (".$deviceCount."), Model (".$ModelCount."), Problem (".$problemCount."), Price (".$priceCount."), Category (".$categoryCount."), Product (".$productCount.")";
                \DB::commit();
                return redirect('settings/instore/merge/repair/data')->with('status', 'Instore Repair Data Send To '.$store->name.' Created Successfully. '.$smsCount.' !');
            }
            else
            {
                \DB::rollBack();
                return redirect('settings/instore/merge/repair/data')->with('error', ' Failed to send, Please try again. !');
            }


        }
        

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\InStoreRepair  $inStoreRepair5r\\\\\\\\\\\\\
     */
    public function show(InStoreRepair $inStoreRepair)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\InStoreRepair  $inStoreRepair
     * @return \Illuminate\Http\Response
     */
    public function edit(InStoreRepair $inStoreRepair)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\InStoreRepair  $inStoreRepair
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, InStoreRepair $inStoreRepair)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\InStoreRepair  $inStoreRepair
     * @return \Illuminate\Http\Response
     */
    public function destroy(InStoreRepair $inStoreRepair)
    {
        //
    }
}
