# Replace sculk with bedrock (red textured sculk)

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================
execute unless dimension minecraft:overworld run return run say Tried to transform sculk not in overworld
#----------------------------------------------------------------------------------------------------

# Reset old
kill @e[x=-380,y=-63,z=-124,dx=7,dy=380,dz=7,type=minecraft:marker,tag=Redifier]

# Summon new
summon minecraft:marker -374 -60 -120 {Tags:["Redifier"],CustomName:{text:"Marker | Redifier"}}

$scoreboard players set #Redify Temp $(redify)

scoreboard players set #block_reset Temp -60
scoreboard players set #block_reset_max Temp 300

# Clear schedule (if already running)
schedule clear exigence:menace/private/transform_sculk_loop_s

# Begin iteration
schedule function exigence:menace/private/transform_sculk_loop_s 1t
