# At the start of the game, a set number of hazards on each level are automatically fully engaged.
# This is to give more randomness at the start of the run without needing to crank hazard rates.

# StartingHazard tag can be added from Instant cards.
# SetupStartingHazard tag is added from this function.

# On each level, pick limit=X active hazard nodes to be on at the start of the game.
#   TODO make functionable so we can alter starting amount based on difficulty
execute if score Difficulty DungeonRun matches 1.. as @e[type=minecraft:armor_stand,tag=HazardNode,scores={ObjectLevel=1},limit=3,sort=random,tag=Active,tag=!SetupStartingHazard,tag=!StartingHazard] run tag @s add SetupStartingHazard
execute if score Difficulty DungeonRun matches 2.. as @e[type=minecraft:armor_stand,tag=HazardNode,scores={ObjectLevel=2},limit=3,sort=random,tag=Active,tag=!SetupStartingHazard,tag=!StartingHazard] run tag @s add SetupStartingHazard
execute if score Difficulty DungeonRun matches 3.. as @e[type=minecraft:armor_stand,tag=HazardNode,scores={ObjectLevel=3},limit=3,sort=random,tag=Active,tag=!SetupStartingHazard,tag=!StartingHazard] run tag @s add SetupStartingHazard
execute if score Difficulty DungeonRun matches 4.. as @e[type=minecraft:armor_stand,tag=HazardNode,scores={ObjectLevel=4},limit=3,sort=random,tag=Active,tag=!SetupStartingHazard,tag=!StartingHazard] run tag @s add SetupStartingHazard

# +1 hazard on level 4 for each Ward destroyed
execute if score Difficulty DungeonRun matches 4.. if score ward.Emerald game.story.wards matches 0 as @e[type=minecraft:armor_stand,tag=HazardNode,scores={ObjectLevel=4},limit=1,sort=random,tag=Active,tag=!SetupStartingHazard,tag=!StartingHazard] run tag @s add SetupStartingHazard
execute if score Difficulty DungeonRun matches 4.. if score ward.Sapphire game.story.wards matches 0 as @e[type=minecraft:armor_stand,tag=HazardNode,scores={ObjectLevel=4},limit=1,sort=random,tag=Active,tag=!SetupStartingHazard,tag=!StartingHazard] run tag @s add SetupStartingHazard
execute if score Difficulty DungeonRun matches 4.. if score ward.Ruby game.story.wards matches 0 as @e[type=minecraft:armor_stand,tag=HazardNode,scores={ObjectLevel=4},limit=1,sort=random,tag=Active,tag=!SetupStartingHazard,tag=!StartingHazard] run tag @s add SetupStartingHazard
execute if score Difficulty DungeonRun matches 4.. if score ward.Topaz game.story.wards matches 0 as @e[type=minecraft:armor_stand,tag=HazardNode,scores={ObjectLevel=4},limit=1,sort=random,tag=Active,tag=!SetupStartingHazard,tag=!StartingHazard] run tag @s add SetupStartingHazard
execute if score Difficulty DungeonRun matches 4.. if score ward.Amethyst game.story.wards matches 0 as @e[type=minecraft:armor_stand,tag=HazardNode,scores={ObjectLevel=4},limit=1,sort=random,tag=Active,tag=!SetupStartingHazard,tag=!StartingHazard] run tag @s add SetupStartingHazard

# Add common tag
tag @e[type=minecraft:armor_stand,tag=SetupStartingHazard] add StartingHazard

# call function as each starting hazard
#execute as @e[type=minecraft:armor_stand,tag=StartingHazard] run function exigence:hazard/private/starting_hazard


# Start iteration
scoreboard players set #starting_hazard Temp 1
function exigence:hazard/private/starting_hazard_loop
