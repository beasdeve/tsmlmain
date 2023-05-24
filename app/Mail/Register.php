<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class Register extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public $data;
    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        // return $this->view('view.name');
        $data['data'] =  $this->data;
        // dump($this->request);
        // dd(env('APP_NAME'));
        $subject=env('APP_NAME')." - Registration Successfully";
        
        return $this->view('mail.register', $data)
                     ->to($this->data['email'])
                     ->subject($subject)
                     ->from(env('mail_username'),env('APP_NAME'));
    }
}
