<?


class myEvents {
    
    const BUTTON_HEIGHT = 30;
    const BUTTON_WIDTH  = 200;
    
    public $buttons;
    public $classes;
    public $events;
    public $last_class;
    public $last_self;
    
    public $selObj;
    
    static function getEventsInfo($class){
        
        global $componentEvents;
        if (isset($componentEvents[$class]))
            return $componentEvents[$class];
        else
            return [];
    }
    
    static function phpEditorShow($self){
        
        self::editorShow();
    }
    
    static function findText(){
        
        $text = c('fmPHPEditor->memo')->text;
        $find = c('fmPHPEditor->f_text')->text;
        $reg  = val('fmPHPEditor->c_register');
        
        $GLOBALS['__find'] = [];
        
        if (!$text || !$find) return;
        
        $index = 0;
        while (true){
            
            if ($reg)
                $index = strpos($text, $find, $index+1);
            else
                $index = stripos($text, $find, $index+1);
                
            if ($index===false) break;    
            
            $GLOBALS['__find'][] = $index;
        }  
    }
    
    static function findTextItem($index){
        
        if (!$GLOBALS['__find']) self::findText();
        
        return $GLOBALS['__find'][$index];
    }
    
    static function editorShow($selLine=false, $caretY=false, $err = false, $only_show = false){
        
        $eventList = c('fmPropsAndEvents->eventList');
        $PHPEditor = c('fmPHPEditor');
        
        if ($eventList->itemIndex>-1){
            
            global $fmEdit, $myEvents, $lastStringSelStart, $dynamicFuncs, $_FORMS, $formSelected;
            $dynamicFuncs = false;
            
            complete_Props::$forms = false;
            
            $event  = $eventList->events[$eventList->itemIndex];
            //СЮДА ДОБАВИТЬ КОД НА СЛУЧАЙ ЕСЛИ СЕЙЧАС ОТКРЫТА ВКЛАДКА НЕ С ФОРМОЙ (НУ ИЛИ ЧТО-ТО ТАКОЕ)
			$tabForms = c("fmMain->tabForms");
			$php_memo = c('fmPHPEditor->memo');
            $last_text = c('fmPHPEditor')->text;
			if(fileExt($tabForms->tabs->strings[ $tabForms->tabIndex ]) !== 'dfm')
			{
				$PHPEditor->borderStyle = bsSizeable;
            }
			//НЦ
            
            if (!$only_show){
                eventEngine::setForm();
                $name = $myEvents->selObj instanceof TForm ? '--fmedit' : $myEvents->selObj->name;
                
                $php_memo->text = eventEngine::getEvent($name, $event);
                $ltight = str_replace('{', '', str_ireplace('event ', '', CApi::getStringEventInfo($event, $myEvents->selObj->className) ) );
                $x_name = $myEvents->selObj->name == 'fmEdit' ? $_FORMS[$formSelected] : $myEvents->selObj->name;
                c('fmPHPEditor')->text = t('php_script_editor').' -> '.$x_name.'::'.$ltight;
                
                if ($caretY)
                    $php_memo->caretY   = $caretY;
                
                if ($selLine)
				{       
                    $lines = $php_memo->items->lines;
                    $len = 0;
                    foreach ($lines as $i=>$line){
                        
                        if ($selLine==$i+1){
                            
                            $selStart = $len;
                            $selEnd   = $len + strlen($line);
                            break;
                        }
                        
                        $len += strlen($line) + strlen(_BR_);
                    }
                    
                    $php_memo->selStart = $selStart;
                    $php_memo->selEnd   = $selEnd;
                }
                
                if ($err)
				{    
                    c('fmFindErrors->l_obj', 1)->text = $err['name'];
                    c('fmFindErrors->l_event', 1)->text = t('Event - "%s"', t(strtolower($err['event'])));
                    c('fmFindErrors->memofind', 1)->text = $php_memo->items->getLine((int)$err['line']-1);
                    c('fmFindErrors->err_msg', 1)->text = t($err['msg']);
                    c('fmFindErrors->l_line', 1)->text = t('Line %s', $err['line']);
                    
                    $action = myActions::getAction(action_Simple::getLine());
                    
                    if ($action){
                            c('fmFindErrors->info',1)->caption = $action['TEXT'];
                            c('fmFindErrors->action_image',1)->loadPicture($action['ICON']);
                            c('fmFindErrors->desc',1)->caption = myActions::getInline($action);
                        } else {
                            c('fmFindErrors->info',1)->caption = '';
                            c('fmFindErrors->desc',1)->caption = '';
                            c('fmFindErrors->action_image',1)->picture->clear();
                    }
                    
                    $GLOBALS['APPLICATION']->toFront();
                    $res = c('fmFindErrors')->showModal();
                    
                    if ($res==mrOk){
                        return;
                    } elseif ($res==mrAbort){
						MyUtils::stop();
                    }
                    
                    return;
                }
            }
            
            $PHPEditor->toFront();
            
            c('fmPHPEditor->tlCancel')->enabled = true;
            c('fmPHPEditor')->event = $event;
            
            if ($PHPEditor->showModal() == mrOk){
                myComplete::saveCode();
                $name = $myEvents->selObj instanceof TForm ? '--fmedit' : $myEvents->selObj->name;
                $tx = c("fmPHPEditor->memo");
				eventEngine::setEvent($name, $event, $tx->text);
				$lastStringSelStart[$name][$event]['x'] =  $tx->caretX;
				$lastStringSelStart[$name][$event]['y'] =  $tx->caretY;
            }
            
            global $showComplete, $showHint;
            $showHint = $showComplete = false;
        } 
    }
    static function ShowEditorInTab($Caret, $tabIndex)
	{
		$PHPEditor = c("fmPHPEditor");
		$php_memo = c("fmPHPEditor->memo");
		
		if($Caret)
			list($php_memo->CaretX, $php_memo->CaretY, $php_memo->TopLine, $selectedLine) = $Caret;
		if ($selectedLine)
		{       
			$lines = $php_memo->items->lines;
			$len = 0;
			foreach ($lines as $i=>$line){
				
				if ($selectedLine==$i+1){
					
					$selStart = $len;
					$selEnd   = $len + strlen($line);
					break;
				}
				$len += strlen($line) + strlen(_BR_);
			}
			$php_memo->selStart = $selStart;
			$php_memo->selEnd   = $selEnd;
		}
	}
    function deleteEvent(){
        global $myEvents;
        $eventList = c('fmPropsAndEvents->eventList');
        $itemIndex = $eventList->itemIndex;
        if ($itemIndex>-1){
            
            global $fmEdit;
            
            //$events = TEvents::searchEvent($myEvents->selObj,$fmEdit);
            $event = $eventList->events[$eventList->itemIndex];
            
            $name = $myEvents->selObj instanceof TForm ? '--fmedit' : $myEvents->selObj->name;
            eventEngine::delEvent($name, $event);
            
            //$events->clearEvent($event);
            $myEvents->genList();
			if( c('fmPropsAndEvents->eventList')->Items->Count > 0 && $itemIndex > 0 )
				c('fmPropsAndEvents->eventList')->ItemIndex = $itemIndex-1;
			
			treeBwr_add();
        }
    }
    
    function changeEvent(){
        
        global $doChangeEvent, $myEvents;
        $doChangeEvent = true;
        
        $edt_Events = c('edt_EventTypes->popupMenu');
        
        $x = cursor_pos_x();
        $y = cursor_pos_y();
        
        $class = rtti_class($myEvents->selObj->self);
        $buttons = $myEvents->classes[$class];
        
        $eventList = c('fmPropsAndEvents->eventList');
		
        $event  = $eventList->events[$eventList->itemIndex];
        
        if ($eventList->events[0]){
            foreach ($buttons as $btn){
            
            $event = $myEvents->getEvent($btn);
            if (in_array(strtolower($event['EVENT']), $eventList->events))
                $btn->visible = false;
            }
        }
        
        $edt_Events->popup($x, $y);
        foreach ($buttons as $btn)
            $btn->visible = true;
			
		treeBwr_add();
    }
    
    function formKeyDown($self, $key, $shift){
        
        if ($key == VK_ESCAPE){
            c('edt_EventTypes')->close();
        }
    }
    
    public static function buttonClick($self){
        
        global $_sc, $fmEdit, $myProperties, $doChangeEvent, $myEvents;
        $obj = _c($self);
        eventEngine::setForm();
        $name = $myEvents->selObj instanceof TForm ? '--fmedit' : $myEvents->selObj->name;
        $eventL = $myEvents->getEvent($obj);
        if ( $doChangeEvent ){
            
            $eventList = c('fmPropsAndEvents->eventList');
            $event  = $eventList->events[$eventList->itemIndex];
            
            eventEngine::changeEvent($name, $event, $eventL['EVENT']);
        } else {
            
            eventEngine::setEvent($name, $eventL['EVENT'], '');
        }
        
		eventTabs_update();
		
        $myEvents->genList();
        if ($GLOBALS['show_editor']){
            c('fmMain->eventList')->items->selected = t(strtolower($eventL['EVENT']));
            self::editorShow();
        } else c('fmMain->eventList')->items->selected = t(strtolower($eventL['EVENT']));
        $GLOBALS['show_editor'] = false;
    }
    
    function createButton($eventType, $form){
        
        $btn = new TMenuItem( $form );
        $btn->caption = $eventType['CAPTION'];
		
		$pic = myImages::get24($eventType['ICON']);
		if ( $pic )
			$btn->loadPicture($pic);
		
        //$btn->event   = $eventType;
        $btn->onClick = 'myEvents::buttonClick';
        $form->addItem($btn);
        
        $line = new TMenuItem( $form );
        $line->caption = '-';
        $form->addItem($line);
        
        $this->buttons[] = $btn;
        $this->events[$btn->self] = $eventType;
        
        return $btn;
    }
    
    function getEvent(TMenuItem $btn){
        
        return $this->events[$btn->self];
    }
    
    function clearForm(){
        
        if ($this->buttons)
        foreach ($this->buttons as $btn){
            $btn->visible = false;
        }
            
        unset($this->buttons);
        $this->buttons = [];
    }
    
    function genList(){
        
        global $componentEvents, $fmEdit, $myEvents;
        $eventList = c('fmMain->eventList');
        $eventList->clear();
        
        $name = $myEvents->selObj instanceof TForm ? '--fmedit' : $myEvents->selObj->name;
		c("fmMain->editorPopup")->AutoPopup = false;
        $eventList->text = eventEngine::listEventsEx($name);
        
        eventEngine::setForm();
        $events = eventEngine::listEvents($name);
        //$myEvents->classes[rtti_class($myEvents->selObj->self)];
		
        $this->last_self = $myEvents->selObj->self;
        $eventList->events = $events;
        
        global $doChangeEvent;
        if ( $doChangeEvent )
            $eventList->itemIndex = $eventList->items->count-1;
		$v = count($events)!==count($componentEvents[rtti_class($myEvents->selObj->self)]);
			c("fmPropsAndEvents->btn_addEvent")->enabled = $v;
			c("fmPropsAndEvents->btn_changeEvent")->enabled = $v;
		c("fmMain->editorPopup")->AutoPopup = true;
    }
    
    function _generate($object){
        
        global $myEvents;
        $this->selObj = $object;
        if ($myEvents->last_self == $object->self) return;
		c("fmMain->editorPopup")->AutoPopup = false;
        $myEvents->clearForm();
        
        $class = rtti_class($object->self);
	
        global $componentEvents, $fmEdit;
        $edt_Events = c('edt_EventTypes->popupMenu');

        if (!isset($myEvents->classes[$class])){
            
            if (isset($componentEvents[$class]))
            foreach ($componentEvents[$class] as $event){
				//долбанный секрет "как это работает" - здесь!!!
                $myEvents->classes[$class][] = $this->createButton($event, $edt_Events);
            }
        } else {
            
            $myEvents->buttons =& $myEvents->classes[$class];
            
            foreach ($myEvents->buttons as $el){
                $el->show();
                //$el->toFront();
            }
        }
        
        
        c('fmMain->tabEvents')->enabled = count($myEvents->classes[$class]) > 0;
        c('fmMain->btn_addEvent')->enabled = count($myEvents->classes[$class]) > 0;
        c("fmMain->editorPopup")->AutoPopup = true;
        $myEvents->genList();
        
    }
    
    function generate($obj)
	{
        setTimeout(25, 'global $myEvents; $myEvents->_generate(_c('.$obj->self.'))');
    }
    
    function addEvent()
	{    
        global $doChangeEvent, $myEvents;
        $doChangeEvent = false;
        
        $x = cursor_pos_x();
        $y = cursor_pos_y();
		
        $buttons = $myEvents->classes[rtti_class($myEvents->selObj->self)];
        
        $eventList = c('fmPropsAndEvents->eventList');
        if ($eventList->events[0]){
			foreach ($buttons as $btn)
                $btn->visible = !in_array(strtolower($myEvents->getEvent($btn)['EVENT']), $eventList->events);       
        } else {
			foreach ($buttons as $btn)
				$btn->visible = true;
		}
        
		c('edt_EventTypes->popupMenu')->popup($x, $y);
		foreach ($buttons as $btn)
            $btn->visible = true;
		
		treeBwr_add();
    }
    
    public static function clickAddEvent($self, $show_editor = false)
	{    
        $GLOBALS['show_editor'] = $show_editor;
        $GLOBALS['myEvents']->addEvent();
    }
    
}

//c('edt_EventTypes')->onKeyDown = 'myEvents::formKeyDown';