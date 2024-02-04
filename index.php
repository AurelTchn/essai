<?php
    require_once 'header.php';
    require_once 'connect.php';
    require_once 'ope_suivant.php';
    require_once 'operation.php';
    require_once 'functions.php';
    
    
?>



<?php


if(random_int(0,3) === 1 AND !isset($_GET['champ'])) {
    shuffle($nouvelle_requestion);
}




/* echo $compteur; */
?>
<!-- Mélangeons la liste-->

<?php

/* echo '<pre>';
print_r($question);
echo '</pre>';
 */



/* if(isset($_GET['id'])){
    if((int)$_GET['id'] !== 0 AND (int)$_GET['id'] !== 1 AND (int)$_GET['id'] !== 2 AND (int)$_GET['id'] !== 3){
        shuffle($nouvelle_requestion); 
        echo $_GET['id'];
    }    
}else{
    shuffle($nouvelle_requestion);
} */

/* if($_GET['REQUEST_URI']=='/index.php'){
    shuffle($nouvelle_requestion);
} */
?>



<center width="50%">
        <div class="alert alert-primary mt-5 "  >
            <strong><h2> <?= $question[$compteur][0] ?> </h2></strong>
        </div>
</center>

<?php $compteur_nouv = $compteur + 1 ?>
<?php

$requete = $connexion->prepare("
SELECT reponse.quest_res
FROM question1,question2,question3,reponse
WHERE question1.id_quest = question2.id_quest
AND question1.id_quest = question3.id_quest
AND question1.id_quest = reponse.id_quest
AND question1.id_quest=$compteur_nouv; ");
$requete->execute();
$result = $requete->fetchall();

/* echo '<pre>';
echo $result[0][0] ;
echo '</pre>';

echo $_GET['champ']; */

if($result[0][0] == $_GET['champ']){
    $resultat_afficher = 'success';

}else{
    $resultat_afficher = 'danger';
}


if(isset($_GET['champ'])){
    $bonne_response = 'success';
}else{
    $bonne_response = 'outline-primary';
}
?>


<form action="/index.php" method='GET'>
    <div class="row mt-5">

        <div class="col-6" >
            
                <button type="button" class="btn btn-<?php if($_GET['champ']==$nouvelle_requestion[0]):
                     echo $resultat_afficher;elseif ($result[0][0]==$nouvelle_requestion[0]):echo $bonne_response;else: echo 'outline-primary'; endif?> 
                
                     pb-2 btn-lg" style="width:100%;" >
                <label><b><?= $nouvelle_requestion[0] ?></b>
                    <?= radio("champ","$nouvelle_requestion[0]") ?></label>  
                </button>    
        
        </div>

        <div class="col-6">
            
                <button type="button" class="btn btn-<?php if($_GET['champ']==$nouvelle_requestion[1]): 
                    echo $resultat_afficher;elseif ($result[0][0]==$nouvelle_requestion[1]):echo $bonne_response;else: echo 'outline-primary'; endif?>
    
                    } ?>
                    pb-2 btn-lg" style="width:100%;" >
                    <label><b><?= $nouvelle_requestion[1] ?></b>    
                    <?= radio('champ',"$nouvelle_requestion[1]") ?></label>
                    
                </button>
            
        </div>

    </div>
    <div class="row mt-5">
        <div class="col-6">
            
                <button type="button" class="btn btn-<?php if($_GET['champ']==$nouvelle_requestion[2]): 
                    echo $resultat_afficher;elseif ($result[0][0]==$nouvelle_requestion[2]):echo $bonne_response;else: echo 'outline-primary'; endif?>
                    
                    pb-2 btn-lg" style="width:100%;" >
                    <label><b><?= $nouvelle_requestion[2] ?></b>
                    <?= radio('champ',"$nouvelle_requestion[2]") ?></label>
                    
                </button>
            
        </div>
        <div class="col-6">
            
                <button type="button" class="btn btn-<?php if($_GET['champ']==$nouvelle_requestion[3]): 
                    echo $resultat_afficher;elseif ($result[0][0]==$nouvelle_requestion[3]):echo $bonne_response; else: echo 'outline-primary';endif?>
            
                    } ?> 
                    pb-2 btn-lg" style="width:100%;" >
                    <label><b><?= $nouvelle_requestion[3] ?></b>
                    <?= radio('champ',"$nouvelle_requestion[3]") ?></label>
                    
                </button>
            
        </div>
    </div>
    <button type='submit' name="tester" class="btn btn-primary pb-2 btn-lg mt-5" style="margin-left:90%; " >
        <b>Tester</b>
    </button>
</form>

<?php

/* if(isset($_GET['tester'])){
    echo 'Oui'.'</br>';
}

var_dump($_GET['champ']);
if(isset($_GET['champ'])){
    echo 'Je suis là';
} */





/* echo '<pre>';
print_r($nouvelle_requestion);
echo '</pre>';
 */
 



/* Example de requette dans la SQL */

/*
INSERT INTO question(quest)
VALUES ('Quelle est la capitale de Mauritanie ?');

INSERT INTO ques_fausse(quest1,quest2,quest3)
VALUES ('Nakchott','Noakchot','Nouakchot');

INSERT INTO reponse(quest_res)
VALUES ('Nouakchott');
*/
?>


<?php require_once 'footer.php'; ?>