# Called as player by player_effect_tick

## CONSTRAINTS
#   AS player

#============================================================================================================

# Copy player id for storage
scoreboard players operation #compare profile.node.player_id = @s career.player_id

# Copy item to storage in-between
execute if data entity @s {Inventory:[{Slot:-106b}]} run data modify storage exigence:player_effects item set from entity @s equipment.offhand
execute unless data entity @s {Inventory:[{Slot:-106b}]} run data modify storage exigence:player_effects item set value {id:"minecraft:stone"}

# Copy item to PlayerNode armorstand
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s profile.node.player_id = #compare profile.node.player_id run data modify entity @s equipment.offhand set from storage exigence:player_effects item
