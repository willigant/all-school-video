<? foreach ($buckets as $bucket) {?>
    <a href="/bucket/standards/<?= $bucket->id;?>"><?= $bucket->title; ?></a>
<? } ?>
