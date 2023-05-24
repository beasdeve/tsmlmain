<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class ComplaintMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public $request;
    public function __construct($request)
    {
        $this->request = $request;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $data['data'] =  $this->request;
         
        if ($data['data']['user_type'] == 'Kam') {
              
           return $this->view('mail.complaint_mail_kam', $data)
                    ->to(@$data['data']['email'])
                    ->cc(@$data['data']['cc'])
                    ->subject(env('APP_NAME').'Complaint Mail')
                    ->from(env('mail_username'));
        }else{

            return $this->view('mail.complaint_mail_user', $data)
                    ->to(@$data['data']['email'])
                    ->cc(@$data['data']['cc'])
                    ->subject(env('APP_NAME').'Complaint Mail')
                    ->from(env('mail_username'));
        }
        
    }
}
