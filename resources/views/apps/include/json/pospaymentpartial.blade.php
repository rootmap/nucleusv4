<script type="text/javascript">
    function defineFraction(numAm)
    {
        if(numAm.length==0)
        {
            return "0.00";
        }
        else
        {
            if($.isNumeric(numAm)==false)
            {
                return "0.00";
            }
            else
            {
                return parseFloat(numAm).toFixed(2);
            }
        }
    }

    function addToRepaidssfsdfsfsdfsdfsdfrList(repairFidAr,customerID,productID,price)
    {
        //-------------Ajax Instore Repair Product POS End--------------//
         var AddPOSUrl="{{url('repair/info/pos/ajax')}}";
         $.ajax({
            'async': true,
            'type': "POST",
            'global': true,
            'dataType': 'json',
            'url': AddPOSUrl,
            'data': {'customer_id':customerID,'product_id':productID,'price':price,'repair':repairFidAr,'_token':"{{csrf_token()}}"},
            'success': function (data) {
                //tmp = data;
                var PrintLocation="{{url('repair/list')}}";
                        //window.location.href=PrintLocation;

                var win = window.open(PrintLocation);
                if (win) {
                    //Browser has allowed it to be opened
                    win.focus();
                    window.location.href=window.location.href;
                } else {
                    alert('Please allow popups for this website');
                }
                $("#cartMessageProShow").html(successMessage("Repair info successfully added to Repair List."));
                console.log("Instore Repair Product Info Added Processing : "+data);
            }
         });
         //------------Ajax Instore Repair Product End---------------//
    }

	//---------------------Test Ajax New Product Start---------------------//
	$(document).ready(function(){

            @if($addPartialPayment==1)
                $("#addPartialPayment").modal("show");

                    $("#partialpayMSG").html(loadingOrProcessing("Please wait, loading invoices."));

                    //------------------------Ajax Customer Start-------------------------//
                     var AddHowMowKhaoUrl="{{url('partialpay/invoice/ajax')}}";
                     $.ajax({
                        'async': true,
                        'type': "GET",
                        'global': true,
                        'dataType': 'json',
                        'url': AddHowMowKhaoUrl,
                        'data': {'_token':"{{csrf_token()}}"},
                        'success': function (data) 
                        {
                            $("#partialpayMSG").html(successMessage("Invoices loaded successfully, Please select a invoice."));
                            var ff="<option value=''>Select A Invoice</option>";
                            $.each(data,function(index,row){
                                //console.log(row);
                                if(row.total_amount>row.absPaid)
                                {
                                    ff+="<option data-customer='"+row.customer_name+"' data-paid='"+row.absPaid+"' data-total='"+row.total_amount+"' value='"+row.invoice_id+"'>"+row.invoice_id+" - "+row.created_at+"</option>";
                                }
                                
                            });

                            $("select[name=partialpay_invoice_id]").html(ff);
                        }
                    });
                    //------------------------Ajax Customer End---------------------------//
            @endif

            $(".addPartialPayment").click(function(){
                $("#addPartialPayment").modal("show");

                    $("#partialpayMSG").html(loadingOrProcessing("Please wait, loading invoices."));

                    //------------------------Ajax Customer Start-------------------------//
                     var AddHowMowKhaoUrl="{{url('partialpay/invoice/ajax')}}";
                     $.ajax({
                        'async': true,
                        'type': "GET",
                        'global': true,
                        'dataType': 'json',
                        'url': AddHowMowKhaoUrl,
                        'data': {'_token':"{{csrf_token()}}"},
                        'success': function (data) 
                        {
                            $("#partialpayMSG").html(successMessage("Invoices loaded successfully, Please select a invoice."));
                            var ff="<option value=''>Select A Invoice</option>";
                            $.each(data,function(index,row){
                                //console.log(row);
                                if(row.total_amount>row.absPaid)
                                {
                                    ff+="<option data-customer='"+row.customer_name+"' data-paid='"+row.absPaid+"' data-total='"+row.total_amount+"' value='"+row.invoice_id+"'>"+row.invoice_id+" - "+row.created_at+"</option>";
                                }
                                
                            });

                            $("select[name=partialpay_invoice_id]").html(ff);
                        }
                    });
                    //------------------------Ajax Customer End---------------------------//
            });

            $("select[name=partialpay_invoice_id]").change(function(){
                var invoice_id=$(this).val();
                var customer_name=$("select[name=partialpay_invoice_id] option[value="+invoice_id+"]").attr("data-customer");
                var paid_amount=$("select[name=partialpay_invoice_id] option[value="+invoice_id+"]").attr("data-paid");
                var totalbill=$("select[name=partialpay_invoice_id] option[value="+invoice_id+"]").attr("data-total");
                var total_due=defineFraction(totalbill-paid_amount);

                $("input[name=partialpay_total_bill]").val(totalbill);
                $("input[name=partialpay_pre_paid]").val(paid_amount);
                $("input[name=partialpay_customer_name]").val(customer_name);
                $("input[name=partialpay_amount]").val(total_due);
                $("input[name=partialpay_hidden_due_amount]").val(total_due);
                $("input[name=partialpay_today_paid]").val("");
                console.log(invoice_id,customer_name);
            });

            $("input[name=partialpay_today_paid]").keyup(function(){
                var today_paid=$(this).val();
                var total_due=$("input[name=partialpay_hidden_due_amount]").val();

                var balanceDue=defineFraction(total_due-today_paid);

                $("input[name=partialpay_amount]").val(balanceDue);

            });

            $(".manualMakePayment").click(function(){
                //alert("success Working");
                var invoice_id=$("select[name=partialpay_invoice_id]").val();
                var total_due=$("input[name=partialpay_hidden_due_amount]").val();
                var today_paid=$("input[name=partialpay_today_paid]").val();
                var today_payment_method=$(this).html();
                var today_payment_method_id=$(this).attr('data-id');

                if(invoice_id.length==0)
                {
                    $("#partialpayMSG").html(warningMessage("Please Select a Invoice."));
                    $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");
                    return false;
                }

                if(today_paid.length==0)
                {
                    $("#partialpayMSG").html(warningMessage("Please type a partial paid amount."));
                    $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");
                    return false;
                }

                if(today_payment_method.length==0)
                {
                    $("#partialpayMSG").html(warningMessage("Invalid Payment Method, Please Select Again."));
                    $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");
                    return false;
                }

                if(today_payment_method_id.length==0)
                {
                    $("#partialpayMSG").html(warningMessage("Invalid Payment Method, Please Select Again."));
                    $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");
                    return false;
                }

                $("#partialpayMSG").html(loadingOrProcessing("Saving Your Partial Payment Info, Please wait..."));

                $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");

                //-------------Ajax Instore Repair Product POS End--------------//
                 var AddPOSUrl="{{url('partialpay/invoice/ajax')}}";
                 $.ajax({
                    'async': true,
                    'type': "POST",
                    'global': true,
                    'dataType': 'json',
                    'url': AddPOSUrl,
                    'data': {
                        'invoice_id':invoice_id,
                        'payment_method_id':today_payment_method_id,
                        'paid_amount':today_paid,
                        'total_due':total_due,
                        '_token':"{{csrf_token()}}"
                    },
                    'success': function (data) { 
                        if(data.status==1)
                        {
                            $("#partialpayMSG").html(successMessage("Partial Payment for Invoice saved successfully."));
                            $("select[name=partialpay_invoice_id]").val('').select2();
                            $("input[name=partialpay_total_bill]").val("");
                            $("input[name=partialpay_pre_paid]").val("");
                            $("input[name=partialpay_customer_name]").val("");
                            $("input[name=partialpay_amount]").val("");
                            $("input[name=partialpay_hidden_due_amount]").val("");
                            $("input[name=partialpay_today_paid]").val("");

                            $(".addPartialPayment").trigger('click');
                        }
                        else
                        {
                            $("#partialpayMSG").html(warningMessage("Failed, Something went wrong, Please try again."));
                        }

                        $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");
                        
                        
                    }
                 });
                 //------------Ajax Instore Repair Product End---------------//



            });

            $(".manualPaypalPayment").click(function(){

                    var invoice_id=$("select[name=partialpay_invoice_id]").val();
                    var total_due=$("input[name=partialpay_hidden_due_amount]").val();
                    var today_paid=$("input[name=partialpay_today_paid]").val();
                    var today_payment_method=$(this).html();
                    var today_payment_method_id=$(this).attr('data-id');

                    if(invoice_id.length==0)
                    {
                        $("#partialpayMSG").html(warningMessage("Please Select a Invoice."));
                        $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");
                        return false;
                    }

                    if(today_paid.length==0)
                    {
                        $("#partialpayMSG").html(warningMessage("Please type a partial paid amount."));
                        $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");
                        return false;
                    }

                    if(today_payment_method.length==0)
                    {
                        $("#partialpayMSG").html(warningMessage("Invalid Payment Method, Please Select Again."));
                        $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");
                        return false;
                    }

                    if(today_payment_method_id.length==0)
                    {
                        $("#partialpayMSG").html(warningMessage("Invalid Payment Method, Please Select Again."));
                        $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");
                        return false;
                    }

                    $("#partialpayMSG").html(loadingOrProcessing("Saving Your Partial Payment Info, Please wait..."));

                    $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");


                    if($.trim(today_paid)>0)
                    {

                        window.location.href="{{url('partial/pay/paypal')}}/"+invoice_id+"/"+today_payment_method_id+"/"+today_paid;

                    }
                    else
                    {
                        $("#addPartialPayment").html(warningMessage("Please Type a today paid amount."));
                    }
                });

                $(".manualcardPayment").click(function(){
                    
                    var invoice_id=$("select[name=partialpay_invoice_id]").val();
                    var total_due=$("input[name=partialpay_hidden_due_amount]").val();
                    var today_paid=$("input[name=partialpay_today_paid]").val();
                    var today_payment_method=$(this).html();
                    var today_payment_method_id=$(this).attr('data-id');

                    if(invoice_id.length==0)
                    {
                        $("#partialpayMSG").html(warningMessage("Please Select a Invoice."));
                        $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");
                        return false;
                    }

                    if(today_paid.length==0)
                    {
                        $("#partialpayMSG").html(warningMessage("Please type a partial paid amount."));
                        $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");
                        return false;
                    }

                    if(today_payment_method.length==0)
                    {
                        $("#partialpayMSG").html(warningMessage("Invalid Payment Method, Please Select Again."));
                        $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");
                        return false;
                    }

                    if(today_payment_method_id.length==0)
                    {
                        $("#partialpayMSG").html(warningMessage("Invalid Payment Method, Please Select Again."));
                        $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");
                        return false;
                    }

                    $("#partialpayMSG").html(loadingOrProcessing("Saving Your Partial Payment Info, Please wait..."));

                    $("#addPartialPayment").animate({ scrollTop: 0 }, "slow");

                    
                    if($.trim(today_paid)>0)
                    {
                        $("#addPartialPayment").modal('hide');
                        $(".defualtCapture").hide();
                        $(".ManualAutorizeCapture").show();

                        $("#CustomerCard").modal('show');

                        $(".card-pay-due-amount").html(today_paid);


                    }
                    else
                    {
                        $(".payModal-message-area").html(warningMessage("Please Type a Today Paid Amount."));
                    }
            });

            $(".card-pay-authorizenetmanual").click(function(){

                var invoice_id=$("select[name=partialpay_invoice_id]").val();
                if(invoice_id.length==0)
                {
                    //$("#payModal").modal('hide');
                    $(".message-place-authorizenet").html(warningMessage("Please select a Invoice."));
                    return false;
                }

                var total_due=$("input[name=partialpay_hidden_due_amount]").val();
                var today_paid=$("input[name=partialpay_today_paid]").val();
                var today_payment_method=$(this).html();
                var today_payment_method_id=$(this).attr('data-id');

                var cardNumber=$.trim($(".authorize-card-number").val());
                if(cardNumber.length==0)
                {
                    $(".message-place-authorizenet").html(warningMessage("Please type card number."));
                    return false;
                }

                var cardHName=$.trim($(".authorize-card-holder-name").val());
                if(cardHName.length==0)
                {
                    $(".message-place-authorizenet").html(warningMessage("Please type card holder name."));
                    return false;
                }

                var cardExpire=$.trim($(".authorize-card-expiry").val());
                if(cardExpire.length==0)
                {
                    $(".message-place-authorizenet").html(warningMessage("Please type card expire month/Year."));
                    return false;
                }

                var cardcvc=$.trim($(".authorize-card-cvc").val());
                if(cardcvc.length==0)
                {
                    $(".message-place-authorizenet").html(warningMessage("Please type card cvc/cvc2 pin."));
                    return false;
                }

                $(".message-place-authorizenet").html(loadingOrProcessing("Authorizing payment please wait...."));

                $(".ManualAutorizeCapture").hide();

                var addAuthrizePaymentURL="{{url('authorize/net/capture/pos/partial/payment')}}";
                 $.ajax({
                    'async': true,
                    'type': "POST",
                    'global': false,
                    'dataType': 'json',
                    'url': addAuthrizePaymentURL,
                    'data': {
                        'invoice_id':invoice_id,
                        'cardNumber':cardNumber,
                        'cardHName':cardHName,
                        'cardExpire':cardExpire,
                        'cardcvc':cardcvc,
                        'amountToPay':today_paid,
                        '_token':"{{csrf_token()}}"},
                    'success': function (data) {
                        console.log("Authrizenet Print Sales ID : "+data);
                        if(data==null)
                        {
                            $(".message-place-authorizenet").html(warningMessage("Failed to authorize payment. Please try again."));
                        }
                        else
                        {
                            console.log(data.status);
                            if(data.status==1)
                            {
                                $(".message-place-authorizenet").html(successMessage("Card Payment Successfully Received."));
                                $("#partialpayMSG").html(successMessage("Card Payment Successfully Received."));
                                $("#CustomerCard").modal('hide');
                                $("#addPartialPayment").modal('show');
                                $(".defualtCapture").show();
                                $(".ManualAutorizeCapture").hide();

                                
                            }
                            else
                            {
                                $(".ManualAutorizeCapture").show();
                                $(".message-place-authorizenet").html(warningMessage(data.message));
                            }
                        }
                        //$(".message-place-authorizenet").html("dddd");
                    }
                });
                //------------------------Ajax Customer End---------------------------//


            });

            $("select[name=partialpay_invoice_id]").select2({
                dropdownParent: $("#addPartialPayment")
            });

	});

</script>