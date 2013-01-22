<?php
	$connecte = false;
	if (isset($_COOKIE['sid']))
	{
		$sql="SELECT * FROM utilisateurs WHERE  sid='".$_COOKIE['sid']."'";
		$resultat = mysql_query($sql);
		$util = mysql_fetch_array($resultat);
		
		if(mysql_num_rows($resultat))
		{
			$connecte = true;
		}
	}
?>
 </div>
          <nav class="span4">
		  <?php // if (isset($connecte)) echo "<h4> L'adresse '".$util['email']."' est connectée.</h4>"; ?>
            <h2>Menu</h2>
			<form action="index.php" method="get">
				<label for="rech">Recherche : </label>
				<input type="text" name ="r" id="rech" placeholder = "Football, Jeux vidéos" class="span3" <?php if($rech) echo "value=".$rech; ?>>&nbsp;
				<input type="submit" value="OK" class="btn btn-primary">
			</form>
            <ul>
                <li><a href="index.php">Accueil</a></li>
                <li><a href="article.php">Rédiger un article</a></li>
                <li><a href="connexion.php">Connexion</a></li>
            </ul>
			
			<h3>Tags</h3>
			<ul>
                <li><a href="">Test</a></li>
                <li><a href="">Football</a></li>
                <li><a href="">Outils</a></li>
            </ul>
            
          </nav>
        </div>
        
      </div>

      <footer>
        <p>&copy; Nilsine & ULCO 2012</p>

      </footer>

    </div>
	<script type="text/javascript">
		$(function(){
			function cacherNotif(){
				$('.alert').slideUp('slow');
			};
			setTimeout(cacherNotif,10000);
			$(".cacher-notif").click(function(){
				cacherNotif();	
			});
		});	
		
	</script>
  </body>
</html>