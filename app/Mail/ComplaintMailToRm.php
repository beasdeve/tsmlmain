<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class ComplaintMailToRm extends Mailable
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
         
        // dd(env('MAIL_FROM_ADDRESS'),$data['data']['email']);
        
        return $this->view('mail.complaint_mail_to_rm', $data)
                    ->to(@$data['data']['email']) 
                    ->subject(env('APP_NAME').'Complaint Mail')
                    ->from(env('mail_username'));
    }
}
