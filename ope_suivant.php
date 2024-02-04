<?php


function ajouter_vue():void{
    $fichier_ = __DIR__.DIRECTORY_SEPARATOR.'compter.txt';
   
    if(file_exists($fichier_)){
          
        $nombre_compteur = (int)file_get_contents($fichier_);
        if($nombre_compteur < 8){
            $nombre_compteur++;
            file_put_contents($fichier_,$nombre_compteur);
        }else{
            file_put_contents($fichier_,'0');
        }
        
    }else{
        file_put_contents($fichier_,'0');
    }

}


if($_GET['idd']){
    ajouter_vue();
}




$compteur = file_get_contents('compter.txt');

?>