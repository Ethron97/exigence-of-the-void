# Sends a preview back to spawn

## CONSTRAINTS
#   AS teleport preview (mannequin)

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Reset teleport preview

execute if score @s game.entity.player_number matches 1 run tp @s 534.5 0.0 486.5
execute if score @s game.entity.player_number matches 2 run tp @s 534.5 0.0 487.5
execute if score @s game.entity.player_number matches 3 run tp @s 534.5 0.0 488.5
execute if score @s game.entity.player_number matches 4 run tp @s 534.5 0.0 489.5

tag @s add Home
tag @s remove Updating