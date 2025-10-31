# Called as player by player_effect_tick

## CONSTRAINTS
#   AS player

#============================================================================================================

# Copy player id for storage
scoreboard players operation #compare profile.node.player_id = @s career.player_id

# Copy item to storage in-between
data modify storage exigence:player_effects item set value {id:"minecraft:stone"}
data modify storage exigence:player_effects item set from entity @s SelectedItem

# Copy item to PlayerNode armorstand
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s profile.node.player_id = #compare profile.node.player_id run data modify entity @s equipment.mainhand set from storage exigence:player_effects item
