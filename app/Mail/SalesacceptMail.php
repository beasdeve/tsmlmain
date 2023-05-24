<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class SalesacceptMail extends Mailable
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
       

        return $this->view('mail.salesacceptmail', $data)
                    ->to(@$data['data']['email'])
                    ->cc(@$data['data']['cc'])
                    ->subject('Your RFQ has been accepted by Sales    '.@$data['data']['rfq_no'])
                    ->from(env('mail_username'));
    }
}
