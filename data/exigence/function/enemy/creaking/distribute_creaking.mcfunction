# Only designed to be called by distribute_creakings
#say I am distributing

# Teleport self to one random menace node
#   In the pale garden, on level 4, inside the walls, not already creakingined
teleport @s @e[predicate=exigence:level/4,predicate=exigence:level/pale_garden,type=minecraft:armor_stand,tag=MenaceNode,scores={ObjectLevel=4},tag=!CreakingBlacklist,tag=!Creakinged,tag=!RavagerBlacklist,limit=1,sort=random]

# Give "NewCreakinged" tag to X additional MenaceNode(s).
execute at @s run tag @e[distance=..32,type=minecraft:armor_stand,tag=MenaceNode,tag=!Creakinged,tag=!NewCreakinged,limit=3,sort=nearest] add Creakinged

# Give ObjectLevel
scoreboard players set @s ObjectLevel 4
