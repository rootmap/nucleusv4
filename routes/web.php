<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('login');
});

Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');

//customer pay url
Route::get('invoice/pay/{invoice_id}', 'InvoiceController@showCustomerInvoice');
Route::post('capture/pos/payment/publicpayment','InvoiceController@AuthorizenetCardPaymentPublic');
Route::post('/capture/inv/payment', 'InvoiceProductController@getPaidCartPublic');
Route::get('/capture/invoice/print/pdf/{invoice_id}', 'InvoiceController@captureInvoicePDF');
//customer pay url

// Route::get('/form', 'HomeController@form')->name('form');
Route::get('/form', 'HomeController@form')->name('form');
Route::get('/paypal', 'InvoiceController@paypal');
Route::post('/paypal', 'InvoiceController@paywithpaypal');
Route::get('/paypal/{status}', 'InvoiceController@getPaymentStatus');
Route::get('invoice/payment/paypal/{invoice_id}/{status}', 'InvoiceController@getPaymentStatusPaypal');


Route::get('/invoice/paypal/{invoice_id}', 'InvoiceController@paywithpaypalInvoice');

Route::get('/reset', 'HomeController@reset')->name('reset');
//Route::get('/register', 'HomeController@register')->name('register');
Route::get('/product', 'HomeController@product')->name('product');
Route::get('/productinventory', 'HomeController@productinventory')->name('productinventory');
//Route::get('/customer', 'HomeController@customer')->name('customer');
Route::get('/addsales', 'HomeController@addsales')->name('addsales');
// Route::get('/calculatevariance', 'HomeController@calculatevariance')->name('calculatevariance');
Route::get('/invoice', 'HomeController@invoice')->name('invoice');
Route::get('/profitList', 'HomeController@profitList')->name('profitList');
Route::get('invoice/template', 'HomeController@invoicetemplate')->name('invoicetemplate');
Route::get('invoice/summary', 'HomeController@invoicesummary')->name('invoicesummary');
Route::get('invoice/template/print', 'HomeController@invoicetemplateprint')->name('invoicetemplateprint');
Route::get('setting', 'HomeController@setting')->name('setting');
Route::get('DemoDashboard', 'HomeController@DemoDashboard')->name('DemoDashboard');
Route::get('chart', 'HomeController@chart');
Route::get('coming-soon', 'HomeController@soon');
//Route::get('pdf', 'InvoiceProfitController@testPDF');

Route::get('pdf', 'InvoiceController@GenaratePDF');

Route::group(['middleware' => 'auth'], function () {
	Route::get('/login-activity', 'LoginActivityController@index');
	Route::get('/dashboard', 'RetailPosSummaryController@index');
    Route::get('/home', 'RetailPosSummaryController@index');
	Route::get('/dashboard_demo', 'HomeController@dashboard_demo')->name('dashboard_demo');
	//------------------customer route start--------------------//
	Route::get('/customer', 'CustomerController@index')->name('customer');
	Route::get('/customer/getInfo/json/{id}', 'CustomerController@getCustomer');
	Route::get('/customer/list', 'CustomerController@show');
	Route::post('/customer/save', 'CustomerController@store');
	Route::get('/customer/edit/{id}', 'CustomerController@edit');
	Route::get('/customer/delete/{id}', 'CustomerController@destroy');
	Route::post('/customer/modify/{id}', 'CustomerController@update');
	Route::get('/customer/excel/report', 'CustomerController@exportExcel');
	Route::get('/customer/pdf/report', 'CustomerController@invoicePDF');
	Route::post('/customer/pos/ajax/add', 'CustomerController@posCustomerAdd');
	Route::get('/customer/import', 'CustomerController@importCustomer');
	Route::post('/customer/import/save', 'CustomerController@importCustomerSave');
	Route::get('/customer/report/{id}', 'CustomerController@customerReport'); 

	//customer lead
	Route::get('/customer/lead/new', 'CustomerLeadController@index');
	Route::get('/customer/lead/list', 'CustomerLeadController@show');
	Route::post('/customer/lead/save', 'CustomerLeadController@store');
	Route::get('/customer/lead/edit/{id}', 'CustomerLeadController@edit');
	Route::get('/customer/lead/delete/{id}', 'CustomerLeadController@destroy');
	Route::post('/customer/lead/modify/{id}', 'CustomerLeadController@update');

	//Special Order Parts
	Route::resource('/special/parts', 'SpecialPartsOrderController');

	//Buyback
	Route::resource('/buyback', 'BuybackController');
	Route::post('/buyback/ajax/{id}', 'BuybackController@buybackAjaxUpdate');
	Route::get('/buyback/print/{id}', 'BuybackController@buybackPrint');
	Route::post('/buyback/pos/ajax', 'BuybackController@storeFromPOS');

	Route::get('/report/buyback', 'BuybackController@report');
	Route::post('/report/buyback', 'BuybackController@report');
	Route::post('/report/excel/buyback', 'BuybackController@exportExcel');
	Route::post('/report/pdf/buyback', 'BuybackController@exportPDF');

	//Close Store 
	Route::get('/store/close/report', 'CloseDrawerController@report');
	Route::post('/store/close/report', 'CloseDrawerController@report');
	Route::post('/store/close/excel/report', 'CloseDrawerController@exportExcel');
	Route::post('/store/close/pdf/report', 'CloseDrawerController@exportPDF');

	Route::get('/report/payout', 'InvoiceController@Payoutreport');
	Route::post('/report/payout', 'InvoiceController@Payoutreport');
	Route::post('/report/excel/payout', 'InvoiceController@exportPayoutExcel');
	Route::post('/report/pdf/payout', 'InvoiceController@exportPayoutPDF');

	Route::get('/lcd/status/report', 'InStoreRepairController@reportLCDStatus');
	Route::post('/lcd/status/report', 'InStoreRepairController@reportLCDStatus');
	Route::post('/lcd/status/excel/report', 'InStoreRepairController@exportExcelLCDStatus');
	Route::post('/lcd/status/pdf/report', 'InStoreRepairController@exportPDFLCDStatus');

	Route::get('/salvage/report', 'InStoreRepairController@reportSalvage');
	Route::post('/salvage/report', 'InStoreRepairController@reportSalvage');
	Route::post('/salvage/excel/report', 'InStoreRepairController@exportExcelSalvage');
	Route::post('/salvage/pdf/report', 'InStoreRepairController@exportPDFSalvage');

	Route::get('/report/highestseller', 'HigherCashierSaleController@reporthighestCashierSales');
	Route::post('/report/highestseller', 'HigherCashierSaleController@reporthighestCashierSales');
	Route::post('/report/highestseller/excel/report', 'HigherCashierSaleController@exportExcelhighestCashierSales');
	Route::post('/report/highestseller/pdf/report', 'HigherCashierSaleController@exportPDFhighestCashierSales');

	Route::get('/report/highestseller/Summary', 'HigherCashierSaleSummaryController@reporthighestCashierSales');
	Route::post('/report/highestseller/Summary', 'HigherCashierSaleSummaryController@reporthighestCashierSales');
	Route::post('/report/highestseller/Summary/excel/report', 'HigherCashierSaleSummaryController@exportExcelhighestCashierSales');
	Route::post('/report/highestseller/Summary/pdf/report', 'HigherCashierSaleSummaryController@exportPDFhighestCashierSales');
	//Route::get('/special/parts/delete/{id}', 'SpecialPartsOrderController@destroy');

	//category 
	Route::get('/settings/ticket/problem', 'TicketProblemController@index');
	Route::post('/settings/ticket/problem/save', 'TicketProblemController@store');
	Route::get('/settings/ticket/problem/edit/{id}', 'TicketProblemController@edit');
	Route::get('/settings/ticket/problem/delete/{id}', 'TicketProblemController@destroy');
	Route::post('/settings/ticket/problem/modify/{id}', 'TicketProblemController@update');
	
	//category 
	Route::get('/category', 'CategoryController@index');
	Route::post('/category/save', 'CategoryController@store');
	Route::get('/category/edit/{id}', 'CategoryController@edit');
	Route::get('/category/delete/{id}', 'CategoryController@destroy');
	Route::post('/category/modify/{id}', 'CategoryController@update');
	
	//user controller
	Route::get('user', 'CustomerController@user');
	Route::get('user/list', 'CustomerController@userList');
	Route::post('user/save', 'CustomerController@userSave');
	Route::get('user/edit/{id}', 'CustomerController@UserShow');
	Route::post('/user/modify/{id}', 'CustomerController@userUpdate');
	Route::get('/user/delete/{id}', 'CustomerController@Userdestroy');

	//store controller
	Route::get('store-shop', 'StoreController@create');
	Route::get('store-shop/list', 'StoreController@index');
	Route::post('store-shop/save', 'StoreController@store');
	Route::get('store-shop/edit/{id}', 'StoreController@show');
	Route::post('store-shop/modify/{id}', 'StoreController@update');
	Route::get('store-shop/delete/{id}', 'StoreController@destroy');
	//------------------customer route End--------------------//
	//------------------TutorialVideo route start--------------------//
	Route::get('TutorialVideo', 'TutorialVideoController@index');
	Route::post('TutorialVideo/save', 'TutorialVideoController@store');
	Route::get('TutorialVideo/edit/{id}', 'TutorialVideoController@edit');
	Route::post('TutorialVideo/modify/{id}', 'TutorialVideoController@update');
	Route::get('TutorialVideo/delete/{id}', 'TutorialVideoController@destroy');
	Route::get('helpdesk', 'TutorialVideoController@helpDesk');
	Route::get('helpdesk/detail/{id}', 'TutorialVideoController@helpDeskDetail');
	Route::post('helpdesk/Ajax', 'TutorialVideoController@AjaxhelpDesk');
	Route::get('helpdesk/load/comment/{commentid}', 'TutorialVideoController@AjaxCommenthelpDesk');
	//------------------TutorialVideo route End--------------------//
	//------------------Department route start--------------------//
	Route::get('Department', 'DepartmentController@index');
	Route::post('Department/save', 'DepartmentController@store');
	Route::get('Department/edit/{id}', 'DepartmentController@edit');
	Route::post('Department/modify/{id}', 'DepartmentController@update');
	Route::get('Department/delete/{id}', 'DepartmentController@destroy');
	//------------------Department route End--------------------//
	//------------------SupportTicket route start--------------------//
	Route::get('SupportTicket', 'SupportTicketController@create');
	Route::get('SupportTicket/list', 'SupportTicketController@index');
	Route::post('SupportTicket/save', 'SupportTicketController@store');
	Route::get('SupportTicket/view/{id}', 'SupportTicketController@show');
	Route::get('SupportTicket/delete/{id}', 'SupportTicketController@destroy');
	Route::post('SupportTicket/Ajax', 'SupportTicketController@AjaxTicket');
	Route::get('SupportTicket/load/comment/{commentid}', 'SupportTicketController@AjaxCommentTicket');

	//------------------SupportTicket route End--------------------//

	Route::get('/special/feature', 'SpecialFeatureController@index');

	//------------------Product route start--------------------//
	Route::get('/product', 'ProductController@index')->name('customer');
	Route::get('/product/list', 'ProductController@show');
	Route::post('/product/list', 'ProductController@show');
	Route::get('/product/report', 'ProductController@report');
	Route::post('/product/save', 'ProductController@store');
	Route::post('/product/ajax/save', 'ProductController@storeAjax');
	Route::post('/product/ajax/ticket/save', 'ProductController@storeTicketAjax');
	Route::post('/product/ajax/repair/save', 'ProductController@storeRepairAjax');
	Route::get('/product/edit/{id}', 'ProductController@edit');
	Route::get('/product/delete/{id}', 'ProductController@destroy');
	Route::post('/product/modify/{id}', 'ProductController@update');
	Route::get('/product/json', 'ProductController@dataTable');

	Route::get('/product/excel/report', 'ProductController@exportExcel');
	Route::get('/product/pdf/report', 'ProductController@invoicePDF');

	Route::get('/product/import', 'ProductController@importProduct');
	Route::post('/product/import/save', 'ProductController@importProductSave');


	Route::post('/product/report', 'ProductController@report');
	Route::post('/product/excel/report', 'ProductController@ExcelReport');
	Route::post('/product/pdf/report', 'ProductController@PdfReport');
	//------------------Product route start--------------------//


	// ------------------------tender route start------------------//
	Route::get('/tender', 'TenderController@index')->name('tender');
	Route::get('/tender/report', 'TenderController@show');
	Route::post('/tender/save', 'TenderController@store');
	Route::get('/tender/edit/{id}', 'TenderController@edit');
	Route::get('/tender/delete/{id}', 'TenderController@destroy');
	Route::post('/tender/modify/{id}', 'TenderController@update');

	Route::get('/tender/excel/report', 'TenderController@exportExcel');
	Route::get('/tender/pdf/report', 'TenderController@invoicePDF');

	Route::get('/report/tender', 'TenderController@Report');
	Route::post('/report/tender', 'TenderController@Report');
	Route::post('/report/excel/tender', 'TenderController@ExcelReportTender');
	Route::post('/report/pdf/tender', 'TenderController@PdfReportTender');
	// ------------------------tender route end------------------//

	// ------------------------Role Wise Menu route start------------------//
	Route::get('/RoleWiseMenu', 'RoleWiseMenuController@index')->name('tender');
	Route::post('/RoleWiseMenu/ajax', 'RoleWiseMenuController@showAjax');
	Route::post('/RoleWiseMenu/save', 'RoleWiseMenuController@store');
	// ------------------------Role Wise Menu route end------------------//

	// ------------------------role route start------------------//
	Route::get('/role', 'RoleController@index')->name('role');
	Route::post('/role/save', 'RoleController@store');
	Route::get('/role/edit/{id}', 'RoleController@edit');
	Route::get('/role/delete/{id}', 'RoleController@destroy');
	Route::post('/role/modify/{id}', 'RoleController@update');
	Route::post('/add-to-repair/cart', 'InvoiceController@posRepairProduct');
	// ------------------------tender route end------------------//

	// ------------------------Repair Asset route start------------------//
	Route::get('/settings/instore/asset/{asset}', 'RepairTicketAssetController@index');
	Route::get('/settings/instore/asset/{asset}/create', 'RepairTicketAssetController@create');
	Route::post('/settings/instore/asset/{asset}/save', 'RepairTicketAssetController@store');
	Route::get('/settings/instore/asset/{asset}/edit/{id}', 'RepairTicketAssetController@edit');
	Route::get('/settings/instore/asset/{asset}/delete/{id}', 'RepairTicketAssetController@destroy');
	Route::post('/settings/instore/asset/{asset}/modify/{id}', 'RepairTicketAssetController@update');
	// ------------------------Repair Asset route end------------------//

	// ------------------------AssignUserRole route start------------------//
	Route::get('/AssignUserRole', 'AssignUserRoleController@index');
	Route::post('/AssignUserRole/save', 'AssignUserRoleController@store');
	Route::get('/AssignUserRole/edit/{id}', 'AssignUserRoleController@edit');
	Route::get('/AssignUserRole/delete/{id}', 'AssignUserRoleController@destroy');
	Route::post('/AssignUserRole/modify/{id}', 'AssignUserRoleController@update');
	// ------------------------AssignUserRole route end------------------//
	
	// ------------------------menu-item route start------------------//
	Route::get('/menu-item', 'MenuPageController@index');
	//Route::post('/menu-item/create', 'RoleWiseMenuController@create');
	Route::post('/menu-item/save', 'MenuPageController@store');
	Route::get('/menu-item/edit/{id}', 'MenuPageController@edit');
	Route::get('/menu-item/delete/{id}', 'MenuPageController@destroy');
	Route::post('/menu-item/modify/{id}', 'MenuPageController@update');
	// ------------------------tender route end------------------//

	// ------------------------tender route start------------------//
	Route::get('/expense/voucher', 'ExpenseController@index')->name('expense');
	Route::get('/expense/voucher/report', 'ExpenseController@show');
	Route::post('/expense/voucher/report', 'ExpenseController@show');
	Route::post('/expense/voucher/save', 'ExpenseController@store');
	Route::get('/expense/voucher/edit/{id}', 'ExpenseController@edit');
	Route::get('/expense/voucher/delete/{id}', 'ExpenseController@destroy');
	Route::post('/expense/voucher/modify/{id}', 'ExpenseController@update');
	Route::get('/expense/voucher/excel/report', 'ExpenseController@Excelexport');
	Route::post('/expense/voucher/excel/report', 'ExpenseController@Excelexport');
	Route::get('/expense/voucher/pdf/report', 'ExpenseController@ExpensePDF');
	Route::post('/expense/voucher/pdf/report', 'ExpenseController@ExpensePDF');
	// ------------------------tender route end------------------//

	// ------------------------tender route start------------------//
	//Route::get('/warranty', 'HomeController@warranty')->name('warranty');
	Route::get('/warrantyInvoice', 'HomeController@warrantyInvoice')->name('warrantyInvoice');
	Route::get('/warrantyBatchOut', 'HomeController@warrantyBatchOut')->name('warrantyBatchOut');
	// ------------------------tender route end------------------//

	// ------------------------calculatevariance route start------------------//
	Route::get('/calculatevariance', 'ProductVarianceDataController@index')->name('calculatevariance');
	Route::get('/calculatevariance/save', 'ProductVarianceDataController@store');
	// ------------------------calculatevariance route end------------------//

	//------------------Product Stockin route start--------------------//
	Route::get('/product/stock/in', 'ProductStockinController@index');
	Route::get('/product/stock/in/list', 'ProductStockinController@show');
	Route::get('/product/stock/in/report', 'ProductStockinController@report');
	Route::post('/product/stock/in/confirm', 'ProductStockinController@create');
	Route::post('/product/stock/in/save', 'ProductStockinController@store');
	Route::get('/product/stock/in/edit/{id}', 'ProductStockinController@edit');
	Route::get('/product/stock/in/receipt/{id}', 'ProductStockinController@receipt');
	Route::get('/product/stock/in/delete/{id}', 'ProductStockinController@destroy');
	Route::post('/product/stock/in/modify/{id}', 'ProductStockinController@update');

	/*Route::get('/product/stock/in/excel/report', 'ProductStockinController@exportExcel');*/
	Route::get('/product/stock/in/pdf/report', 'ProductStockinController@invoicePDF');


	Route::post('/product/stock/in/report', 'ProductStockinController@report');

	Route::post('/product/stock/in/excel/report', 'ProductStockinController@ExcelReport');
	Route::post('/product/stock/in/pdf/report', 'ProductStockinController@PdfReport');
	//------------------Product Stockin route start--------------------//

	//------------------Variance Route Start--------------------//
	Route::get('/variance', 'ProductVarianceController@index');
	Route::get('/variance/create', 'ProductVarianceController@index');
	Route::get('/variance/report', 'ProductVarianceController@show');
	Route::get('/variance/products/report/{id}', 'ProductVarianceController@varianceReport');
	Route::post('/variance/save', 'ProductVarianceController@store');
	Route::get('/variance/edit/{id}', 'ProductVarianceController@edit');
	Route::get('/variance/delete/{id}', 'ProductVarianceController@destroy');
	Route::post('/variance/modify/{id}', 'ProductVarianceController@update');

	Route::get('/variance/excel/report', 'ProductVarianceController@exportExcel');
	Route::get('/variance/pdf/report', 'ProductVarianceController@invoicePDF');
	//------------------Variance Route Start--------------------//


	//------------------Sales route start--------------------//
	Route::get('/sales', 'InvoiceController@index');
	Route::post('/slide-menu/slide/status', 'InvoiceController@slide');
	Route::get('/pos', 'InvoiceController@pos');
	Route::get('/pos/clear', 'InvoiceController@posclear');
	Route::post('/open/store', 'InvoiceController@openStore');
	Route::post('/cart/pos/payout', 'InvoiceController@savePayout');
	Route::post('/cart/counter-payment/status', 'InvoiceProductController@changeCounterPayStatus');
	Route::post('/close/store', 'InvoiceController@closeStore');
	Route::get('/close/print/store/{closing_id}', 'InvoiceController@printCloseStore');
	Route::post('/transaction/store', 'InvoiceController@transactionStore');
	Route::get('/invoice/pos/pay/paypal', 'InvoiceController@posPayPaypal');
	Route::get('/partial/pay/paypal/{invoice_id}/{payment_id}/{paid_amount}', 'InvoiceController@partialPayPaypal');
	Route::get('/invoice/counter-pos/pay/paypal', 'InvoiceController@posCounterPayPaypal');
	Route::get('/pos/payment/paypal/{invoice_id}/{status}', 'InvoiceController@getPOSPaymentStatusPaypal');
	Route::get('/partial/payment/paypal/{invoice_id}/{payment_id}/{paid_amount}/{status}', 'InvoiceController@getPOSPartialPaymentStatusPaypal');
	Route::get('/counter-pos/payment/paypal/{invoice_id}/{status}', 'InvoiceController@getCounterPOSPaymentStatusPaypal');
	Route::get('/sales/report', 'InvoiceController@show');
	Route::get('/sales/invoice/{invoice_id}', 'InvoiceController@invoiceShow');
	Route::get('/sales/invoice/print/pdf/{invoice_id}', 'InvoiceController@invoicePDF');
	Route::get('/sales/invoice/print/media/pdf/{ptype}/{invoice_id}', 'InvoiceController@invoicePDFByMedia');
	Route::post('/sales/confirm', 'InvoiceController@create');
	Route::post('/sales/save', 'InvoiceController@store');
	Route::get('/sales/edit/{id}', 'InvoiceController@edit');
	Route::get('/sales/delete/{id}', 'InvoiceController@destroy');
	Route::post('/sales/modify/{id}', 'InvoiceController@update');
	Route::post('/sales/return/invoice/ajax', 'InvoiceController@loadCustomerInvoice');
	Route::get('/warranty/invoice/ajax', 'InvoiceController@loadInvoiceOnly');
	Route::get('/partialpay/invoice/ajax', 'InvoiceController@loadPartialPaidInvoiceOnly');
	Route::post('/partialpay/invoice/ajax', 'InvoiceController@savePartialPaidInvoice');
	Route::post('/warranty/invoice/product/ajax', 'InvoiceController@loadWarrantyProductInvoice');
	Route::post('/sales/return/save/ajax', 'InvoiceController@SaveSalesReturnInvoice');

	// Route::get('/sales/excel/report', 'InvoiceController@exportExcel');
	// Route::get('/sales/pdf/report', 'InvoiceController@salesPDF');

	Route::post('/sales/report', 'InvoiceController@show');
	Route::post('/sales/excel/report', 'InvoiceController@ExcelReport');
	Route::post('/sales/pdf/report', 'InvoiceController@PdfReport');


	Route::get('/sales/partial/payment', 'InvoiceController@salesPartialAdd');


	//------------------Sales route end--------------------//

	//------------------Sales Return Route Start--------------//
	Route::get('/sales/return/create', 'InvoiceController@makeSalesReturn');
	Route::get('/sales/return/list', 'InvoiceController@makeSalesReturnShow');
	Route::get('/sales/return/make/{sales_id}', 'InvoiceController@createSalesReturn');
	Route::post('/sales/return/make/{sales_id}', 'InvoiceController@storeSalesReturn');
	//------------------Sales Return Route End--------------//

	//------------------Event Calender Route Start--------------//
	Route::get('/event/calendar', 'EventCalenderController@index');
	Route::get('/event/calendar/create', 'EventCalenderController@create');
	Route::post('/event/calendar/save', 'EventCalenderController@store');
	Route::post('/event/calendar/update/{id}', 'EventCalenderController@update');
	Route::get('/event/calendar/delete/{id}', 'EventCalenderController@destroy');
	Route::get('/event/calendar/edit/{id}', 'EventCalenderController@edit');
	Route::get('/event/calendar/list', 'EventCalenderController@show');
	//------------------Event Calender Route End--------------//

	//------------------Vendor Route Start--------------//
	Route::get('/vendor', 'VendorController@index');
	Route::get('/vendor/create', 'VendorController@create');
	Route::post('/vendor/save', 'VendorController@store');
	Route::post('/vendor/modify/{id}', 'VendorController@update');
	Route::get('/vendor/list', 'VendorController@show');
	Route::get('/vendor/edit/{id}', 'VendorController@edit');
	Route::get('/vendor/delete/{id}', 'VendorController@destroy');
	//------------------Vendor  Route Start--------------//

	//----------------POS Route Start--------------------------//
	Route::post('/sales/cart/add/{pid}', 'InvoiceProductController@getAddToCart');
	//Route::post('/sales/cart/custom/add/{pid}/{quantity}', 'InvoiceProductController@getCustomQuantityToCart');
	Route::post('/sales/cart/custom/add/{pid}/{quantity}/{price}', 'InvoiceProductController@getCustomQuantityToCart');
	Route::post('/sales/cart/row/delete/{pid}', 'InvoiceProductController@getDelRowFRMCart');
	Route::post('/sales/cart/del/{uniqid}', 'InvoiceProductController@getDelToCart');
	Route::post('/sales/cart/customer/{cusid}', 'InvoiceProductController@getCusAssignToCart');
	Route::get('/sales/cart/print', 'InvoiceProductController@getCart');
	Route::get('/sales/cart/json', 'InvoiceProductController@getCart');
	Route::get('/sales/cart/DBprint', 'InvoiceProductController@getDBCart');
	Route::get('/sales/cart/clear', 'InvoiceProductController@getClearCart');
	Route::post('/sales/cart/payment', 'InvoiceProductController@getPaidCart');
	Route::post('/sales/cart/assign/discount', 'InvoiceProductController@getAssignDiscountToCart');
	Route::post('/sales/cart/complete-sales', 'InvoiceController@CompleteSalesPOS');
	//Route::post('/sales/cart/complete-sales', 'InvoiceController@CompleteSalesPOS');
	Route::post('/sales/send/invoice', 'SendSalesEmailController@InvoiceMailSend');




	//---------------POS Route End-----------------------------//

	//------------------Counter Display Started------------------------//
	Route::post('counter-display-status-change', 'CounterDisplayController@updateCounterStatus');
	Route::get('counter-display', 'CounterDisplayController@index');
	Route::get('counter-display-token-id', 'CounterDisplayController@getDBCartTokenID');
	Route::post('counter-display/sales/json', 'CounterDisplayController@getSalesCartCounter');
	Route::post('counter-display/customer/save', 'CustomerInvoiceEmailController@store');
	//------------------Counter Display End------------------------//


	// --------Counter Display Settings route start---------//
	Route::get('/counter/display/add', 'CounterDisplayAuthorizedPCController@index');
	Route::post('/counter/display/add/save', 'CounterDisplayAuthorizedPCController@store');
	Route::get('/counter/display/add/edit/{id}', 'CounterDisplayAuthorizedPCController@edit');
	Route::get('/counter/display/add/delete/{id}', 'CounterDisplayAuthorizedPCController@destroy');
	Route::post('/counter/display/add/modify/{id}', 'CounterDisplayAuthorizedPCController@update');
	// --------Counter Display Settings route End---------//


	//------------------Report route start--------------------//
	Route::get('/profit', 'InvoiceProfitController@index');
	Route::get('/profit/report', 'InvoiceProfitController@index');
	Route::post('/profit/excel/report', 'InvoiceProfitController@export');
	Route::post('/profit/pdf/report', 'InvoiceProfitController@invoicePDF');
	Route::post('/profit/report', 'InvoiceProfitController@index');

	Route::get('/product/profit', 'ProductController@indexProfit');
	Route::get('/product/profit/report', 'ProductController@indexProfit');
	Route::post('/product/profit/excel/report', 'ProductController@exportProfit');
	Route::post('/product/profit/pdf/report', 'ProductController@invoicePDFProfit');
	Route::post('/product/profit/report', 'ProductController@indexProfit');

	Route::get('/payment', 'InvoicePaymentController@index');
	Route::get('/payment/report', 'InvoicePaymentController@index');
	Route::post('/payment/report', 'InvoicePaymentController@index');
	Route::post('/payment/excel/report', 'InvoicePaymentController@exportExcel');
	Route::post('/payment/pdf/report', 'InvoicePaymentController@invoicePDF');


	Route::get('/paypal/payment/report', 'InvoicePaymentController@Paypalindex');
	Route::post('/paypal/payment/report', 'InvoicePaymentController@Paypalindex');
	Route::post('/paypal/payment/excel/report', 'InvoicePaymentController@PaypalexportExcel');
	Route::post('/paypal/payment/pdf/report', 'InvoicePaymentController@PaypalinvoicePDF');

	Route::get('/repair/delete/{id}', 'InStoreRepairController@destroy');
	Route::post('/repair/ajax/{id}', 'InStoreRepairController@repairAjaxUpdate');
	Route::post('/repair/product/ajax', 'ProductController@storeRepairAjax');
	Route::get('/repair/create', 'InStoreRepairController@createR');
	Route::get('/repair/view/{repair_id}', 'InStoreRepairController@show');
	Route::post('/repair/save', 'InStoreRepairController@storeR');
	Route::post('/repair/info/pos/ajax', 'InStoreRepairController@posInfostore');
	Route::get('/repair/list', 'InStoreRepairController@index');
	Route::get('/repair/report', 'InStoreRepairController@report');
	Route::post('/repair/report', 'InStoreRepairController@report');
	Route::post('/repair/excel/report', 'InStoreRepairController@exportExcel');
	Route::post('/repair/pdf/report', 'InStoreRepairController@exportPDF');
	//Route::get('/sales/invoice/print/pdf/{invoice_id}', 'InvoiceController@invoicePDF');
	Route::get('/repair/print/{repair_id}', 'InStoreRepairController@showRepairPDF');
	Route::get('/pos/repair/{repair_id}', 'InvoiceProductController@RepairPOS');

	Route::get('/settings/instore/device/list', 'InStoreRepairController@deviceList');
	Route::get('/settings/instore/device/edit/{id}', 'InStoreRepairDeviceController@edit');
	Route::post('/settings/instore/device/edit/{id}', 'InStoreRepairDeviceController@update');
	Route::get('/settings/instore/device/delete/{id}', 'InStoreRepairDeviceController@destroy');

	Route::get('/settings/instore/model/list', 'InStoreRepairController@modelList');
	Route::get('/settings/instore/model/edit/{id}', 'InStoreRepairModelController@edit');
	Route::post('/settings/instore/model/edit/{id}', 'InStoreRepairModelController@update');
	Route::get('/settings/instore/model/delete/{id}', 'InStoreRepairModelController@destroy');

	Route::get('/settings/instore/problem/list', 'InStoreRepairController@problemList');
	Route::get('/settings/instore/problem/edit/{id}', 'InStoreRepairProblemController@edit');
	Route::post('/settings/instore/problem/edit/{id}', 'InStoreRepairProblemController@update');
	Route::get('/settings/instore/problem/delete/{id}', 'InStoreRepairProblemController@destroy');

	Route::get('/settings/instore/price/list', 'InStoreRepairController@priceList');
	Route::get('/settings/instore/price/edit/{id}', 'InStoreRepairPriceController@edit');
	Route::post('/settings/instore/price/edit/{id}', 'InStoreRepairPriceController@update');
	Route::get('/settings/instore/price/delete/{id}', 'InStoreRepairPriceController@destroy');

	Route::get('/settings/instore/product/list', 'InStoreRepairController@productList');
	Route::get('/settings/instore/product/edit/{id}', 'InStoreRepairProductController@edit');
	Route::post('/settings/instore/product/edit/{id}', 'InStoreRepairProductController@update');
	Route::get('/settings/instore/product/delete/{id}', 'InStoreRepairProductController@destroy');

	Route::get('/ticket/delete/{id}', 'InStoreTicketController@destroy');
	Route::post('/ticket/ajax/{id}', 'InStoreTicketController@ticketAjaxUpdate');
	Route::get('/ticket/view/{ticket_id}', 'InStoreTicketController@show');
	Route::get('/ticket/create', 'InStoreTicketController@create');
	Route::post('/ticket/save', 'InStoreTicketController@store');
	Route::post('/ticket/info/pos/ajax', 'InStoreTicketController@posInfostore');
	Route::get('/ticket/list', 'InStoreTicketController@index');
	Route::get('/ticket/report', 'InStoreTicketController@report');
	Route::post('/ticket/report', 'InStoreTicketController@report');
	Route::post('/ticket/excel/report', 'InStoreTicketController@exportExcel');
	Route::post('/ticket/pdf/report', 'InStoreTicketController@exportPDF');
	Route::get('/ticket/print/{ticket_id}', 'InStoreTicketController@showTicketPDF');
	Route::get('/pos/ticket/{ticket_id}', 'InvoiceProductController@TicketPOS');
	//------------------Report route end--------------------//

	//------------------warranty route start--------------------//
	Route::get('/warranty', 'WarrantyController@index');
	Route::get('/warranty/invoice/{id}', 'WarrantyController@create');
	Route::post('/warranty/save', 'WarrantyController@store');
	Route::post('/warranty/update/{id}', 'WarrantyController@update');
	Route::post('/warranty/cart/add/{uniqid}', 'WarrantyController@getAddToCart');
	Route::post('/warranty/cart/del/{uniqid}', 'WarrantyController@getDelToCart');
	Route::get('/warranty/cart/print', 'WarrantyController@getCart');
	Route::get('/warranty/cart/clear', 'WarrantyController@getClearCart');
	Route::get('/warranty/report', 'WarrantyController@show');
	Route::get('/warranty/delete/{id}', 'WarrantyController@destroy');
	Route::get('/warranty/view/{id}', 'WarrantyController@edit');
	Route::get('/warranty/batch-out', 'WarrantyController@batchOut');

	Route::get('/warranty/excel/report', 'WarrantyController@exportExcel');
	Route::get('/warranty/pdf/report', 'WarrantyController@invoicePDF');
	//------------------warranty route end--------------------//


	//------------------variancereport route start--------------------//
	//Route::get('/variance/report', 'HomeController@variancereport')->name('variancereport');
	Route::get('/variance/report/detail', 'HomeController@variancereportdetail')->name('variancereportdetail');
	//------------------variancereport route end--------------------//


	//-------------------Settings Started----------------------------//
	Route::get('settings/barcode', 'BuybackController@createBarcode');
	Route::get('settings/instorerepair', 'InStoreRepairController@create');
	Route::get('settings/instore/merge/repair/data', 'InStoreRepairController@mergeDataTostore');
	Route::post('settings/instore/merge/repair/store', 'InStoreRepairController@mergestoreData');
	Route::post('settings/instore/clear/repair/store', 'InStoreRepairController@clearstoreData');
	Route::post('settings/instorerepair', 'InStoreRepairController@store');
	Route::post('instorerepair/model/ajax', 'InStoreRepairController@deviceModel');
	Route::post('genarate/barcode', 'BuybackController@genarateBarcode');


	Route::get('pos/settings', 'PosSettingController@index');
	Route::get('pos/settings/invoice/{id}', 'PosSettingController@invoiceLayout');
	Route::post('pos/settings/invoice/save/{id}', 'PosSettingController@invoiceLayoutSave');
	Route::post('pos/settings/save', 'PosSettingController@store');
	Route::post('pos/settings/update/{id}', 'PosSettingController@update');

	Route::get('tax/settings', 'TaxController@index');
	Route::post('tax/settings/save', 'TaxController@store');
	Route::post('tax/settings/update/{id}', 'TaxController@update');

	Route::get('site/navigation', 'SiteSettingController@navigation');
	Route::get('settings/tax', 'TaxController@index');
	Route::post('settings/tax', 'TaxController@store');
	Route::post('settings/tax/change', 'TaxController@update');
	Route::post('settings/tax/settype', 'InvoiceProductController@setTaxType');
	
	Route::get('setting/printer/print-paper/size', 'PrinterPrintSizeController@index');
	Route::post('setting/printer/print-paper/size/save', 'PrinterPrintSizeController@store');
	Route::post('setting/printer/print-paper/size/update/{id}', 'PrinterPrintSizeController@update');	

	
	Route::post('site/navigation/save', 'SiteSettingController@navigationstore');
	Route::post('site/navigation/update/{id}', 'SiteSettingController@navigationupdate');	

	Route::get('site/color', 'ColorPlateController@index');
	Route::post('site/color/save', 'ColorPlateController@store');
	Route::post('site/color/update/{id}', 'ColorPlateController@update');

	Route::get('site/report_setting', 'ReportSettingController@index');
	Route::post('site/report_setting/save', 'ReportSettingController@store');
	Route::post('site/report_setting/update/{id}', 'ReportSettingController@update');
	//-------------------Settings End Here-------------------------//



	//------------------Invoiec Email Teamplate start--------------------//
	Route::get('settings/invoice/email', 'InvoiceEmailTeamplateController@index');
	Route::post('settings/invoice/email/save', 'InvoiceEmailTeamplateController@store');
	Route::post('settings/invoice/email/update', 'InvoiceEmailTeamplateController@update');
	Route::get('settings/invoice/email/edit', 'InvoiceEmailTeamplateController@edit');
	Route::post('settings/invoice/email/time', 'InvoiceEmailTeamplateController@emailTime');
	Route::post('settings/invoice/email/bcc', 'InvoiceEmailTeamplateController@emailBCC');
	Route::post('settings/invoice/email/test-email', 'SendTestMailController@store');
	//------------------Invoiec Email Teamplate end--------------------//

	//----------------Testing laraveler mail Start-----------------------------//
	Route::get('sendbasicemail','MailController@basic_email');
	Route::get('sendhtmlemail','MailController@html_email');
	Route::get('sendattachmentemail','MailController@attachment_email');
	//----------------Testing laraveler mail End-----------------------------//


	//----------------Card Info Start-----------------------------//
	Route::get('/attendance/punch/manual','CashierPunchController@create');
	Route::get('/attendance/punch/report','CashierPunchController@report');
	Route::post('/attendance/punch/report','CashierPunchController@report');
	Route::post('/attendance/punch/excel','CashierPunchController@ExcelReport');
	Route::post('/attendance/punch/pdf','CashierPunchController@PdfReport');
	Route::post('/attendance/punch/save','CashierPunchController@saveattendance');
	Route::post('/attendance/punch/manual/save','CashierPunchController@store');
	Route::post('/attendance/punch/manual/modify/{id}','CashierPunchController@update');
	Route::get('/attendance/punch/json','CashierPunchController@attendanceJson');
	Route::get('/attendance/punch/edit/{id}','CashierPunchController@edit');
	//----------------Card Info End-----------------------------//

	//----------------Card Info Start-----------------------------//
	/*Route::get('/card','CardInfoController@index');
	Route::post('/card/save','CardInfoController@store');
	Route::get('/card/list','CardInfoController@show');
	Route::get('/card/list/delete/{id}','CardInfoController@destroy');
	Route::get('/card/list/edit/{id}','CardInfoController@edit');
	Route::post('/card/update/{id}','CardInfoController@update');*/
	//Route::get('sendattachmentemail','CardInfoController@attachment_email');
	//----------------Card Info End-----------------------------//

	//----------------Authorize.net Payment Route Start-----------------------------//
	Route::get('/authorize/net/payment/test','AuthorizeNetPaymentController@index');
	Route::post('/authorize/net/capture/pos/payment','InvoiceController@AuthorizenetCardPayment');
	Route::post('/authorize/net/capture/pos/partial/payment','InvoiceController@AuthorizenetCardPartialPayment');
	Route::get('/authorize/net/payment/history','AuthorizeNetPaymentHistoryController@index');
	Route::post('/authorize/net/payment/refund','InvoiceController@refund');

	Route::get('/authorize/net/payment/setting', 'AuthorizeNetPaymentController@setUserDynamicKey');
	Route::post('/authorize/net/payment/setting', 'AuthorizeNetPaymentController@setUserDynamicKey');
	Route::post('/authorize/net/payment/update/setting', 'AuthorizeNetPaymentController@UpdateUserDynamicKey');

	Route::post('/authorize/net/payment/history/report','AuthorizeNetPaymentHistoryController@show');
	Route::post('/authorize/net/payment/history/excel/report', 'AuthorizeNetPaymentHistoryController@ExcelReport');
	Route::post('/authorize/net/payment/history/pdf/report', 'AuthorizeNetPaymentHistoryController@PdfReport');
	//----------------Authorize.net Payment Route End-----------------------------//

});

Route::get('send-mail/invoice/email/instant', 'SendSalesEmailController@instantMailSend');

