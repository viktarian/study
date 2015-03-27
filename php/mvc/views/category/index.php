<h1>Список статей в категории</h1>
<?php if($articles): ?>
	<?php foreach($articles as $oneArticle): ?>
		<h2><?=$oneArticle['title'];?></h2>
		<p><?=$oneArticle['small_text'];?></p>
		<a href="/projects/my/github/mvc2/mvc5/article/?id=<?=$oneArticle['id'];?>">Подробнее >></a>
	<?php endforeach; ?>
<?php else: ?>
	<h2>В этой категории нет статей</h2>
<?php endif; ?>