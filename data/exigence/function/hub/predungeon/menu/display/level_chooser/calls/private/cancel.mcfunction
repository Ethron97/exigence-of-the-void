# Called when cancel button is clicked

## CONSTRAINTS
#   AS item display (cancel button)

#====================================================================================================

#say Cancel clicked
execute at @s run playsound minecraft:block.ender_chest.open ui @a ~ ~ ~ 1 0.5
execute at @s at @n[type=marker,tag=PredungeonMenuNode,distance=..5] run function exigence:hub/predungeon/menu/display/back_to_prebutton
