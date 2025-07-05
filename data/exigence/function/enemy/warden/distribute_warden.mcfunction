# Only designed to be called by distribute_wardened
#say I am distributing

# Teleport to random MenaceNode that does not have tag "Wardened".
$teleport @s @e[scores={ObjectLevel=$(level)},type=minecraft:armor_stand,tag=MenaceNode,tag=!Wardened,tag=!RavagerBlacklist,limit=1,sort=random]

# Give "NewWardened" tag to X nearest MenaceNode(s), level ignorant.
execute at @s run tag @e[distance=..64,type=minecraft:armor_stand,tag=MenaceNode,tag=!Wardened,tag=!NewWardened,limit=10,sort=nearest] add Wardened

# Give ObjectLevel
$scoreboard players set @s ObjectLevel $(level)
