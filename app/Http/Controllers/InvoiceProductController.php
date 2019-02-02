<?php

namespace App\Http\Controllers;
use App\Pos;
use App\Product;
//use Session;
use App\InvoiceProduct;
use App\InvoicePayment;
use App\Invoice;
use App\Tender;
use App\InStoreTicket;
use App\InStoreRepair;
use App\Customer;
use App\PosSetting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class InvoiceProductController extends Controller
{
        private $moduleName="In Store Repair Settings ";
    private $sdc;
    public function __construct(){ $this->sdc = new StaticDataController(); }

    public function getDBCart(Request $request)
    {
        $datas=\DB::table('sessions')->where('user_id',\Auth::user()->id)->first();
        // /$data = Session::where('user_id',\Auth::user()->id)->first();
        dd(unserialize(base64_decode($datas->payload)));
    }

    public function setTaxType(Request $request)
    {
        $setTaxType=$request->setTaxType;
        $oldCart = $request->session()->has('Pos') ?  $request->session()->get('Pos') : null;
        $cart = new Pos($oldCart);
        $cart->assignNewTaxType($setTaxType);

        $request->session()->put('Pos', $cart);
        return response()->json($cart);
    }

    public function RepairPOS(Request $request, $repair_id=0)
    {

        $tab_invoice=InStoreRepair::where('id',$repair_id)
                                  ->where('store_id',$this->sdc->storeID())
                                  ->first();

        $product = Product::find($tab_invoice->product_id);
        $oldCart = $request->session()->has('Pos') ?  $request->session()->get('Pos') : null;
        $cart = new Pos($oldCart);
        $cart->addCustomerID($tab_invoice->customer_id);
        $cart->addCustomRepairPrice($product, $product->id,$tab_invoice->price,$repair_id);
        $request->session()->put('Pos', $cart);
        return redirect('pos')->with('success','Repair Product Added In Cart Successfully.');
    }

    public function TicketPOS(Request $request, $ticket_id=0)
    {

        $tab_invoice=InStoreTicket::where('id',$ticket_id)
                                  ->where('store_id',$this->sdc->storeID())
                                  ->first();

        //dd($tab_invoice);

        $product=Product::find($tab_invoice->product_id);
        //dd($product);
        $oldCart = $request->session()->has('Pos') ?  $request->session()->get('Pos') : null;
        $cart = new Pos($oldCart);
        $cart->addCustomerID($tab_invoice->customer_id);
        $cart->addCustomTicketPrice($product, $product->id,$tab_invoice->retail_price,$ticket_id);
        $request->session()->put('Pos', $cart);
        return redirect('pos')->with('success','Repair Product Added In Cart Successfully.');
    }


    public function getAddToCart(Request $request, $pid) {

        if(isset($request->repair))
        {
            $product = Product::find($pid);
            $oldCart = $request->session()->has('Pos') ?  $request->session()->get('Pos') : null;
            $cart = new Pos($oldCart);
            $cart->addCustomPriceRepair($product, $product->id,$request->price,$request->repair);
        }
        elseif(isset($request->ticket))
        {
            $product = Product::find($pid);
            $oldCart = $request->session()->has('Pos') ?  $request->session()->get('Pos') : null;
            $cart = new Pos($oldCart);
            $cart->addCustomPriceTicket($product, $product->id,$request->price,$request->ticket);
        }
        else
        {
            if(isset($request->price))
            {
                $product = Product::find($pid);
                $oldCart = $request->session()->has('Pos') ?  $request->session()->get('Pos') : null;
                $cart = new Pos($oldCart);
                $cart->addCustomPrice($product, $product->id,$request->price);
            }
            else
            {
                $product = Product::find($pid);
                $oldCart = $request->session()->has('Pos') ?  $request->session()->get('Pos') : null;
                $cart = new Pos($oldCart);
                $cart->add($product, $product->id);
            }
        }
        

        
        $request->session()->put('Pos', $cart);
        return response()->json(1);
    }

    public function getCustomQuantityToCart(Request $request,$pid=0,$quantity=0,$price=0) {

        $product = Product::find($pid);
        $oldCart = $request->session()->has('Pos') ? $request->session()->get('Pos') : null;
        $cart = new Pos($oldCart);
        $cart->addCustomQuantityPrice($product, $product->id,$quantity,$price);
        //$cart->addCustomQuantity($product, $product->id,$quantity);
        $request->session()->put('Pos', $cart);
        return response()->json(1);

    }

    public function getAssignDiscountToCart(Request $request)
    {
        $discountType=$request->discount_type?$request->discount_type:0;
        $discount_amount=$request->discount_amount?$request->discount_amount:0;
        $oldCart = $request->session()->has('Pos') ? $request->session()->get('Pos') : null;
        $cart = new Pos($oldCart);
        $cart->getAssignDiscountToCart($discountType,$discount_amount);
        $request->session()->put('Pos', $cart);
        return response()->json(1);
    }

   public function getCusAssignToCart(Request $request,$cusid)
   {
        $oldCart = $request->session()->has('Pos') ? $request->session()->get('Pos') : null;
        $cart = new Pos($oldCart);
        $cart->addCustomerID($cusid);
        $request->session()->put('Pos', $cart);
        return response()->json(1);
   }

    public function getPaidCart(Request $request) {

        $paidAmount=$request->paidAmount;
        $paymentID=$request->paymentID;
        $oldCart = $request->session()->has('Pos') ? $request->session()->get('Pos') : null;
        $cart = new Pos($oldCart);
        $cart->addPayment($paidAmount, $paymentID);
        $request->session()->put('Pos', $cart);
            return response()->json(1);
    }

    public function getPaidCartPublic(Request $request) {

        $paidAmount=$request->paidAmount;
        $paymentID=$request->paymentID;
        $invoice_id=$request->invoice_id;


        $Tender=Tender::find($paymentID);

        $invoice=Invoice::where('invoice_id',$invoice_id)->first();
        $invoice->tender_id=$paymentID;
        $invoice->save();

        $Customer=Customer::find($invoice->customer_id);

        $ChkInvoicePayment=InvoicePayment::where('invoice_id',$invoice_id)->count();
        if($ChkInvoicePayment>0)
        {
            $InvoicePayment=InvoicePayment::where('invoice_id',$invoice_id)->first();
            $InvoicePayment->invoice_id=$invoice_id;

            $InvoicePayment->tender_id=$Tender->id;
            $InvoicePayment->tender_name=$Tender->name;

            $InvoicePayment->customer_id=$Customer->id;
            $InvoicePayment->customer_name=$Customer->name;

            $InvoicePayment->total_amount=$invoice->total_amount;
            $InvoicePayment->paid_amount=$paidAmount;


            $InvoicePayment->store_id=$invoice->store_id;
            $InvoicePayment->created_by=$invoice->created_by;
            $InvoicePayment->save();
        }
        else
        {
            $InvoicePayment=new InvoicePayment;
            $InvoicePayment->invoice_id=$invoice_id;

            $InvoicePayment->tender_id=$Tender->id;
            $InvoicePayment->tender_name=$Tender->name;

            $InvoicePayment->customer_id=$Customer->id;
            $InvoicePayment->customer_name=$Customer->name;

            $InvoicePayment->total_amount=$invoice->total_amount;
            $InvoicePayment->paid_amount=$paidAmount;


            $InvoicePayment->store_id=$invoice->store_id;
            $InvoicePayment->created_by=$invoice->created_by;
            $InvoicePayment->save();
        }
        


        return response()->json(1);
    }

    public function getDelRowFRMCart(Request $request,$pid)
    {
        $product = Product::find($pid);
        $oldCart = $request->session()->has('Pos') ? $request->session()->get('Pos') : null;
        $cart = new Pos($oldCart);
        $cart->delProductRow($product, $product->id);
        $request->session()->put('Pos', $cart);
        return response()->json(1);
    }

    public function changeCounterPayStatus(Request $request)
    {
        $oldCart = $request->session()->has('Pos') ? $request->session()->get('Pos') : null;
        $cart = new Pos($oldCart);
        $cart->AllowCustomerPayBill($request->counterPayStatus);
        $request->session()->put('Pos', $cart);
        return response()->json(1);
    }

    public function getCart(Request $request)
    {
        $oldCart = $request->session()->has('Pos') ? $request->session()->get('Pos') : null;
        
        echo "<pre>";
        print_r($oldCart); die();
    }

    public function getClearCart(Request $request)
    {
        $oldCart = $request->session()->has('Pos') ? $request->session()->get('Pos') : null;
        $cart = new Pos($oldCart);
        $cart->ClearCart();
        Session::put('Pos', $cart);
    }

}
