<?php
	include('includes/fonctions.inc.php');
	include('includes/connexion.inc.php');
	require("smarty/smarty.class.php"); // On inclut la classe Smarty

	$smarty = new Smarty();

	$app=3;//articles par pages
	$page=(int)var_get('p');//page courante
	if(!$page) $page=1; //si la variable page n'existe, on la place à 1
	$debut=($page-1)*$app;//index de départ
	$rech=mysql_real_escape_string(var_get('r'));//recherche

	$where=isset($rech)?"WHERE texte LIKE '%$rech%'":''; //condition si recherche
	$sql=("SELECT COUNT(*) AS total FROM articles $where");
	$result = mysql_query($sql);
	$data = mysql_fetch_array($result); //fournit un tableau, d'où le besoin du $data
	$total=$data['total'];//total d'articles
	$nbpages=ceil($total/$app); //permet d'arrondir au superieur le nombre de pages nécessaires

	$sql="SELECT * FROM articles $where ORDER BY date DESC LIMIT $debut,$app";
	$result = mysql_query($sql);

	//titre h2
	$h2=($rech)?'Résultats de la recherche "'.$rech.'"':'Derniers articles';

	$articles=array();
	
	while($data = mysql_fetch_array($result))
	{
		//boucle pour la liste d'articles 
		$articles[]=$data;
	}

	$rech=urlencode($rech);
	$rech=htmlspecialchars($rech);
	$pager=($rech)?'&r='.$rech.'':'';
	
	
	//	Tous les assign
	$smarty->assign("articles",$articles);//articles
	$smarty->assign("h2",$h2);//titre
	$smarty->assign("page",$page);//page
	$smarty->assign("pager",$pager);//pager
	$smarty->assign("nbpages",$nbpages);//nbpages
	//$smarty->assign("i",$i);//i


	include('includes/haut.inc.php'); 
	$smarty->display("templates/index.phtml"); //affiche la vue index.phtml
	include('includes/bas.inc.php');

?>