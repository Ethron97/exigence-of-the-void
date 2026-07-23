# Called when player clicks on a displaying card display

## CONSTRAINTS
#   AS/AT card display

#====================================================================================================

#execute in exigence:hub positioned 51.5 206.0 0.5 run
# Set inputs
#   SCORE #spellbinding Temp (1 = true)
scoreboard players set #spellbinding Temp 0
#   SCORE mod.spellbook game.modifiers
scoreboard players set mod.spellbook game.modifiers 0
function exigence:cards/summon_card with entity @s item.components."minecraft:custom_data"

# Set item origin to player UUID (any of the ones in the ember shop)
execute as @p[tag=EmberShop,distance=..16] run data modify entity @n[type=minecraft:item,tag=NCS,distance=..0.1] Owner set from entity @s UUID
# Teleport item to player
#execute as @n[type=minecraft:item,tag=NCS,distance=..0.1] at @s run tp @s @p[tag=EmberShop,tag=Interacting,distance=..16]

# Launch item forward
data modify entity @n[type=minecraft:item,tag=NCS,distance=..0.1] Motion set value [-0.3,0.0,0.0]

# Playsound
playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1 1
playsound minecraft:entity.item_frame.remove_item ambient @a ~ ~ ~ 1 1

# Remove local tag
tag @n[type=minecraft:item,tag=NCS,distance=..0.1] remove NCS
