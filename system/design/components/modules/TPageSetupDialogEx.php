<?
class TPageSetupDialogEx extends __TNoVisual {
	public function __initComponentInfo()
	{
		parent::__initComponentInfo();
		
		$dlg = new TPageSetupDialog($this->parent);
		
		$tmp = $this->name;
        $this->name = '';
        $dlg->name = $tmp;
        eventEngine::updateIndex($dlg);
	}
}