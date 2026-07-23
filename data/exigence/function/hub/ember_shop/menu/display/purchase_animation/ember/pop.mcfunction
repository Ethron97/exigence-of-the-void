# Go from rune to piece of card

## CONSTRAINTS
#   AS rune

## INPUT
#   FLOAT pitch

#====================================================================================================

execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.01 0.01 0.01 0.0001 1
#execute at @s run particle minecraft:electric_spark ~ ~ ~ 0.01 0.01 0.01 0.0001 1

$execute at @s run playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 1 $(pitch)
#execute at @s run playsound minecraft:entity.ender_eye.death ambient @a ~ ~ ~ 1 1.2
#execute at @s run playsound minecraft:item.firecharge.use ambient @a ~ ~ ~ 1 1.2

# If not hath been converted, convert
execute if score #already_converted ember_shop matches 0 run return run function exigence:hub/ember_shop/menu/display/purchase_animation/ember/private/convert_to_piece
#----------------------------------------------------------------------------------------------------
# Else kill
kill @s