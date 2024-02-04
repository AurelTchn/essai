<?php 


    $question = [];
    $mot = [];
    $requete = $connexion->prepare("
    SELECT question.quest, question1.quest1, question2.quest2, question3.quest3,reponse.quest_res
    FROM question,question1,question2,question3,reponse
    WHERE question.id_quest=question1.id_quest
    AND question.id_quest=question2.id_quest
    AND question.id_quest=question3.id_quest
    AND question.id_quest=reponse.id_quest;");
    $requete->execute();
    $resultat = $requete->fetchall();


    /*
    echo '<pre>';
    print_r($resultat);
    echo '</pre>';
    */
    foreach($resultat as $k=>$element){
        foreach($element as $j=>$quest){
            if($j === 0 or $j === 1 or $j === 2 or $j === 3 or $j === 4 ){
                $mot[] = $quest;
            }
        }
        $question[] = $mot;
        $mot = [];
    }

    /* shuffle($question); */

    $nouvelle_requestion = [
        $question[$compteur][1],
        $question[$compteur][2],
        $question[$compteur][3],
        $question[$compteur][4]
    ];

/* echo count($question); */

/* ------------------------------------------------------------ */

    $questionn = [];
    $mott = [];
    $requete = $connexion->prepare("
    SELECT question2.quest2,question2.juge,question1.quest1,question1.juge,
question3.quest3,question3.juge,reponse.quest_res,reponse.juge
FROM question1,question2,question3,reponse
WHERE question1.id_quest=question2.id_quest
AND question1.id_quest=question3.id_quest
AND question1.id_quest=reponse.id_quest;");
    $requete->execute();
    $resultat = $requete->fetchall();


    /*
    echo '<pre>';
    print_r($resultat);
    echo '</pre>';
    */
    foreach($resultat as $k=>$element){
        foreach($element as $j=>$quest){
            if($j === 0 or $j === 1 or $j === 2 or $j === 3 or $j === 4 ){
                $mott[] = $quest;
            }
        }
        $questionn[] = $mott;
        $mott = [];
    }

    

    $nouveau_jugement = [
        
        $questionn[$compteur][0],
        $questionn[$compteur][1],
        $questionn[$compteur][2],
        $questionn[$compteur][3]
    ];

    /* echo '<pre>';
    print_r($nouveau_jugement);
    echo '</pre>'; */





?>
