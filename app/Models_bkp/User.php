<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Tymon\JWTAuth\Contracts\JWTSubject;


class User extends Authenticatable implements JWTSubject
{
    use Notifiable;

    protected $guarded = [];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    // protected $fillable = [
    //     'name', 'email', 'password','phone','gstin'
    //     ,'org_pan', 'org_name', 'org_address',
    //     'pref_product',
    //     'pref_product_size',
    //     'user_type',
    //     'company_gst',
    //     'company_linked_address',
    //     'company_pan',
    //     'company_name',
    //     'business_nature',
    //     'is_tcs_tds_applicable',
    //     'first_name',
    //     'last_name',
    //     'addressone',
    //     'addresstwo',
    //     'city',
    //     'state',
    //     'pincode',
    //     'address_type',
    //     'address_proof_file',
    //     'cancel_cheque_file',
    //     'pan_card_file',
    //     'gst_certificate',
    //     'turnover_declare',
    //     'itr_last_yr',
    //     'form_d',
    //     'registration_certificate',
    //     'tcs',
    //     'pan_dt',
    //     'gst_dt',
    //     'formD_dt',
    //     'tcs_dt'
          
    // ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
    * Get the identifier that will be stored in the subject claim of the JWT.
    *
    * @return mixed
    */
   public function getJWTIdentifier()
   {
       return $this->getKey();
   }
 
   /**
    * Return a key value array, containing any custom claims to be added to the JWT.
    *
    * @return array
    */
   public function getJWTCustomClaims()
   {
       return [];
   }
 
   public function setPasswordAttribute($password)
   {
       if ( !empty($password) ) {
           $this->attributes['password'] = bcrypt($password);
       }
   }
}
