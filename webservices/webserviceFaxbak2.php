<?php 

class ValidationInfo{
	// data structure for Authentication complexeType 
     public $username;
     public $password;
/*
     public Authentication($username, $password)
        {
            $this->username = $username;
            $this->password = $password;
        }
*/
 }

class webserviceFax {
	
	protected $username = "lionel";
	protected $password = "123456";
	protected $authenticated = false;
/*
	public function login($username, $password) {
		if($username!=$this->username || $password!=$this->password){ 
			 throw new SOAPFault("Nom: $username ou mots de pass: $password incorrect.", 401); 
		}else{
			$this->authenticated = true;
		}
	}
*/
	public function getValidationInfo(){
		$authentication = new ValidationInfo();
		$authentication->username = "lionel";
		$authentication->password = "123456";
		return $authentication;
	}                 
	protected function checkAuth(){
        if($this->authentication->username !=$this->username || $this->authentication->password!=$this->password){ 
			 throw new SOAPFault("Nom: $username ou mots de pass: $password incorrect.", 401); 
		}else{
			return true;
		}
    }

    public function sendFax($number, $file){
    	//$this->checkAuth();
		return "fast $number $file";
		if(!empty($number) && !empty($file)){
			//$channel="SIP/0123456781";
			$exten = "3345";
			$context = "sipint";
			$priority = 1;

			if(!empty($number) && !empty($file)){
				$numerodefax = "Server";
				//$channel = "SIP/sipcomdevtrunk/".$number;
				$channel = "SIP/sipcomtrunk/".$number;
				$uploaddir = '/var/www/sipcom/data/fax/faxsending/';
				$data = $uploaddir.$file;

				$path_parts = pathinfo($data);
				$extension = $path_parts['extension'];
				$filename = $path_parts['filename'];

				if ($extension == 'pdf'){
					$outFile = $uploaddir.$filename.".tiff";
					Fax::pdf2Tiff($data, $outFile);
					$data = $outFile;
				}
				if (file_exists($data)){

					if(Fax::sendFaxOutgoing($channel, $data)){
						return "Réussir d'envoyer ".$file." à ".$channel."!\n";
						//Fax::faxSent_Insert($numerodefax, $number, $file);
					}else{
						return "Echec fd'envoyer ".$file." à ".$channel."!\n";
					}
				}else{
					return "$file n'exist pas\n";
				}
			}

		}else{
			return "Mouvais parametres";
		}
	}

} //end class 


ini_set("soap.wsdl_cache_enabled", "0");
$classmap = array('Authentication' => 'ValidationInfo');
$server = new SoapServer("webserviceFax.wsdl", array('classmap' => $classmap)); 
//$server = new SoapServer("webserviceFax.wsdl"); 
$server->setClass("webserviceFax"); 
$server->handle();


?>