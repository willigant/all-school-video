Videos

<h1><?= $standard->title;?></h1>
<!-- <?= $standard->id;?>
<?= $standard->exercise_url;?> //keep these variables just so we know what we dealin wit-->

<?= $standard->exercise_title; ?>


<? foreach ($videos as $video) { 
    //need travis to input just the youtube id and not the full URL
    //but for now process the video and just pull out the video id
    $video_id = str_replace("http://www.youtube.com/watch?v=","",$video->url);
?>

    <li><iframe width="560" height="315" src="http://www.youtube.com/embed/<?= $video_id; ?>" 
        frameborder="0" allowfullscreen>
    </iframe></li>

<? } ?>
