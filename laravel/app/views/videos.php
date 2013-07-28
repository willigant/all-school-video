Videos

<h1><?= $standard->title;?></h1>
<?= $standard->id;?>
<?= $standard->exercise_title; ?>
<?= $standard->exercise_url;?>


<? foreach ($videos as $video) { 
    //need travis to input just the youtube id and not the full URL
    //but for now process the video and just pull out the video id
    $video_id = str_replace("http://www.youtube.com/watch?v=","",$video->url);
?>

    <iframe width="560" height="315" src="http://www.youtube.com/embed/<?= $video_id; ?>" 
        frameborder="0" allowfullscreen>
    </iframe>

<? } ?>
