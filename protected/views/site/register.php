<?php

/* @var $this SiteController */
/* @var $model RegisterForm */
/* @var $form CActiveForm  */

$this->pageTitle= 'Blog Registration';
$this->breadcrumbs= array(
    'Register',    
);

?>

<h1>Registration</h1>

<div class="form">

<?php 

$form=$this->beginWidget('CActiveForm',array(
    'id'=>'register-form',
    'enableClientValidation'=>true,
    'clientOptions'=>array(
        'validateOnSubmit'=>true,
    )
 ));?>

<p class="note">Fields with <span class="required">*</span> are required</p>

<div class="row">
    <?php echo $form->labelEx($model,'username'); ?>
    <?php echo $form->textField($model,'username');?>
    <?php echo $form->error($model,'username');?>
</div>

<div class="row">
    <?php echo $form->labelEx($model,'password');?>
    <?php echo $form->passwordField($model,'password');?>
    <?php echo $form->error($model,'password');?>     
</div>

<div class="row">
    <?php echo $form->labelEx($model,'verifyPassword');?>
    <?php echo $form->passwordField($model,'verifyPassword');?>
    <?php echo $form->error($model,'verifyPassword');?>
</div>

<div class="row">
    <?php echo $form->labelEx($model,'email');?>
    <?php echo $form->textField($model,'email');?>
    <?php echo $form->error($model,'email');?>
    
</div>

<div class='row rememberMe'>    
    <?php echo $form->checkBox($model,'term');?>
    <?php echo $form->labelEx($model,'term');?> 
    <?php echo $form->error($model,'term');?>
</div>

<div class="row buttons">
    <?php echo CHtml::submitButton('Register'); ?>
</div>

<?php $this->endWidget();?>

</div>