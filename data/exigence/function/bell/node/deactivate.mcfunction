# AS BellNode

tag @s remove Active
tag @s remove Smashed
execute at @s run setblock ~ ~ ~ minecraft:air

scoreboard players set @s RingBellCooldown 0

# Kill connected interaction
function exigence:bell/node/remove_interaction
