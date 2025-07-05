# Only designed to be called by detect_active_level.mcfunction
# Used to move ravagers that get stuck near doorways
#say Redistribute ravagers

# Clear tag that remembers which nodes have been ravagered
tag @e[type=minecraft:armor_stand,tag=MenaceNode,tag=Ravagered] remove Ravagered

# Select ravagers for redistribution
execute if score ActiveLevel DungeonRun matches 1 run tag @e[type=minecraft:ravager,predicate=exigence:door/level1] add ReDistribute
execute if score ActiveLevel DungeonRun matches 2 run tag @e[type=minecraft:ravager,predicate=exigence:door/level2] add ReDistribute
execute if score ActiveLevel DungeonRun matches 3 run tag @e[type=minecraft:ravager,predicate=exigence:door/level3] add ReDistribute

# Add nearest 3 nodes to each non distribute ravager to the Ravagered so we don't clump
execute if score ActiveLevel DungeonRun matches 1 run execute at @e[type=minecraft:ravager,tag=!ReDistribute,scores={ObjectLevel=1}] run tag @e[distance=..24,type=minecraft:armor_stand,tag=MenaceNode,sort=nearest,limit=3,scores={ObjectLevel=1}] add Ravagered
execute if score ActiveLevel DungeonRun matches 2 run execute at @e[type=minecraft:ravager,tag=!ReDistribute,scores={ObjectLevel=2}] run tag @e[distance=..24,type=minecraft:armor_stand,tag=MenaceNode,sort=nearest,limit=3,scores={ObjectLevel=2}] add Ravagered
execute if score ActiveLevel DungeonRun matches 3 run execute at @e[type=minecraft:ravager,tag=!ReDistribute,scores={ObjectLevel=3}] run tag @e[distance=..24,type=minecraft:armor_stand,tag=MenaceNode,sort=nearest,limit=3,scores={ObjectLevel=3}] add Ravagered

# Call function redistribute_ravagers.mcfunction as all ravagers selected for distribution
execute as @e[type=minecraft:ravager,tag=ReDistribute] run function exigence:enemy/ravager/distribute
