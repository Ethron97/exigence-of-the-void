## CONSTRAINTS
#   AS Player

#======================================================================================================

#say use_spellsling

# If max menace, tellraw and return
execute if data storage exigence:dungeon {max_menace:1} run tellraw @s [{text:"An odious force prevents you from spellslinging",color:"red"}]
execute if data storage exigence:dungeon {max_menace:1} run return 1

# Call function
execute if score #slot Temp matches 2 run function exigence:deck/try_spellsling_card with entity @s SelectedItem.components."minecraft:custom_data"
execute if score #slot Temp matches 1 run function exigence:deck/try_spellsling_card with entity @s equipment.offhand.components."minecraft:custom_data"
