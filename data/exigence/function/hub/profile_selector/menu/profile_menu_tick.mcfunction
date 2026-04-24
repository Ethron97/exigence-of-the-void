# Called by hub_tick

## CONSTRAINTS
#   AS/AT player in a profile selector room

#====================================================================================================

# Teleport your interaction to player
execute at @s anchored eyes positioned ^ ^-0.5 ^ as @n[type=interaction,tag=ProfileSelectorInteraction,distance=..16] run tp @s ~ ~ ~

# Swap Hover/OldHover tags
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=Hover,distance=..16] run function exigence:menu/menu_tick_tag_swap

#====================================================================================================
# Detect which item_display(s) the player is looking at
scoreboard players operation #old_idid shop.player.looking_at_idid = @s shop.player.looking_at_idid
scoreboard players set @s shop.player.looking_at_idid 0
function exigence:hub/profile_selector/menu/display/get_looking

# Reset interaction if player are not looking
execute if score #old_idid shop.player.looking_at_idid matches 1.. if score @s shop.player.looking_at_idid matches 0 run data merge entity @n[distance=..3,type=interaction,tag=ProfileSelectorInteraction] {width:0.01,height:0.01}

# Unhover old entity (unless it is the same as current)
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=OldHover,tag=!Hover,distance=..16] run function exigence:hub/profile_selector/menu/display/unhover with entity @s item.components."minecraft:custom_data"

# Hover new entity (unless it is the same as old)
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=!OldHover,tag=Hover,distance=..16] run function exigence:hub/profile_selector/menu/display/hover with entity @s item.components."minecraft:custom_data"

# Remove OldHover tag
tag @e[type=minecraft:item_display,tag=OldHover,distance=..16] remove OldHover
#====================================================================================================
# Deselect any open menus if the player walks away
execute as @n[type=minecraft:item_display,tag=CreationProcess,distance=..16] at @s unless entity @a[distance=..6] run function exigence:hub/profile_selector/menu/display/profile/create_new_cancel with entity @s item.components."minecraft:custom_data"

#====================================================================================================
# If sneaking, change color to red of all loaded
execute if entity @s[predicate=exigence:player/sneaking] as @n[type=minecraft:item_display,team=Special,tag=SlotDisplay,tag=ProfileLoaded,tag=!Selected,distance=..7] run team join Red @s
execute if entity @s[predicate=exigence:player/sneaking] as @n[type=minecraft:item_display,team=Special,tag=PlayerHeadDisplay,tag=Pending,distance=..7] run team join Red @s

# If not sneaking, change color to green of all loaded
execute unless entity @s[predicate=exigence:player/sneaking] as @n[type=minecraft:item_display,team=Red,tag=SlotDisplay,tag=ProfileLoaded,distance=..7] run team join Special @s
execute unless entity @s[predicate=exigence:player/sneaking] as @n[type=minecraft:item_display,team=Red,tag=PlayerHeadDisplay,distance=..7] run team join Special @s

#====================================================================================================
# Reduce cooldown