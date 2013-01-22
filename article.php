<?php
	include('includes/connexion.inc.php'); 
	include('includes/fonctions.inc.php'); 
	require("smarty/smarty.class.php"); // On inclut la classe Smarty
	
	$smarty = new Smarty();

	//pour la modification
	$id =(int)var_get('id');
	$action_label=($id)?'Modifier':'Ajouter';
	$rech=mysql_real_escape_string(var_get('r'));
	 
	$rep=array();
	If ($id){
			$resultat = mysql_query("SELECT * FROM articles WHERE id='$id'"); 
			$rep= mysql_fetch_array($resultat);
	}


	If (isset($_POST['post']))
	{
		//vérification des valeurs entrées
		$titre= var_post('titre');
		$texte= var_post('texte');
		$date=time();
		$erreur=0;
		If (!$titre || !$texte)
		{ 
			//données non remplies ?
			$erreur=1;
			$smarty->assign("erreur",$erreur);
		}
		
	Else {
			//var_dump($_FILES[image]);
			//pour l'ajout
			$titre = mysql_real_escape_string($titre);
			$texte = mysql_real_escape_string($texte);
			$id=(int)var_post('id');
			If ($id)
			{
				requete_notif("UPDATE articles SET titre='$titre', texte='$texte', date=$date WHERE id='$id'",'article','modifié'); //fonction qui modifie et teste
				
				//redirection
				header('Location:index.php'); 
				exit();
			}
			else
			{
				requete_notif("INSERT INTO articles (titre, texte, date) VALUES ('$titre','$texte',$date)",'article','ajouté'); //fonction ajoute et teste
			
				//test upload 
				$id = mysql_insert_id();
				$dossier = 'fichiers/';
				$_FILES['image']['name'] = $id.".jpg";
				$fichier = basename($_FILES['image']['name']);
				move_uploaded_file($_FILES['image']['tmp_name'], $dossier.$fichier);
				
				//redirection
				header('Location:index.php'); 
				exit();
			}
		}
	}

	//tous les assign
	$smarty->assign("action_label",$action_label);
	$smarty->assign("rep",$rep);
	$smarty->assign("id",$id);

	include('includes/haut.inc.php'); 
	$smarty->display("templates/article.phtml"); //affiche la vue article.phtml
	include('includes/bas.inc.php');