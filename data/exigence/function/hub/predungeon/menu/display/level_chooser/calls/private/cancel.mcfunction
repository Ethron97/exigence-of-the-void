# Called when cancel button is clicked

## CONSTRAINTS
#   AS item display (cancel button)

#====================================================================================================

#say Cancel clicked
execute at @s run playsound minecraft:block.ender_chest.open ui @a ~ ~ ~ 1 0.5
execute at @s at @n[distance=..5,type=marker,tag=PredungeonMenuNode] run function exigence:hub/predungeon/menu/display/back_to_prebutton
