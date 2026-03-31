# Only designed to be called by distribute_wardened
#say I am distributing

# Teleport to random MenaceNode that does not have tag "Wardened".
$teleport @s @e[type=minecraft:armor_stand,scores={ObjectLevel=$(level)},tag=MenaceNode,tag=!Wardened,tag=!RavagerBlacklist,sort=random,limit=1]

# Give "NewWardened" tag to X nearest MenaceNode(s), level ignorant.
execute at @s run tag @e[type=minecraft:armor_stand,tag=MenaceNode,tag=!Wardened,tag=!NewWardened,distance=..64,sort=nearest,limit=10] add Wardened

# Give ObjectLevel
$scoreboard players set @s ObjectLevel $(level)
