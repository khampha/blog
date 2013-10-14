<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


Class RegisterForm extends CFormModel{
    
    public $username;
    public $password;
    public $verifyPassword;
    public $email;
    public $term;
    
    public function rules(){
        return array(
            array('username, password, email, verifyPassword, term','required'),
            array('password, verifyPassword','length','min'=>6),
           
            array('password','compare','compareAttribute'=>'verifyPassword'),
            array('term','boolean'),

            
        );
        
    }
    
    public function attributeLabels(){
        return array(
            "username"=>"User Name",
            "password"=>"Password",
            "verifyPassword" =>"Verify Password",
            "email"=>"Email",
            "term"=>"Agree with the Term condition",
        );
    }
    
 
}
?>
