<?
if( class_exists('V8JS', false) )
{
	$GLOBALS["__chromium_allowedcall_push"] = [];
	
	function chromium_allowedcall_push($func){
		if(is_callable($func)){
			array_push($GLOBALS["__chromium_allowedcall_push"], $func);
			chromium_allowedcall($GLOBALS["__chromium_allowedcall_push"]);
		}
	}
	chromium_allowedcall_push("V8JS::CallVirtual");
}
?>