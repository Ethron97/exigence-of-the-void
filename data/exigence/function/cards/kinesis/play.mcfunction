say 5 Red: Ravagers within 32 blocks get Slow equal to your Speed level

function exigence:resources/try_consume with storage exigence:resources

# Add effect
execute if score #LastConsumeResult game.resources matches 1 as @a[scores={dead=0},tag=ActivePlayer] run function exigence:cards/kinesis/private/trigger
