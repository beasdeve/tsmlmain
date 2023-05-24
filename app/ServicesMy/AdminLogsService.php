<?php

namespace App\ServicesMy;
use App\Models\Models\AdminLog;

class AdminLogsService
{
    
    public function adminlogs($userId=null,$subject=null,$purpose=null)
    {
         $data['admin_id'] = $userId;
         $data['subject'] = $subject;
         $data['purpose'] = $purpose;
         $data['status'] = 1;
  
         $admin = AdminLog::create($data);

         if($admin)
         {
         	 return true;
         }else{
         	 return false;
         }
        // dd('ok');
    }



}
