# Try to reveal nearby mirror block
#   Called by player / tick alive

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Dust of appearnace looping

# Reduce score
scoreboard players remove @s game.player.dust_appearance 1

# Try to appear a nearby block
scoreboard players set #did_appear Temp 0
execute as @n[type=minecraft:marker,tag=HiddenBlock,tag=ReflectionNO,tag=!Revealed,distance=..15] run function exigence:hub/item_shop/item/item_dust_of_appearance/private/appear
execute if score #did_appear Temp matches 1 run scoreboard players add @s game.player.dust_appearance 1
