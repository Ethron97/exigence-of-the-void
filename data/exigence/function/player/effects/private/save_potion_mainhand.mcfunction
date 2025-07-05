# Called as player by player_effect_tick

## CONSTRAINTS
#   AS player

#============================================================================================================

# Copy player id for storage
scoreboard players operation #compare PlayerID = @s PlayerID

# Copy item to storage in-between
data modify storage exigence:player_effects item set value {id:"minecraft:stone"}
data modify storage exigence:player_effects item set from entity @s SelectedItem

# Copy item to PlayerNode armorstand
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s PlayerID = #compare PlayerID run data modify entity @s equipment.mainhand set from storage exigence:player_effects item
