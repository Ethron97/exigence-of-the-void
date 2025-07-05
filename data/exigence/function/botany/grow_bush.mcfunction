# Called by botany/resolve_berry to grow a single active berry bush

## INPUT
#   score GrowthLevel DungeonRun must be set before calling this
#   Tries to grow on bush on GrowthLevel

# This function lets us potentially add overgrow mechancis later, such as if a card is active or certain items are equipped.

#====================================================================================================

# Cancel if invalid input
execute unless score GrowthLevel DungeonRun matches 1..4 run return 1

# DEBUG
#tellraw @a [{text:"DEBUG Attempting to grow on level ",color:"gray"},{"score":{"name":"GrowthLevel","objective":"DungeonRun"},color:"dark_green"}]

# Reset tag
tag @e[type=minecraft:armor_stand,tag=BerryNode,tag=PotentialGrowth] remove PotentialGrowth

# Tag potential growths
execute as @e[type=minecraft:armor_stand,tag=BerryNode,tag=Active,tag=!Grown] if score @s ObjectLevel = GrowthLevel DungeonRun run tag @s add PotentialGrowth

# If bush to grow, grow it
execute as @e[type=minecraft:armor_stand,tag=BerryNode,tag=PotentialGrowth,sort=random,limit=1] run function exigence:botany/private/grow_bush_yes

# Otherwise, no bush
execute unless entity @e[type=minecraft:armor_stand,tag=BerryNode,tag=PotentialGrowth] run function exigence:botany/private/grow_bush_no
