<?php

namespace App\ServicesMy;

use Mail;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class MailService
{
    
    public function dotestMail($mailSub=null,$mailTemplateBlade=null,$sentTo=null,$mailData=null,$emailcc=null)
    {
        \Log::info('Mail function called');

             $mail = new PHPMailer(true);     // Passing `true` enables exceptions
         
            try {

                // dd($sentTo);
             
                // Email server settings
                // $mail->SMTPDebug = 0;
                // $mail->isSMTP(); 
                // $mail->Host = 'smtp.googlemail.com';             //  smtp host
                // $mail->SMTPAuth = true;
                // $mail->Username = 'ramkrishnadharmachakra@gmail.com';   //  sender 
                // $mail->Password = 'vhhadnybbdwlnanl';       // sender password
                // $mail->SMTPSecure = 'tls';                  // encryption - ssl/tls
                // $mail->Port = 587;                          // port - 587/465


                $mail->SMTPDebug = 1;
                $mail->isSMTP(); 
                $mail->Host = 'mail.beas.co.in';           //  smtp host
                $mail->SMTPAuth = true;
                $mail->Username = 'developer@beas.co.in';   //  sender 
                $mail->Password = 'A$dfg@12345';       // sender password
                $mail->SMTPSecure = 'STRTTLS';                  // encryption - ssl/tls
                $mail->Port = 587; 
              

                $mail->setFrom('developer@beas.co.in', 'TSML Team');
                $mail->addAddress($sentTo);
                
                if (!empty($emailcc)) 
                {
                    foreach ($emailcc as $key => $value) 
                    {                    
                        $mail->addCC($value);
                    }
                } 

                $mail->isHTML(true);                

                $mail->Subject = $mailSub;
                $mail->Body    = view($mailTemplateBlade, ['data' => $mailData])->render(); 

                if( !$mail->send() ) {
                    \Log::info(print_r($mail->ErrorInfo, true));
                    return back()->with("failed", "Email not sent.")->withErrors($mail->ErrorInfo);
                }
                
                else {
                    $data['sentTo'] = $sentTo;
                    $data['mailSub'] = $mailSub;
                    \Log::info(print_r($data, true));
                    return back()->with("success", "Email has been sent.");
                }

            } catch (Exception $e) {
                 return back()->with('error','Message could not be sent.');
            }
    }




    public function addattachmentmail($mailSub=null,$mailTemplateBlade=null,$sentTo=null,$mailData=null,$emailcc=null,$attachment=null)
    {

             $mail = new PHPMailer(true);     // Passing `true` enables exceptions
         
            try {

                // dd($emailcc);
             
                // Email server settings
                // $mail->SMTPDebug = 0;
                $mail->SMTPDebug = 1;
                $mail->isSMTP(); 
                $mail->Host = 'mail.beas.co.in';           //  smtp host
                $mail->SMTPAuth = true;
                $mail->Username = 'developer@beas.co.in';   //  sender 
                $mail->Password = 'A#dfg@1@';       // sender password
                $mail->SMTPSecure = 'STRTTLS';                  // encryption - ssl/tls
                $mail->Port = 587;                         // port - 587/465

                $mail->setFrom('developer@beas.co.in', 'TSML Team');
                $mail->addAddress($sentTo);
                
                if (!empty($emailcc)) 
                {
                    foreach ($emailcc as $key => $value) 
                    {                    
                        $mail->addCC($value);
                    }
                } 

                if(!empty($attachment))
                {
                    $attachment = 'C:\Users\Dev15\Downloads/'.$attachment;
                    $mail->AddAttachment($attachment);
                }

                $mail->isHTML(true);                

                $mail->Subject = $mailSub;
                $mail->Body    = view($mailTemplateBlade, ['data' => $mailData])->render(); 

                if( !$mail->send() ) {
                    \Log::info(print_r($mail->ErrorInfo, true));
                    return back()->with("failed", "Email not sent.")->withErrors($mail->ErrorInfo);
                }
                
                else {
                    $data['sentTo'] = $sentTo;
                    $data['mailSub'] = $mailSub;
                    \Log::info(print_r($data, true));
                    return back()->with("success", "Email has been sent.");
                }

            } catch (Exception $e) {
                 return back()->with('error','Message could not be sent.');
            }
    }

}
