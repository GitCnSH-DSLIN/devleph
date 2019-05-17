<?php
class TSB extends TLabel{
	
	function __initComponentInfo(){
        if( $GLOBALS['APP_DESIGN_MODE'] ) return;
        $this->fMouseEnter  = event_get($this->self,'onMouseEnter');
        event_set($this->self, 'onMouseEnter', 'TSB::doMouseEnter');

        $this->fMouseLeave  = event_get($this->self,'onMouseLeave');
        event_set($this->self, 'onMouseLeave', 'TSB::doMouseLeave');
        
		 $this->fMouseUp  = event_get($this->self,'onMouseUp');
        event_set($this->self, 'onMouseUp', 'TSB::doMouseUp');
        
        $this->fMouseDown  = event_get($this->self,'onMouseDown');
        event_set($this->self, 'onMouseDown', 'TSB::doMouseDown');
		
    }
    
    public function __construct($onwer=nil,$init=true,$self=nil){
        parent::__construct($onwer, $init, $self);
        if ($init){
	  	
		if ( !$GLOBALS['APP_DESIGN_MODE'] ){ //Debug
		$this->__initComponentInfo();
	    }
		$obj = $this;$obj->i = 0;
		$obj->ColorThree = 0;
		$obj->ColorTwo = 3552822;
		$obj->ColorOne = $obj->Color = 9671571;

		$obj->ThreeFColor = clBlue;
		$obj->TwoFColor = clBlue;
		$obj->OneFColor = $obj->font->color = clWhite;
		
		$obj->transparent = false;	
		$obj->autoSize = false;
		$obj->parentFont = false;
		$obj->parentColor = false;
		}
	    
        
    }
	function set_ColorOne($v){
		$this->Color = $v;
	}
	
	function set_OneFColor($v){
		$this->font->color = $v;
	}
	
    function set_onMouseEnter($v){
	event_set($this->self, 'onMouseEnter', 'TSB::doMouseEnter');
	$this->fMouseEnter = $v;
    }
    function set_onMouseLeave($v){
	event_set($this->self, 'onMouseLeave', 'TSB::doMouseLeave');
	$this->fMouseLeave = $v;
    }
    
	function set_onMouseUp($v){
	event_set($this->self, 'onMouseUp', 'TSB::doMouseUp');
	$this->fMouseUp = $v;
    }
    
    function set_onMouseDown($v){
	event_set($this->self, 'onMouseDown', 'TSB::doMouseDown');
	$this->fMouseDown = $v;
    }

	
    static function doMouseEnter($self){
		if(c($self)->enabled){
			
		$obj = c($self);$obj->i = 0;
		$obj->font->color = $obj->TwoFColor;
        	$obj->Color = $obj->ColorTwo;
		if ( $obj->fMouseEnter ){
            call_user_func($obj->fMouseEnter, $self);
        }
		}
    }
	
    static function doMouseLeave($self){
		$obj = c($self);$obj->i = 0;
		$obj->font->color = $obj->OneFColor;
        $obj->Color = $obj->ColorOne;
		if(c($self)->enabled)
		if ( $obj->fMouseLeave ){
            call_user_func($obj->fMouseLeave, $self);
        }

    }
	
	static function doMouseDown($self){
		if(c($self)->enabled){
		$obj = c($self);$obj->i = 0;
		$obj->font->color = $obj->ThreeFColor;
		$obj->Color = $obj->ColorThree;
		if ( $obj->fMouseDown ){
            call_user_func($obj->fMouseDown, $self);
        }
		}
    }
    
    static function doMouseUp($self){
		if(c($self)->enabled){
		$obj = c($self);$obj->i = 0;
		$obj->font->color = $obj->TwoFColor;
        $obj->Color = $obj->ColorTwo;
			if ( $obj->fMouseUp ){
				call_user_func($obj->fMouseUp, $self);
			}
		}
    }
	public function __import($class, TControl $object)
	{
		$this->layout	= $object->layout;
		$this->alignment= $object->alignment;
		$this->parentFont= false;
		$this->font->assign( $object->font );
		if($class==='tflatbutton'||$class==='tmultibutton')
		{
			$this->TwoFColor = $this->ThreeFColor = $this->font->color;
		} 
	}
}
?>