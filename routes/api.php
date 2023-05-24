<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\User\UserController;
use App\Http\Controllers\Api\User\DashboardController;
use App\Http\Controllers\Api\User\AuthController;
use App\Http\Controllers\Api\Modules\Bulk\BulkController;
use App\Http\Controllers\Api\Modules\PoDetails\PoDetailsController;
use App\Http\Controllers\Api\Modules\Stub\StubbingController;
use App\Http\Controllers\Api\Modules\QuoteEmail\QuoteEmailController;
use App\Http\Controllers\Api\Modules\Product\ProductController;
use App\Http\Controllers\Api\Modules\Quote\QuoteController;
use App\Http\Controllers\Api\Modules\Temp\TemporaryController;
use App\Http\Controllers\Api\Modules\Temp\SoTemporaryController;
use App\Http\Controllers\Api\Modules\Requote\RequoteController;
use App\Http\Controllers\Api\Modules\Remarks\RemarkController;
use App\Http\Controllers\Api\Modules\PriceManagement\PriceManagementController;
use App\Http\Controllers\Api\Modules\Complain\ComplainController;
use App\Http\Controllers\Api\Modules\Complain\ComplainDepController;
use App\Http\Controllers\Api\Modules\Complain\ComplainManageController;
use App\Http\Controllers\Api\Modules\Orders\OrderPlanningController;
use App\Http\Controllers\Api\Modules\Notification\NotificationController;
use App\Http\Controllers\Api\Modules\Sap\SalesOrder\SalesContractController;
use App\Http\Controllers\Api\Modules\Sap\SalesOrder\SapSummaryController;
use App\Http\Controllers\Api\Modules\Sap\SalesOfficeController;
use App\Http\Controllers\Api\Modules\Sap\SapContractTypeController;
use App\Http\Controllers\Api\Modules\Sap\SapCustomerGroupController;
use App\Http\Controllers\Api\Modules\Sap\SapDeliveryModeController;
use App\Http\Controllers\Api\Modules\Sap\SapFreightController;
use App\Http\Controllers\Api\Modules\Sap\SapFreightIndicationController;
use App\Http\Controllers\Api\Modules\Sap\SapIncotermsController;
use App\Http\Controllers\Api\Modules\Sap\SapSalesGroupController;
use App\Http\Controllers\Api\Modules\Sap\SalesOrganizationController;
use App\Http\Controllers\Api\Modules\Sap\DivisionController;
use App\Http\Controllers\Api\Modules\Sap\DistributionChannelController;
use App\Http\Controllers\Api\Modules\Sap\SapOrderTypeController;
use App\Http\Controllers\Api\Modules\Sap\SapPaymentTermsController;
use App\Http\Controllers\Api\Modules\Sap\SapPaymentGuranteeProcedureController;
use App\Http\Controllers\Api\Modules\Dorder\DoController;
use App\Http\Controllers\Api\Modules\Dorder\DoSummeryController;
use App\Http\Controllers\Api\Modules\RfqOrderStatus\RfqOrderStatusController;
use App\Http\Controllers\Api\Modules\Search\SearchController;
use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\Auth\ResetPasswordController;
use App\Http\Controllers\Api\Modules\Security\SecurityQuestionController;
use App\Http\Controllers\Api\Modules\Mis\MisController;

use App\Http\Controllers\Api\Admin\AdminAuthController;
use App\Http\Controllers\Api\Admin\AdminController;
use App\Http\Controllers\Api\Modules\Category\CategoryController;
use App\Http\Controllers\Api\Modules\SubCategory\SubCategoryController;
use App\Http\Controllers\Api\Modules\Freight\FreightController;
use App\Http\Controllers\Api\Modules\Sap\SalesOrder\ScViewController;
use App\Http\Controllers\Api\Modules\Sap\FreightPartnerController;
use App\Http\Controllers\Api\Modules\Admin\AdminDashboardController;
use App\Http\Controllers\Api\Modules\Admin\AdminUserManageController;
use App\Http\Controllers\Api\Modules\Admin\OrderManagementController;
use App\Http\Controllers\Api\Modules\Admin\AdminPasswordController;
use App\Http\Controllers\Api\Modules\Admin\AdminLogController;
use App\Http\Controllers\Api\Modules\Admin\RfqManagementController;
use App\Http\Controllers\Api\Modules\Admin\LedgerController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
// Route::post('login', [UserController::class, 'login']);

// ----------------------------------- register -----------------------------------------

Route::post('/register', [UserController::class,'store']);
Route::post('send-mobile-otp',[UserController::class,'sendOtpToMobile'])->name('send_mobile_otp');
Route::post('verify-mobile-otp',[UserController::class,'verifyMobileOtp'])->name('verify_mobile_otp');
Route::get('register_email', [UserController::class,'registerEmail']);
Route::post('login', [AuthController::class,'login']);
Route::post('send-login-otp', [AuthController::class,'sendLoginOtp'])->name('send_login_otp');
Route::post('chk_email', [UserController::class,'chkEmail']);
Route::post('password-email', [AuthController::class,'sendResetLinkEmail'])->name('user.password.email');
Route::post('password-update', [AuthController::class,'reset'])->name('user.password.update');
Route::post('password-reset', [UserController::class,'passreset']);
Route::get('get_user_by_id/{id}', [UserController::class,'getUserById']);
Route::get('test', [UserController::class,'test']);
Route::get('test_mail', [UserController::class,'testmail']);
Route::post('regis_date_log',[AuthController::class,'regisdatelog']);
Route::post('resest_pass_mail', [UserController::class,'resestpassMail']);

// -------------------------------------------------------------------------------------
// --------------------------- security ----------------------------------------------
Route::post('store_security_question', [SecurityQuestionController::class,'StoreSecurityQue']);
Route::get('get_security_questions', [SecurityQuestionController::class,'getSecurityQue']);
Route::get('get_security_questions_admin', [SecurityQuestionController::class,'getSecurityQueAdmin']);
Route::put('edit_questions_admin/{secqueId?}', [SecurityQuestionController::class,'editSecurityQue']);
Route::post('update_questions_admin', [SecurityQuestionController::class,'updateSecurityQue']);
Route::post('save_security_qst_ans', [SecurityQuestionController::class,'saveSecurityQstAns']);
Route::post('security_qstn_mail', [SecurityQuestionController::class,'securityQstnMail']);
Route::post('force_logout', [AuthController::class,'fologout']);
Route::post('get_save_token',[AuthController::class,'getsavetoken']);
Route::post('security_qstn_match', [SecurityQuestionController::class,'securityQstnMatch']);
// -----------------------------------------------------------------------------------
// ------------------------------------ GST ------------------------------------------------------------
Route::get('gst_details_dummy',[StubbingController::class,'gstDetailsDummy']);
Route::get('gst_details_dummy/{gstId}',[StubbingController::class,'gstDetailsDummy']);
Route::get('gst_details_dummy_new',[StubbingController::class,'gstDetailsDummyNew']);
// -----------------------------------------------------------------------------------------------------

Route::post('store-excel-data',[BulkController::class,'storExceleData']);
Route::get('download-po-details-pdf/{id}',[PoDetailsController::class,'downloadPoPdf'])->name('download_po_details_pdf');

Route::post('sap_sales_contarct',[StubbingController::class,'sapSalesContarct']);
Route::post('sap_sales_order',[StubbingController::class,'sapSalesOrder']);
Route::post('regis_date_log',[AuthController::class,'regisdatelog']);
Route::post('sap_cus_ledger',[StubbingController::class,'sapCusLedger']);

// Route::get('test_mail', [UserController::class,'testmail']);

// ------------------ rfq mails --------------------------------------------------
Route::post('quote_gen_mail', [QuoteEmailController::class,'quotePoMail']);
Route::post('sale_accpt_mail', [QuoteEmailController::class,'saleAccptMail']);
Route::post('accepted_price_mail', [QuoteEmailController::class,'acceptedPriceMail']);
Route::post('order_cnrfm_mail', [QuoteEmailController::class,'orderCnrfmMail']);
Route::post('sale_head_accpt_mail', [QuoteEmailController::class,'saleHeadAccptMail']);
Route::post('sale_head_accpt_mail', [QuoteEmailController::class,'saleHeadAccptMail']);
Route::post('pant_do_mail', [QuoteEmailController::class,'pantDomail']);
Route::post('cus_scchng_mail', [QuoteEmailController::class,'cusscchngmail']);
Route::post('cus_do_mail', [QuoteEmailController::class,'cusdogmail']);
Route::post('plant_doexcel_mail', [QuoteEmailController::class,'plantdoexcelmail']);
Route::post('po_edit_mail', [QuoteEmailController::class,'poEditMail']);

// ------------ sap mails------------------------------------------
Route::post('sc_mail', [QuoteEmailController::class,'scMail']);

// Excel Import Export.....

Route::get('export-excel-sales-mis',[OrderManagementController::class,'salesMisExcel']);
Route::get('export-excel-threshold-price-admin',[PriceManagementController::class,'exportExcelThresholdPriceAdmin']);

Route::get('export-excel-cust-admin',[AdminUserManageController::class,'exportExcelCustAdmin']);

Route::post('import-excel-threshold-price-admin',[PriceManagementController::class,'importExcelThresholdPriceAdmin']);

Route::get('export-excel-freight-charges',[FreightController::class,'exportExcelFreightCharges']);

 Route::post('import-sub-cat-excel-admin',[SubCategoryController::class,'importSubCatExcelAdmin']); 
//Route::post('import-excel-freight-charges',[FreightController::class,'importExcelFreightChargesAdmin']);
 Route::get('export-excel-rfq',[RfqManagementController::class,'exportExcelRfq']);
// End of Excel Import Export.....

Route::post('do-summary',[DoSummeryController::class,'doSummary']);

// ---------------------------------------------------------------
Route::group(['namespace'=>'Api\Modules'],function(){
	// Index Page Routes ....
	Route::get('index-page/{proId}/{plant_id?}', [ProductController::class,'indexPage'])->name('index_page');
	Route::get('popular-product', [ProductController::class,'popularProduct'])->name('popular');
	Route::get('product-manu', [ProductController::Class,'productManu'])->name('product_manu');
	Route::any('filter-product-menu', [ProductController::class,'productFilter'])->name('product_filter');
	Route::get('category-dropdown', [ProductController::Class,'CategoryDropdown'])->name('category_list');
	Route::get('product-dropdown', [ProductController::class,'ProductDropdown'])->name('product_list_my');
   Route::post('subcategory-product-menu', [ProductController::class,'subcatFilter']);

	Route::get('product-details/{catId}/{proId}', [ProductController::class,'productDetails'])->name('product_details');
	Route::get('sub_cat_details/{subId}', [ProductController::class,'sub_cat_details']);

	// Route::get('get_all_news_all',[NewsController::class,'getAllNews']);//news list for all
   // Sayan.....
   Route::get('product-related-category-fetch',[ProductController::class,'product_related']);
});

// -----------------------------------------------------------------------------------------------
Route::get('download-po-pdf/{id}/{usertype?}',[QuoteController::class,'downloadPdf'])->name('downloadPdf');
Route::post('sc_excel_submit',[TemporaryController::class,'scExcelSubmit']);
Route::get('scexceldownload',[TemporaryController::class,'scExceldown']);
Route::post('so-excel-submit',[SoTemporaryController::class,'SoExcelSubmit']);
Route::get('so-excel-download/{contract_no?}',[SoTemporaryController::class,'SoExcelDownload']);
// -----------------------------------------------------------------------------------------------
// ----------------------- MIS dropdown ---------------------------------------------------------
  Route::get('get_all_plants',[SapSummaryController::class,'getAllPlants']);
  Route::get('get_all_city',[SapSummaryController::class,'getAllCity']);
// -----------------------------------------------------------------------------------------

Route::group(['prefix' => 'user','middleware' => ['assign.guard:users', 'jwtmiddleware']],function ()
{
         Route::post('user-dashboard', [DashboardController::class,'userDashboard'])->name('user_dashboard');

	    Route::post('logout', [AuthController::class,'logout']);
			Route::post('refresh', [AuthController::class,'refresh']);
			Route::get('profile', [AuthController::class,'me']);
			Route::post('update-mobile-number',[AuthController::class,'updateMobileNUmber']);
			Route::post('update-mobile-user',[AuthController::class,'verifyMobileOtpUser']);
			// Route::resource('customer', [UserController]);
			Route::post('customers/{id}', [UserController::class,'update']);
			Route::post('reset-password', [UserController::class,'resetPassword'])->name('reset_password');


   	// Route::group(['namespace'=>'Api\Modules'],function(){
   		// Route::get('download-po-pdf/{id}','Quote\QuoteController@downloadPdf')->name('downloadPdf');
   		 Route::post('store_quotes',[QuoteController::class,'storeQuotes']);
   		 Route::post('update_quotes',[QuoteController::class,'updateQuotes']);
   		 Route::post('quotes_status_update',[QuoteController::class,'quotesStatusUpdate']);
   		 Route::get('quotes_history/{rfq_no}',[QuoteController::class,'quotesHistoryCustomer']);
   		 Route::get('quotes_list',[QuoteController::class,'getQuotesList']);
   		 Route::get('get_quote_by_id/{id}',[QuoteController::class,'getQuoteById']);
   		 Route::post('update_quotes_sche',[QuoteController::class,'updateQuoteSche']);
   		 Route::post('submit_requote_id',[QuoteController::class,'submitRequoteId']);
   		 Route::get('get_requote_list',[QuoteController::class,'getRequoteList']);
   		 Route::post('create_rfq_deliveries',[QuoteController::class,'createRfqdeliveries']);
   		 Route::post('delete_quote_by_id',[QuoteController::class,'deleteQuoteById']);
   		 Route::get('get_quote_sche_by_id/{id}',[QuoteController::class,'getQuoteScheById']);
   		 Route::post('delete_quote_sche',[QuoteController::class,'deleteQuoteSche']);
   		 Route::get('kam_quotes_list',[QuoteController::class,'getKamQuotesList']);
   		 Route::post('view_remarks',[QuoteController::class,'viewRemarks']);
   		 Route::get('get_quote_po_by_id/{id}',[QuoteController::class,'getPoQuoteById']);
   		 Route::post('submit_po',[QuoteController::class,'submitPo']);
   		 Route::get('get_po_by_id/{id}',[QuoteController::class,'getPoById']);
   		 Route::get('get_po_all',[QuoteController::class,'getPoAll']);
   		 Route::get('get_po_all_kam',[QuoteController::class,'getPoAllKam']);
   		 Route::post('po_status_update',[QuoteController::class,'poStatusUpdate']);
   		 Route::post('update_po',[QuoteController::class,'updatePo']);
   		 Route::post('sales_update_rfq',[QuoteController::class,'salesUpdateRfq']);
   		 Route::get('get_user_address/{id}',[QuoteController::class,'getUserAddress']);
   		 Route::get('get_plants_by_type/{id}',[QuoteController::class,'getPlantsByType']);
   		 Route::get('get_quotedel_by_id/{id}',[QuoteController::class,'getQuotedelById']);
   		 Route::get('get_plant_addr/{id}',[QuoteController::class,'getPlantAddr']);
   		 Route::get('reject_sche_by_date',[QuoteController::class,'rejectScheByDate']);
   		 Route::get('get_all_deliveries',[QuoteController::class,'getAllDeliveries']);
   		 Route::post('update_letterhead',[QuoteController::class,'updateLetterhead']);
   		 Route::get('count_cus_po/{cus_po}',[QuoteController::class,'countCusPo']);
   		 Route::post('update_count_requote',[RequoteController::class,'updateCountRequote']);
   		 Route::get('get_count_requote/{rfq_no}',[RequoteController::class,'getCountRequote']);
   		 Route::get('get_count_sche/{rfq_no}',[RequoteController::class,'getCountSche']);
   		 Route::post('price_break_save',[RequoteController::class,'priceBreakSave']);
   		 Route::get('get_price_comp',[RequoteController::class,'getPriceComp']);
   		 Route::post('get_price_break',[RequoteController::class,'getPriceBreak']);
   		 Route::post('sm_remark_save',[RequoteController::class,'smRemarkSave']);
          Route::get('sm_remark_by_id/{rfq_no}',[RequoteController::class,'smRemarkById']);
          Route::get('sm_amend_po',[RequoteController::class,'smAmendPo']);

          Route::post('submit_remarks',[RemarkController::class,'submitremarks']);
          Route::get('get_rfq_st/{rfq_no}',[QuoteController::class,'getRfqSt']);

   		 Route::post('get-store-pro-price',[PriceManagementController::class,'getProPrice'])->name('get_store_pro_price');
   		 Route::get('get-threshold-price',[PriceManagementController::class,'getThresholdPrice'])->name('get_threshold_price');
   		 // Complain Remarks Routes....
   		 Route::get('complain-category-list', [ComplainController::class,'getComplainCategory'])->name('complain_category');
   		 Route::get('complain-sub-category-list/{id}', [ComplainController::class,'getComplainSubCategory'])->name('complain_sub_category');
   		 Route::get('complain-sub-category2-list/{id}', [ComplainController::class,'getComplainSubCategory2'])->name('complain_sub_category2');
   		 Route::get('complain-sub-category3-list/{id}', [ComplainController::class,'getComplainSubCategory3'])->name('complain_sub_category3');

   		Route::post('store-complain-main', [ComplainController::class,'storeComplainMain'])->name('store_complain_main');

		Route::post('remarks-replay', [ComplainController::class,'remarksReplay'])->name('remarks_replay');

		Route::get('complain-details/{complainId}', [ComplainController::class,'complainDetails'])->name('complain_details');

		Route::get('complain-details-kam/{po_number}/{kam_id?}', [ComplainController::class,'complainDetailsKam'])->name('complain_details_kam');

		Route::post('send-com-mail-rm', [ComplainController::class,'sendComMailRm'])->name('send_com_mail_rm');

		Route::get('complain-download/{complainId}', [ComplainController::class,'complainDownload'])->name('complain_download');

		Route::post('get-complain-list-kam', [ComplainController::class,'getComplainListKam'])->name('get_complain_list_kam');


		Route::get('closed-remarks/{complainId}', [ComplainController::class,'closedRemarks'])->name('closed_remarks');

		Route::get('get-deparment', [ComplainDepController::class,'getDeparment'])->name('get_deparment');
		Route::post('get-deparment-mail', [ComplainDepController::class,'getDeparmentMail'])->name('get_mail_deparment');
   		Route::post('send-com-mail', [ComplainManageController::class,'sendComMail'])->name('send_com_mail');
   		Route::post('com-mail-confirm', [ComplainManageController::class,'comMailConfirm'])->name('com_mail_confirm');
   		Route::post('get-com-manage-data', [ComplainManageController::class,'getComManageData'])->name('get_com_manage_data');
   		Route::post('store-com-files', [ComplainManageController::class,'storeComFiles'])->name('store_com_files');


   		 Route::post('monthly_prod_plan_submit',[OrderPlanningController::class,'monthlyPlanSubmit']);
   		 Route::post('prod-qty-upload',[OrderPlanningController::class,'prodQtyUpload']);
   		 Route::post('get_order_planning',[OrderPlanningController::class,'getOrderPlanning']);
   		 Route::post('submit_dispatch_plan',[OrderPlanningController::class,'submitDispatchPlan']);
   		 Route::get('get_order_planning_by_id/{id}',[OrderPlanningController::class,'getOrderPlanById']);
   		 Route::post('monthly_prod_plan_up',[OrderPlanningController::class,'monthlyPlanUpdate']);


   	// ----------------- quote po notification -------------------------------------------

   		 Route::post('cam_notification_submit',[NotificationController::class,'camNotificationSubmit']);
   		 Route::get('get_cam_notification/{id}',[NotificationController::class,'getCamNotification']);

   		 Route::post('cus_notification_submit',[NotificationController::class,'cusNotificationSubmit']);
   		 Route::get('get_cus_notification/{id}',[NotificationController::class,'getCusNotification']);

   		 Route::post('sales_notification_submit',[NotificationController::class,'salesNotificationSubmit']);
   		 Route::get('get_sales_notification',[NotificationController::class,'getSalesNotification']);

   		 Route::post('up_cam_noti',[NotificationController::class,'upCamNoti']);
   		 Route::post('up_cus_noti',[NotificationController::class,'upCusNoti']);
   		 Route::post('up_sales_noti',[NotificationController::class,'upSalesNoti']);
         Route::post('clear_notification',[NotificationController::class,'clearNotification']);
         Route::post('opt_notification_submit',[NotificationController::class,'optNotificationSubmit']);
         Route::get('get_opt_notification',[NotificationController::class,'getOptNotification']);
         Route::post('plant_notification_submit',[NotificationController::class,'plantNotificationSubmit']);

         Route::get('get_plant_notification/{id}',[NotificationController::class,'getPlantNotification']);
         Route::get('up_plant_notification/{id}',[NotificationController::class,'clearsinglemsg']);
         Route::get('clearall_plant_noti',[NotificationController::class,'clearallPlantNoti']);

         Route::post('sh_notification_submit',[NotificationController::class,'shNotificationSubmit']);
         Route::get('get_sh_notification',[NotificationController::class,'getShNotification']);
         Route::get('up_sh_notification/{id}',[NotificationController::class,'upShNotification']);
       Route::get('up_sh_notification_all',[NotificationController::class,'upShNotificationAll']);
   	// ----------------- sap sales order --------------------------------------------

        Route::post('get_plant_id',[SalesContractController::class,'getPlantId']);
        Route::get('get_all_mats',[SapSummaryController::class,'getallmats']);

        Route::get('price_break_fetch/{po_no}',[SalesContractController::class,'priceBreakFetch']);
   		Route::post('sales_cnt_submit',[SalesContractController::class,'salesCntSubmit']);
   		// Route::get('get_price_break_by_id/{mat_no}','Sap\SalesOrder\SalesContractController@priceBreakById');
   		Route::post('update_contarcts_no',[SalesContractController::class,'updateContarctsNo']);

   		Route::get('prepare_so_list',[SalesContractController::class,'prepareSoList']);
   		Route::post('so_submit',[SalesContractController::class,'so_submit']);


   		Route::get('get_all_sc_po',[SalesContractController::class,'getAllScPo']);

   		Route::get('get_so_sc/{sc_no}',[SalesContractController::class,'getSoSc']);
   		Route::get('get_po_summary/{po_no}',[SapSummaryController::class,'getPoSummary']);
         Route::post('sc_excel_mail',[SalesContractController::class,'scExcelMail']);
         Route::get('get_all_excelsc',[SalesContractController::class,'getallexcelsc']);
         Route::post('up_excelsc',[SalesContractController::class,'upexcelsc']);
         Route::get('view_sc/{id}',[ScViewController::class,'viewsc']);
         Route::get('get_addr_code/{id}',[ScViewController::class,'getaddrcode']);

             // ------  mis sales excel ---------------------------
         Route::get('mis_sales_excel',[MisController::class,'missalesplanorders']);
         Route::get('mis_down_excel',[MisController::class,'misdownexcel']);
             // ---------------------------------------------------
   		//------------------- Sap Routes --------------------------//

   		// Sap Contract Type Routes....
   		Route::get('get_sap_contract_type',[SapContractTypeController::class,'getSapContractType'])->name('get_sap_contract_type');

   		// Sap Customer Group Routes....
   		Route::get('get_sap_customer_group',[SapCustomerGroupController::class,'getSapCustomerGroup'])->name('get_sap_customer_group');

   		// Sap Delivery Mode Routes....
   		Route::get('get_sap_delivery_mode',[SapDeliveryModeController::class,'getSapDeliveryMode'])->name('get_sap_delivery_mode');

   		// Sap Freight Routes....
   		Route::get('get_sap_freight',[SapFreightController::class,'getSapFreight'])->name('get_sap_freight');

   		// Sap Freight Indication Routes....
   		Route::get('get_sap_freight_indi',[SapFreightIndicationController::class,'getSapFreightIndi'])->name('get_sap_freight_indi');

   		// Sap Incoterms Routes....
   		Route::get('get_sap_incoterms',[SapIncotermsController::class,'getSapIncoterms'])->name('get_sap_incoterms');

   		// Sap Payment Terms Routes....
   		Route::get('get_sap_sales_group',[SapSalesGroupController::class,'getSapSalesGroup'])->name('get_sap_sales_group');

   		// Sap Sales Organization Controller Routes....
   		Route::get('get-sap-sales-org',[SalesOrganizationController::class,'getSalesOrgType'])->name('get_sap_sales_org');

   		// Sap Sales Office Controller Routes....
   		Route::get('get-sales-office',[SalesOfficeController::class,'getSalesOffice'])->name('get_sales_office');

   		// Sap Division Controller Routes....
   		Route::post('get-sap-division',[DivisionController::class,'getSapDivision'])->name('get_sap_division');
   		// Sap Distribution Channel Controller Routes....
   		Route::get('get-distri-channel',[DistributionChannelController::class,'getDistriChannel'])->name('get_distri_channel');

   		// Sap Order Type Controller Routes....
   		Route::get('get-order-type',[SapOrderTypeController::class,'getOrderType'])->name('get_order_type');

   		// Sap Payment Terms Controller Routes....
   		Route::get('get-sap-payment-terms',[SapPaymentTermsController::class,'getPaymentTerms'])->name('get_sap_payment_terms');

   		// Sap Payment Gurantee Procedure Controller Routes....
   		Route::get('get-pay-gurantee-pos',[SapPaymentGuranteeProcedureController::class,'getPayGuranteePos'])->name('get_pay_gurantee_pos');
         
         // Sap freight partner Controller Routes....
         Route::get('get-freight-partner',[FreightPartnerController::class,'getfreightpartner']);

   		//------------------- End of Sap Routes -------------------//

   		//------------------- Dorder Routes --------------------------//

   		Route::post('store-do',[DoController::class,'storeDo'])->name('store_do');
   		Route::post('get-do-details',[DoController::class,'getDoDetails'])->name('get_do-details');
   		 Route::get('get_do_sub_cats/{so_no}',[DoController::class,'getDoSubCats']);
   		Route::post('get_all_do',[DoController::class,'getAllDo']);
   		Route::get('get_all_do_for_cus/{id}',[DoController::class,'getAllDoCus']);
   		Route::get('get_do_by_cus/{id}',[DoController::class,'get_do_by_cus']);
   		Route::get('get_do_by_cam/{id}',[DoController::class,'get_do_by_cam']);
   		Route::get('get_all_so',[DoController::class,'get_all_so']);
         Route::post('validate_do_qty',[DoController::class,'validateDo']);
         Route::post('update-do',[DoController::class,'updateDo'])->name('update_do');

         // Route::post('validate_do_qty',[DoSummeryController::class,'doSummary']);
   		//------------------- End of Dorder Routes --------------------------//



         //------------------- RFQ Order Status Kam -------------------//

         Route::post('store-order-status-kam',[RfqOrderStatusController::class,'storeOrderStatusKam'])->name('store_rfq_order_status_kam');
         Route::post('get-rfq-order-status-kam',[RfqOrderStatusController::class,'getRfqOrderStatusKam'])->name('get_rfq_order_status_kam');

         //------------------- End of RFQ Order Status Kam -------------------//


         //------------------- RFQ Order Status Customer -------------------//
         Route::post('store-rfq-order-status-cust',[RfqOrderStatusController::class,'StoreRfqOrderStatusCust'])->name('store_rfq_order_status_cust');
         Route::post('get-rfq-order-status-cust',[RfqOrderStatusController::class,'getRfqOrderStatuCust'])->name('get_rfq_order_status_cust');

         //------------------- End of RFQ Order Status Customer -------------------//

         // -------------------- search ----------------------------------------

          Route::post('rfq_search_list',[SearchController::class,'cusRfqSearchList']);

          Route::post('po_search_list',[SearchController::class,'poSearchList']);

         // ---------------------------------------------------------------------
         // ----------------------- production fg -------------------------------
           Route::post('prod-qty-upload-user',[OrderPlanningController::class,'prodQtyUploadAdmin']);
          // -------------------------------------------------------------------
           // ----------------------- rfq mis sales -------------------------------
           Route::post('sales_mis_list',[OrderManagementController::class,'salesMisList']);
          // -------------------------------------------------------------------

         //------------  sap customer ledger ---------------------------------
          Route::get('customer_list_ledger/{id}',[LedgerController::class,'customerListLedger']);
         // ------------------------------------------------------------------
    //  });

});

// Admin Routes....

Route::post('admin-login', [AdminAuthController::class,'Adminlogin']);
Route::post('admin-register', [AdminAuthController::class,'Adminregister']);

Route::post('user-bulk-upload',[BulkController::class,'storeUser']);
Route::post('bulk-product-upload',[BulkController::class,'storeProduct']);
Route::post('admin-forgetpass-mail',[AdminPasswordController::class,'adminForgetpassMail']);
Route::post('admin-update-pass',[AdminPasswordController::class,'adminUpdatePass']);

Route::get('admin-logs',[AdminPasswordController::class,'adminLogs']);//admin logs
Route::get('admin-logs-list',[AdminLogController::class,'adminLogsList']);//admin logs list
Route::get('admin-logs-del/{id}',[AdminLogController::class,'adminLogsDel']);//admin logs list

Route::get('get_order_po_excel/{id}',[OrderManagementController::class,'getOrderByPoExcel']);

Route::group(['prefix' => 'admin','middleware' => ['assign.guard:admins','jwtmiddleware']],function (){

   Route::get('demo', [AdminController::class,'demo']);
   Route::post('admin-logout', [AdminController::class,'logout']);
	Route::post('user_status_update', [AdminController::class,'userStatusUpdate']);
   Route::get('get_all_plants',[SapSummaryController::class,'getAllPlants']);




		// Category Routes....

      Route::post('store-category',[CategoryController::class,'storeCategory']);

      Route::get('category-list',[CategoryController::class,'categoryList']);

      Route::get('edit-category/{catId}',[CategoryController::class,'editCategory']);

      Route::post('update-category',[CategoryController::class,'updateCategory']);

      Route::get('inactive-category/{catId}',[CategoryController::class,'inactiveCategory']);

      Route::get('active-category/{catId}',[CategoryController::class,'activeCategory']);

      Route::post('category-list-my',[CategoryController::class,'categoryListMy']);



		// Sub Category Routes ....

      Route::post('store-sub-category',[SubCategoryController::class,'storeSubCategory']);

      Route::get('sub-category-list',[SubCategoryController::class,'subCategoryList']);

      Route::get('edit-sub-category/{subCatId}',[SubCategoryController::class,'editSubCategory']);


      Route::post('update-sub-category',[SubCategoryController::class,'updateSubCategory']);

      Route::get('inactive-sub-category/{subCatId}',[SubCategoryController::class,'inactiveSubCategory']);

      Route::get('active-sub-category/{subCatId}',[SubCategoryController::class,'activeSubCategory']);

      Route::get('delete-sub-category/{subCatId}',[SubCategoryController::class,'deleteSubCategory']);

      Route::post('sub-category-list-my',[SubCategoryController::class,'subCategoryListMy']);


		// Product Routes ....

      Route::post('store-product',[ProductController::class,'storeProduct']);

      Route::get('edit-product/{proId}',[ProductController::class,'editProduct']);

      Route::post('update-product',[ProductController::class,'updateProduct']);

      Route::get('delete-product/{proId}',[ProductController::class,'deleteProduct']);

      Route::post('product-list',[ProductController::class,'productList']);

      Route::get('inactive-product/{proId}',[ProductController::class,'inactiveProduct']);

      Route::get('active-product/{proId}',[ProductController::class,'activeProduct']);

      Route::get('product-list-my',[ProductController::class,'productListMy']);

		// Product Routes ....

      Route::post('store-product',[ProductController::class,'storeProduct']);

      Route::get('edit-product/{proId}',[ProductController::class,'editProduct']);

      Route::post('update-product/{proId}',[ProductController::class,'updateProduct']);

      Route::get('delete-product/{proId}',[ProductController::class,'deleteProduct']);

      Route::get('product-list',[ProductController::class,'productList']);

      Route::get('inactive-product/{proId}',[ProductController::class,'inactiveProduct']);

      Route::get('active-product/{proId}',[ProductController::class,'activeProduct']);

      Route::get('product-list-my',[ProductController::class,'productListMy']);

      // Freights Routes....

      Route::post('store-freight',[FreightController::class,'storeFreights']);

      Route::get('get-freights',[FreightController::class,'getFreights']);

      Route::get('edit-freight/{id}',[FreightController::class,'editFreights']);

      Route::post('update-freight',[FreightController::class,'updateFreights']);

      Route::get('active-freight/{id}',[FreightController::class,'activeFreights']);

      Route::get('inactive-freight/{id}',[FreightController::class,'inactiveFreights']);

      Route::get('delete-freight/{id}',[FreightController::class,'deleteFreights']);

      Route::post('import-excel-freight-charges',[FreightController::class,'importExcelFreightChargesAdmin']);

		// Price Management Routes....

      Route::get('get-product-list',[PriceManagementController::class,'getProductList'])->name('get_store_pro_price');

      Route::get('get-category-list/{proId}',[PriceManagementController::class,'getCategoryList']);

      Route::get('get-sub-category-list-admin/{cateId}/{ptype}',[PriceManagementController::class,'getSubCategoryListAdmin']);

      Route::get('get-subcategory-size-byid/{subcateId}',[PriceManagementController::class,'getSubCategorySizeByid']);

      Route::post('store-price',[PriceManagementController::class,'storePrice']);

      Route::post('store-threshold-price',[PriceManagementController::class,'storeThreshold']);

      Route::post('store-pro-price',[PriceManagementController::class,'manageProPrice']);

      Route::post('get-threshold-price-admin',[PriceManagementController::class,'getThresholdPriceAdmin']);

      Route::get('delete-threshold-price-admin/{ThresholdId}',[PriceManagementController::class,'deleteThresholdProPrice']);

      // Route::post('export-excel-threshold-price-admin',[PriceManagementController::class,'exportExcelThresholdPriceAdmin']);


      Route::post('get-store-pro-price',[PriceManagementController::class,'getProPrice']);

      Route::get('get-threshold-price-details-admin/{ThresholdId}',[PriceManagementController::class,'getThresholdPriceDetailsAdmin']);

      Route::post('update-threshold-price-admin',[PriceManagementController::class,'updateThresholdProPrice']);

      Route::post('get-price',[PriceManagementController::class,'getPrice']);

      Route::post('get-product-basic-price',[PriceManagementController::class,'getProductBasicPrice']);




		// Complain Routs...

      Route::post('store-complain-category',[ComplainController::class,'storeComplainCategory']);

      Route::post('store-complain-sub-category',[ComplainController::class,'storeComplainSubCategory']);

      Route::post('store-complain-sub-category2',[ComplainController::class,'storeComplainSubCategory2']);

      Route::post('store-complain-sub-category3',[ComplainController::class,'storeComplainSubCategory3']);




		// Product qut upload exl...
      Route::post('prod-qty-upload-admin',[OrderPlanningController::class,'prodQtyUploadAdmin']);

		// PO Details Routes...

      Route::post('get-po-list-admin',[PoDetailsController::class,'getPoDetails'])->name('download_po_details_pdf');
      Route::get('download-po-details-pdf/{id}',[PoDetailsController::class,'downloadPoPdf'])->name('download_po_details_pdf');
      Route::get('get-po-details-admin/{id}',[PoDetailsController::class,'getPoDetailsId'])->name('download_po_details_pdf');



     // --------------  admin dashboard -----------------------------------

      Route::get('admin-dashboard',[AdminDashboardController::class,'adminDashboard'])->name('admin_dashboard');
      // --------------  Admin User Magement ----------------------------------//
      Route::post('admin-cam-list',[AdminUserManageController::class,'camListAdmin'])->name('admin_cam_list');
      Route::post('add-cam-admin',[AdminUserManageController::class,'addCamAdminb'])->name('add_cam_admin');
      Route::get('block-user-admin/{user_id}',[AdminUserManageController::class,'blockUserAdmin'])->name('block_user_admin');
      Route::get('unblock-user-admin/{user_id}',[AdminUserManageController::class,'unBlockUserAdmin'])->name('unblock_user_admin');
      Route::get('admin-customer-list',[AdminUserManageController::class,'customerListAdmin'])->name('admin_castomer_list');
      Route::post('admin-customer-details',[AdminUserManageController::class,'customerDetailsAdmin'])->name('admin_castomer_details');
      // --------------  End of Admin User Magement ----------------------------------//

      // ---------------------- Order management ---------------------------------------
      Route::post('get_all_orders_admin',[OrderManagementController::class,'getAllOrdersAdmin']);
      Route::get('get_order_po_admin/{id}',[OrderManagementController::class,'getOrderByPo']);

      // ------------------------- material code add ---------------------------------------
      
       Route::post('store_mat_code',[OrderManagementController::class,'storeMatCode']);
      // -----------------------------------------------------------------------------------
   // ------------ rfq management --------------------------------------------
      Route::post('get_all_rfq_admin',[RfqManagementController::class,'getRfqAdmin']);
      Route::get('get_quote_sche_by_id/{id}',[RfqManagementController::class,'quoteScheById']);
   // -----------------------------------------------------------------------

      


});

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
