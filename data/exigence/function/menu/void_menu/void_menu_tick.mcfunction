# Called by game_tick

## CONSTRAINTS:
#   if difficulty = 3.. and active_level = 3
#   AS/AT VoidMerchant?

#=============================================================================================================

# Give tag to previous LookingAt item display
execute as @e[type=minecraft:item_display,tag=VoidShopDisplay,tag=Hover] run function exigence:menu/void_menu/void_menu_tick_b

# Reset tag
tag @e[type=minecraft:item_display,tag=HoverCandidate] remove HoverCandidate

# Detect which item_display(s) the player is looking at
scoreboard players set @a[tag=VoidShopping] LookingAtIDID 0
execute as @a[tag=VoidShopping] run function exigence:menu/item_display/void_shop_display/get_looking

# Reset interaction for playres that are not looking
execute as @a[tag=VoidShopping,scores={LookingAtIDID=0}] run function exigence:player/utility/interaction/tp_home

# Unhover old entity (unless it is the same as current)
execute as @e[type=minecraft:item_display,tag=VoidShopDisplay,tag=OldHover,tag=!Hover] run function exigence:menu/item_display/unhover with entity @s item.components."minecraft:custom_data"

# Hover new entity (unless it is the same as old)
execute as @e[type=minecraft:item_display,tag=VoidShopDisplay,tag=!OldHover,tag=Hover] run function exigence:menu/item_display/hover with entity @s item.components."minecraft:custom_data"

# Remove OldHover tag
tag @e[type=minecraft:item_display,tag=OldHover] remove OldHover






# Teleport void merchants if too close to enemy
execute as @e[type=minecraft:enderman,tag=VoidMerchant] at @s if entity @e[distance=..10,type=#exigence:scares_merchant] run function exigence:npc/game/void_merchant/scare

# Tp Void merchants to look at player
execute as @e[type=minecraft:enderman,tag=VoidMerchant] at @s if entity @p[distance=..10] anchored eyes facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# Set vertical looking to zero
#data modify entity @e[type=minecraft:enderman,tag=VoidMerchant,sort=nearest,limit=1] Rotation[1] set value 0.0f

# Load shops if player is near void merchants
execute as @e[type=minecraft:enderman,tag=VoidMerchant,tag=!Loaded] at @s if entity @p[tag=ActivePlayer,scores={dead=0},distance=..6,tag=!VoidShopping] run function exigence:menu/void_menu/load

# Unload shops if player is not near void merchants who are loaded
execute as @e[type=minecraft:enderman,tag=VoidMerchant,tag=Loaded] at @s unless entity @p[tag=ActivePlayer,scores={dead=0},distance=..6,tag=VoidShopping] run function exigence:menu/void_menu/unload

# If loaded, gets scared away if a non-loaded player gets near?
# Not for now, this would probably just be confusing. This is currently a super-edge case.
# Plus, multiple players doesn't seem to break anything. The second player just can't shop.

# Reduce shop purchase cooldown by 1
scoreboard players remove @e[type=minecraft:item_display,tag=VoidShopDisplay,scores={ShopPurchaseCooldown=1..}] ShopPurchaseCooldown 1

# If at least one void menu is loaded, tick display
execute if entity @e[type=minecraft:enderman,tag=VoidMerchant,tag=Loaded] run function exigence:menu/void_menu/void_menu_tick_displays
