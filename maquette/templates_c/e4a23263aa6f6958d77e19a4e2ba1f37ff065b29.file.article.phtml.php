<?php /* Smarty version Smarty-3.1.12, created on 2013-01-21 08:35:17
         compiled from "templates\article.phtml" */ ?>
<?php /*%%SmartyHeaderCode:346050fcfdc5ac37e7-83287683%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e4a23263aa6f6958d77e19a4e2ba1f37ff065b29' => 
    array (
      0 => 'templates\\article.phtml',
      1 => 1358440565,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '346050fcfdc5ac37e7-83287683',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'action_label' => 0,
    'erreur' => 0,
    'rep' => 0,
    'id' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_50fcfdc5ec9a97_11685063',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_50fcfdc5ec9a97_11685063')) {function content_50fcfdc5ec9a97_11685063($_smarty_tpl) {?><form action="article.php" method="post">
	<h2><?php echo $_smarty_tpl->tpl_vars['action_label']->value;?>
 un article</h2>
	<div class="clearfix">
		<?php if (isset($_smarty_tpl->tpl_vars['erreur']->value)){?>
			<div class='alert alert-error'>
			Veuillez saisir tous les champs.
			</div>	
		<?php }?>

	<label for="titre">Titre</label>
		<div class="input">
			<input type="text" name="titre" id="titre" value="<?php if (isset($_smarty_tpl->tpl_vars['rep']->value['titre'])){?> <?php echo $_smarty_tpl->tpl_vars['rep']->value['titre'];?>
<?php }?>">
		</div> 
	</div>
	<div class="clearfix">
		<label for="texte">Texte</label>
		<div class="input">
			<textarea name="texte" id="texte"><?php if (isset($_smarty_tpl->tpl_vars['rep']->value['texte'])){?> <?php echo $_smarty_tpl->tpl_vars['rep']->value['texte'];?>
<?php }?></textarea>
		</div> 
	</div>
	<div class="clearfix">
		<div class="input">
			<input type="checkbox" name="publie" id="publie" value="1"><label for="publie">Publier</label>
		</div> 
	</div>
	
	<div class="clearfix">
		<label for="tag">Tag</label>
		<div class="input">
			<input type="text" name="tag" id="tag" value="<?php if (isset($_smarty_tpl->tpl_vars['rep']->value['tag'])){?> <?php echo $_smarty_tpl->tpl_vars['rep']->value['tag'];?>
<?php }?>">
		</div> 
	</div>
		<!-- test -->
	<form action="article.phtml" method="post" enctype="multipart/form-data" name="upload">
		<div class="input"><input type='hidden' name='upload' value='1'></div>
		<div class="clearfix">
			<input type="file" name="image" id="image">
		</div>
		
	<div class="form-actions">
		<input type="submit" value="<?php echo $_smarty_tpl->tpl_vars['action_label']->value;?>
" class="btn btn-large btn-primary"> 
		<input type="hidden" name='post' value=""> <!-- Permet de savoir si on se trouve en traitement -->
		<input type="hidden" name='id' value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
"> <!-- Permet de savoir si on se trouve en modification -->
	</div>
	
	
</form>

<?php }} ?>