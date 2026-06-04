# E tick on void merchant
# Called from game tick e tick

## CONSTRAINTS
#   AS/AT void merchant (enderman)

#====================================================================================================

# Teleport away if scared
execute if entity @e[type=#exigence:scares_merchant,distance=..10] run function exigence:npc/game/void_merchant/scare

# Face nearby player
execute at @s if entity @p[distance=..16] anchored eyes facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# Load shops if player is near void merchants
execute if entity @s[tag=!Loaded] at @s if entity @p[scores={dead=0},tag=ActivePlayer,distance=..6] run function exigence:game/other/void_shop/load_shop

# Unload shops if player is not near void merchants who are loaded
execute if entity @s[tag=Loaded] at @s unless entity @p[scores={dead=0},tag=ActivePlayer,distance=..6] run function exigence:game/other/void_shop/unload_shop

# If shop is loaded, void shop tick:
execute if entity @s[tag=Loaded] run function exigence:game/other/void_shop/menu/void_shop_menu_tick
