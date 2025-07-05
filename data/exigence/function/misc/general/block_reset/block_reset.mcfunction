# Call map wide block reseter to cleanup storage entities

kill @e[type=minecraft:marker,tag=BlockReset]
summon minecraft:marker -374 0 -120 {Tags:["BlockReset"]}

scoreboard players set #block_reset Y 0
scoreboard players set #block_reset_max Y 250

schedule function exigence:misc/general/block_reset/block_reset_loop 2t
