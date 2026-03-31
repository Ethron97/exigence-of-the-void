# Only designed to be called by distribute_creakings
#say I am distributing

# Teleport self to one random menace node
#   In the pale garden, on level 4, inside the walls, not already creakingined
teleport @s @e[type=minecraft:armor_stand,scores={ObjectLevel=4},tag=MenaceNode,tag=!CreakingBlacklist,tag=!Creakinged,tag=!RavagerBlacklist,predicate=exigence:level/4,predicate=exigence:level/pale_garden,sort=random,limit=1]

# Give "NewCreakinged" tag to X additional MenaceNode(s).
execute at @s run tag @e[type=minecraft:armor_stand,tag=MenaceNode,tag=!Creakinged,tag=!NewCreakinged,distance=..32,sort=nearest,limit=3] add Creakinged

# Give ObjectLevel
scoreboard players set @s ObjectLevel 4
