Videos

<?= $standard->title;?>
<?= $standard->id;?>
<?= $standard->exercise_title; ?>
<?= $standard->exercise_url;?>


<? foreach ($videos as $video) { ?>

    <?= $video->url; ?>
    <?= $video->id; ?>

<?
}
