# Called by hub_tick

## CONSTRAINTS

## INPUT

#=============================================================================================================

# Handle tags
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=Hover] run function exigence:menu/menu_tick_b

# Detect which item_display(s) the player is looking at
scoreboard players set @a[tag=ItemShopping] shop.player.looking_at_idid 0
execute as @a[tag=ItemShopping] run function exigence:menu/item_display/get_looking

# Reset interaction for playres that are not looking
execute as @a[tag=ItemShopping,scores={shop.player.looking_at_idid=0}] run function exigence:player/utility/interaction/tp_home

# Unhover old entity (unless it is the same as current)
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=OldHover,tag=!Hover] run function exigence:menu/item_display/unhover with entity @s item.components."minecraft:custom_data"

# Hover new entity (unless it is the same as old)
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=!OldHover,tag=Hover] run function exigence:menu/item_display/hover with entity @s item.components."minecraft:custom_data"

# Remove OldHover tag
tag @e[type=minecraft:item_display,tag=OldHover] remove OldHover

# Money menu tick
execute if entity @a[tag=ItemShopping] run function exigence:menu/money_menus/money_menu_tick
