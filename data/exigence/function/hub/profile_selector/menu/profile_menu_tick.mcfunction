# Called by hub_tick

## CONSTRAINTS
#   AS/AT player in a profile selector room

#=============================================================================================================

# Teleport your interaction to player
execute at @s anchored eyes positioned ^ ^-0.5 ^ as @n[distance=..16,type=interaction,tag=ProfileSelectorInteraction] run tp @s ~ ~ ~

# Swap Hover/OldHover tags
execute as @e[distance=..16,type=minecraft:item_display,tag=MenuDisplay,tag=Hover] run function exigence:menu/menu_tick_b

#=============================================================================================================
# Detect which item_display(s) the player is looking at
scoreboard players set @s shop.player.looking_at_idid 0
function exigence:hub/profile_selector/menu/display/get_looking

# Reset interaction if player are not looking
execute as @s[scores={shop.player.looking_at_idid=0}] run data merge entity @n[distance=..3,type=interaction,tag=ProfileSelectorInteraction] {width:0.01,height:0.01}

# Unhover old entity (unless it is the same as current)
execute as @e[distance=..16,type=minecraft:item_display,tag=MenuDisplay,tag=OldHover,tag=!Hover] run function exigence:hub/profile_selector/menu/display/unhover with entity @s item.components."minecraft:custom_data"

# Hover new entity (unless it is the same as old)
execute as @e[distance=..16,type=minecraft:item_display,tag=MenuDisplay,tag=!OldHover,tag=Hover] run function exigence:hub/profile_selector/menu/display/hover with entity @s item.components."minecraft:custom_data"

# Remove OldHover tag
tag @e[distance=..16,type=minecraft:item_display,tag=OldHover] remove OldHover
#=============================================================================================================
# Deselect any open menus if the player walks away
execute as @n[distance=..16,type=item_display,tag=CreationProcess] at @s unless entity @a[distance=..6] run function exigence:hub/profile_selector/menu/display/profile/create_new_cancel

#=============================================================================================================
# If sneaking, change color to red of all loaded
execute if entity @s[predicate=exigence:player/sneaking] as @n[distance=..7,type=minecraft:item_display,tag=SlotDisplay,tag=ProfileLoaded,tag=!Selected,team=Green] run team join Red @s
execute if entity @s[predicate=exigence:player/sneaking] as @n[distance=..7,type=minecraft:item_display,tag=PlayerHeadDisplay,tag=Pending,team=Special] run team join Red @s

# If not sneaking, change color to green of all loaded
execute unless entity @s[predicate=exigence:player/sneaking] as @n[distance=..7,type=minecraft:item_display,tag=SlotDisplay,tag=ProfileLoaded,team=Red] run team join Green @s
execute unless entity @s[predicate=exigence:player/sneaking] as @n[distance=..7,type=minecraft:item_display,tag=PlayerHeadDisplay,team=Red] run team join Special @s

scoreboard players remove @s[scores={hub.player.profile_selector_cooldown=1..}] hub.player.profile_selector_cooldown 1
