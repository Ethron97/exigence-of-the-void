# called if successful consume from play function

execute as @e[type=minecraft:armor_stand,tag=BerryNode,tag=Active] run function exigence:botany/node/berry_bush_overgrow {min:2,max:3}


# Set score to track
scoreboard players set FinalHarvest Modifiers 1
