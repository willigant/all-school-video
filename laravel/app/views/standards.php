<h1>Standards</h1>
<?php foreach($standards as $standard) { ?>
    <li><a href="/standard/videos/<?= $standard->id; ?>"><?= $standard->title; ?></a></li>
<? } ?>

<a href="/">Back</a>

