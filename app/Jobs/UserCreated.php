<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use App\Models\User;

class UserCreated implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    private $data;

    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        print_r($this->data);
        User::create([
           'id' => $this->data['id'],
            'name'=> $this->data['namee'],
            'email'=> $this->data['email'],
            'phone'=> $this->data['phone'],
            'password'=> $this->data['password'],
            'gstin'=> $this->data['gstin'],
            'org_pan'=> $this->data['org_pan'],
            'org_name'=> $this->data['org_name'],
            'org_address'=> $this->data['org_address'],
            'pref_product'=> $this->data['pref_product'],
            'pref_product_size'=> $this->data['pref_product_size'],
            'user_type'=> $this->data['user_type'],
            'company_gst'=> $this->data['company_gst'],
            'company_linked_address'=> $this->data['company_linked_address'],
            'company_pan'=> $this->data['company_pan'],
            'company_name'=> $this->data['company_name'],
            'business_nature'=> $this->data['business_nature'],
            'is_tcs_tds_applicable'=> $this->data['is_tcs_tds_applicable'],
            'first_name'=> $this->data['first_name'],
            'last_name'=> $this->data['last_name'],
            'addressone'=> $this->data['addressone'],
            'addresstwo'=> $this->data['addresstwo'],
            'city'=> $this->data['city'],
            'state'=> $this->data['state'],
            'pincode'=> $this->data['pincode'],
            'address_type'=> $this->data['address_type'],
            'pan_dt'=> $this->data['pan_dt'],
            'gst_dt'=> $this->data['gst_dt'],
            'formD_dt'=> $this->data['formD_dt'],
            'tcs_dt'=> $this->data['tcs_dt'],
        ]);

       

    }
}
