This is where all the standards will go
<h1>Standards</h1>
<?php foreach($standards as $standard) { ?>
    <a href="/standard/videos/<?= $standard->id; ?>"<?= $standard->title; ?></a>
<? } ?>
