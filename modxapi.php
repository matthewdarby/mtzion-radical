<?php
/**
 * MODx API Library 
 * Use this api to connect to the MODx Content Managment System
 * 
 * @author: Raymond Irving, 2006
 *
 */
 
 
$_api_path = dirname(__FILE__).'/';

// include config file
include_once($_api_path.'manager/includes/config.inc.php');

// include modx parser file
include_once($base_path.'manager/includes/document.parser.class.inc.php');

class MODxAPI extends DocumentParser {

	function MODxAPI() {
	
		$this->startSession();
		parent::DocumentParser();
		
		// set some parser options
		$this->minParserPasses = 1;		// min number of parser recursive loops or passes
		$this->maxParserPasses = 10;	// max number of parser recursive loops or passes
		$this->dumpSQL = false;
		$this->dumpSnippets = false;
		
		// set start time
		$this->tstart = $this->getMicroTime();	// feed the parser the execution start time	

	}

	// execute parser and return results - To be finalized
	function executeDocument($docid = 0) {
		ob_start();
			ob_start();
				$tmp = $_REQUEST['id']; // save old id
				$_REQUEST['id'] = $docid;
				$this->executeParser();
		$html = ob_get_contents();
		ob_end_clean();
		$_REQUEST['id'] = $tmp; // restore old id
		return $html;		
	}
	
	// connect to MODx database - use $modx->db->query();
	function connect() {
		 $this->db->connect();
	}
	
	function startSession() {
		startCMSSession();
	}		
}

?>