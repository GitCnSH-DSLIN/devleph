<?php
if( rtl('LoadDllCLasses.dll') )
{
	class TFlowPanel extends TControl{}

$form = new TForm();
$c = new TFlowPanel();
$c->parent = $form;
$form->show();
}

if( rtl('TestPack240.bpl') )
{
	class TTouchKeyboard extends TControl{}
$c = new TTouchKeyboard();
$c->h = 20 * 5;
$c->parent = $form;
$form->show();
}