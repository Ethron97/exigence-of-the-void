# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS/AT item shop display

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Clicked rarity selector

# Increase cooldown score for player
scoreboard players add @p[tag=Interacting,distance=..16] hub.player.interaction_cooldown 10

# If this is already selected, ignore
execute if entity @s[tag=Selected] run return run tellraw @p[tag=Interacting,distance=..16] [{text:"That rarity is already selected!",color:"red"}]
#----------------------------------------------------------------------------------------------------
# Else

# Effects
playsound minecraft:entity.ender_eye.death ui @a ~ ~ ~ 1 1
particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.000 3

# Unselect whatever other rarity selector is selected (if exists)
execute as @n[type=minecraft:item_display,tag=RaritySelector,tag=Selected,distance=..3] at @n[type=minecraft:marker,tag=EmberShopMenuNode] run function exigence:hub/ember_shop/menu/display/rarity_selector/unselect_rarity

# Select this
execute at @n[type=minecraft:marker,tag=EmberShopMenuNode,distance=..5] run function exigence:hub/ember_shop/menu/display/rarity_selector/select_rarity
