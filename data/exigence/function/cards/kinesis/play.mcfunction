say 5 Red: Ravagers within 32 blocks get Slow equal to your Speed level

function exigence:resources/try_consume with storage exigence:resources

# Add effect
execute if score LastConsumeResult Resources matches 1 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:cards/kinesis/private/trigger
