<?
    myVars::set( DevS\cache::c('fmMain->MainImages24'), '_IMAGES24' ); 
    myVars::set( DevS\cache::c('fmMain->MainImages32'), '_IMAGES32' );
    
    /* menus */
	
    myVars::set( DevS\cache::c('fmMain->editorPopup'), 'editorPopup' );
	myVars::set( DevS\cache::c('fmMain->editorPopup'), 'editorPopup' );
    myVars::set( DevS\cache::c('fmMain->formsPopur'), 'formsPopur');
    myVars::set( DevS\cache::c('fmMain->MainMenu'), '_MENU' );
    
    myVars::set( DevS\cache::c('fmMain->formsPopur'), 'formsPopur');
    
    myVars::set( DevS\cache::c('fmPHPEditor'), 'fmPHPEditor');
    myVars::set( DevS\cache::c('fmFormList'), 'fmFormList');

    myVars::set( DevS\cache::c('fmObjectInspector->list'), 'inspectList');
    global $inspectList, $_IMAGES24;
    $inspectList->images = $_IMAGES24;
    DevS\cache::c('fmEasySelectDialog->objs_list')->images   = $_IMAGES24;
    DevS\cache::c('fmEasySelectDialog->lst_objects')->images = $_IMAGES24;
    
    $projectFile = DS_USERDIR . 'Project/Project.msppr';

    if (file_exists(DS_USERDIR . 'last.lst')){
        $lastFiles = unserialize(file_get_contents(DS_USERDIR . 'last.lst'));
    } else
        $lastFiles = array(DS_USERDIR . 'Project/Project.msppr');
    
    
    if (! file_exists($projectFile) ){
        if (file_exists(dirname($projectFile).'/'.basenameNoExt($projectFile).'.inf')){
            unlink(dirname($projectFile).'/'.basenameNoExt($projectFile).'.inf');
        }
        myUtils::createForm('Form1');
    }
        
    myVars::set(0, '_designSel');
    if(isset($_FORMS)) myVars::set($_FORMS, '_FORMS');
    myVars::set($projectFile, 'projectFile');
    myVars::set(0, 'formSelected');
    
        
    myProject::initLastFiles();
    myMasters::generate();
    
    myVars::set($lastFiles, 'lastFiles');