<?php

namespace App\Http\Controllers;

use App\SendTestMail;
use App\InvoiceEmailTeamplate;
use Illuminate\Http\Request;


class SendTestMailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    private $moduleName="Invoice Email Template";
    private $sdc;
    public function __construct(){ $this->sdc = new StaticDataController(); }

    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $tab=new SendTestMail;
        $tab->store_id=$this->sdc->storeID();
        $tab->created_by=$this->sdc->UserID();
        $tab->email_address=$request->test_email;
        $tab->save();


        $edQr=$this->sdc->invoiceEmailTemplate();

        $editData=$edQr['editData'];
        $qrCode=$edQr['qrCode'];

        $filename=$this->sdc->storeID().'.png';
        $imageName=$this->sdc->createImageFromBase64($filename,'qrcode',$qrCode['code']);
       
        $emailBody='';
        $emailBody.='<div class="col-md-12" 
                     style="font-family: serif; font-size:11pt;
                     padding:10px 15px;
                     border-top: 16px solid #3BAFDA;;
                     border-right: 6px solid #3BAFDA;
                     border-bottom: 6px solid #3BAFDA;
                     border-left: 6px solid #3BAFDA; border-radius: 3px; clear: both; display: block;">
                    <table width="100%" style="width: 100%;">
                            <tr>
                                <td align="left" style="font-size: large;"><b>'.$editData->company_name.'</b></td>
                                <td align="center" style="font-size: large;"><b>Sales Receipt</b></td>
                                <td align="right" style="font-size: large;"><b>Invoiced To</b></td>
                            </tr>
                            <tr>
                                <td valign="top" style="color:#999999;">
                                    <div>
                                    <span>'.$editData->city.'</span>
                                    </div>
                                    <div>
                                    <span>'.$editData->address.'</span>
                                    <br>
                                    </div>
                                    <div>
                                     <span>'.$editData->phone.'</span>
                                     <br>
                                 </div>

                                </td>
                                <td  valign="top" align="center" style="color:#999999;">
                                    12/08/2018 1:08pm<br>
                                    <b style="color: #000;">Sales Rep </b> - Cashier name  <br>
                                    <b style="color: #000;">Sales ID</b> - INV001<br>
                                    <b style="color: #000;">Sales Tax Rate</b> - 6%<br>


                                </td>
                                <td   valign="top"  align="right" style="color:#999999;">
                                    Customer:Velma .C Colone.888<br>
                                    Address:348,Mesa Drive.<br>
                                    Lass Veg NV,845697<br>
                                    Phone Number:555-00-8999<br>
                                    E-Mail:velma@gmail.com

                                </td>
                            </tr>

                    </table>
                    
                    <br>
                    <br>

                    <table width="100%">
                        <thead>
                            <tr>
                                <th style="text-align:left; border-bottom: 1px #ccc dotted;">SL</th>
                                <th style="text-align:left; border-bottom: 1px #ccc dotted;">Item Name</th>
                                <th style="text-align:left; border-bottom: 1px #ccc dotted;">Price</th>
                                <th style="text-align:left; border-bottom: 1px #ccc dotted;">Qty:</th>
                                <th style="text-align:right; border-bottom: 1px #ccc dotted;">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td  style="border-bottom:1px #ccc dotted; color:#999999;">
                                    1
                                </td>
                                <td  style="border-bottom:1px #ccc dotted; color:#999999;">
                                    Default
                                </td>
                                <td  style="border-bottom: 1px #ccc dotted; color:#999999;">
                                    $20.22
                                </td>
                                <td  style="border-bottom: 1px #ccc dotted; color:#999999;">
                                    1
                                </td>
                                <td  style="text-align:right; color:#999999; border-bottom: 1px #ccc dotted;">
                                    $100.00
                                </td>
                            </tr>
                            <tr>
                                <td  style="border-bottom:1px #ccc dotted; color:#999999;">
                                    2
                                </td>
                                <td  style="border-bottom:1px #ccc dotted; color:#999999;">
                                    Default
                                </td>
                                <td  style="border-bottom: 1px #ccc dotted; color:#999999;">
                                    $20.22
                                </td>
                                <td  style="border-bottom: 1px #ccc dotted; color:#999999;">
                                    1
                                </td>
                                <td  style="text-align:right; color:#999999; border-bottom: 1px #ccc dotted;">
                                    $100.00
                                </td>
                            </tr>
                            <tr>
                                <td  style="border-bottom:1px #ccc dotted; color:#999999;">
                                    3
                                </td>
                                <td  style="border-bottom:1px #ccc dotted; color:#999999;">
                                    Default
                                </td>
                                <td  style="border-bottom: 1px #ccc dotted; color:#999999;">
                                    $20.22
                                </td>
                                <td  style="border-bottom: 1px #ccc dotted; color:#999999;">
                                    1
                                </td>
                                <td  style="text-align:right; color:#999999; border-bottom: 1px #ccc dotted;">
                                    $100.00
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="text-align: right; border-bottom:1px #ccc dotted; color:#999999;">
                                   Number of item sold =  
                                </td>
                                <td  style="border-bottom: 1px #ccc dotted;  font-weight: 900; color:#000;">
                                    12
                                </td>
                                <td  style="text-align:right; font-weight: 900; color:#000; border-bottom: 1px #ccc dotted;">
                                    Sub-Total = $200.00
                                </td>
                            </tr>
                        </tbody>


                    </table>
                    <br>

                    <table  align="right">
                        <tbody>
                            <tr>
                                <td rowspan="6" width="200" align="center" valign="middle">
                                    <img height="180" src="'.url('qrcode/'.$imageName).'" />
                                </td>
                                <th  style="color: #000;  font-weight: 900; text-align: right;">Item Sub-Total</th>
                                <td width="100" style="color: #000;  font-weight: 900; text-align: right;">$20.28</td>
                            </tr>
                            <tr>
                                <th style="color: #999999; text-align: right;">6% Sales Tax</th>
                                <td align="right" >$20.28</td>
                            </tr>
                            <tr>
                                <th  style="text-align: right;">Total</th>
                                <td align="right" style="color: #000; font-weight: 900;">$20.28</td>
                            </tr>
                            <tr>
                                <th  style="color: #999999; text-align: right;">Number of items sold</th>
                                <td align="right">$20.28</td>
                            </tr>
                            <tr>
                                <th  style="color: #999999; text-align: right;">Payment Method [ Cash ] - Paid</th>
                                <td align="right">$20.28</td>
                            </tr>
                            <tr>
                                <th  style="color: #000;  font-weight: 900; text-align: right;">Change Due</th>
                                <td style="color: #000;  font-weight: 900; text-align: right;">$20.28</td>
                            </tr>
                        </tbody>


                    </table>
                        <table style="width: 100%;">
                        <tbody>
                            <tr>
                                <td align="center" style="color: #999999;">
                                    <span style="font-weight: 700;">'.$editData->terms_title.'</span>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="color: #999999;">
                                    <span>'.$editData->terms_text.' </span>
                                </td>
                            </tr>
                            
                        </tbody>


                    </table>
                </div>';

        $mailSendStatus=$this->sdc->initMail($request->test_email,
         $this->sdc->storeName().' - Sales Test Email',
         $emailBody);

        if($mailSendStatus==1)
            { 
                $tab->email_send_status='Send'; 
                $tab->save();
                return redirect('settings/invoice/email')->with('status','Test Email Send Successfully');
            }
        else
            { 
                $tab->email_send_status='Failed To Send';
                $tab->save(); 
                return redirect('settings/invoice/email')->with('error','Test Email Failed To Send');
            }
  
        

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\SendTestMail  $sendTestMail
     * @return \Illuminate\Http\Response
     */
    public function show(SendTestMail $sendTestMail)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\SendTestMail  $sendTestMail
     * @return \Illuminate\Http\Response
     */
    public function edit(SendTestMail $sendTestMail)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SendTestMail  $sendTestMail
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SendTestMail $sendTestMail)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SendTestMail  $sendTestMail
     * @return \Illuminate\Http\Response
     */
    public function destroy(SendTestMail $sendTestMail)
    {
        //
    }
}
