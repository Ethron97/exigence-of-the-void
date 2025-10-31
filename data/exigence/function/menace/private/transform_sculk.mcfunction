# Replace sculk with bedrock (red textured sculk)

kill @e[type=minecraft:marker,tag=Redifier]
summon minecraft:marker -374 -60 -120 {Tags:["Redifier"]}

$scoreboard players set #Redify Temp $(redify)

scoreboard players set #block_reset Y -60
scoreboard players set #block_reset_max Y 300

schedule function exigence:menace/private/transform_sculk_loop 1t
