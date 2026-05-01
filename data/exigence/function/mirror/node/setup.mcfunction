# Called from game load sequence

## CONSTRAINTS
#   AS mirror node

#====================================================================================================

# Reset tags
tag @s remove Active

# Summon rotation armor_stand if it isn't there
#   This is used to store rotation from mirror -> player, since we can't store it on the mirror node itself
execute at @s unless entity @e[type=minecraft:armor_stand,tag=Rotation,distance=..1,limit=1] \
run summon minecraft:armor_stand ~ ~ ~ {Tags:["Rotation","MirrorEntity"],NoGravity:true,Invisible:true,NoBasePlate:true}
