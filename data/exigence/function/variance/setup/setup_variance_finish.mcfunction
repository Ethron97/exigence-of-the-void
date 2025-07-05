# Called by end of variance setup loop

#=============================================================================================================

#say Setup river check

# Verify RiverCheck nodes on L1 (at least one RiverCheck needs to have water so the player can bypass a potential lock-out)
execute unless entity @e[type=minecraft:armor_stand,tag=VarianceNode,tag=RiverCheck,scores={NodeState=1..2}] as @e[type=minecraft:armor_stand,tag=VarianceNode,tag=RiverCheck,sort=random,limit=1] run function exigence:variance/private/river_check_override

# Call level 3 stairs variance (if difficulty 3+)
execute if score Difficulty DungeonRun matches 3.. run function exigence:variance/level_3_stairs/setup_stairs

# Do the rest of hazards with enough time for the stairs to have finished variancing
schedule function exigence:hazard/setup_starting_hazard 12t append
