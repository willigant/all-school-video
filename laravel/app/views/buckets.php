<h1>Buckets</h1>
<? foreach ($buckets as $bucket) {?>
    <a href="/bucket/standards/<?= $bucket->id;?>"><?= $bucket->title; ?></a>
<? } ?>
