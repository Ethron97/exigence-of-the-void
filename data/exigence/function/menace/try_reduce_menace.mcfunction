# Called to reduce current menace level by exactly 1
#   Cannot go below minimum
#   Cannot reduce at max menace

## CONSTRAINTS
#   AS player?
#   Not currently constraining anything, but we might add scoreboards.

# ASSUMES THAT THIS IS ONLY BEING CALLED BY LIGHTING ALTARS

#====================================================================================================

execute if score toggle.menace debug matches 1 if score debug.level debug matches 3.. run say (D3) Try reduce menace

# If max menace, return
execute if score game.max_menace game.state matches 1 run return 1

# If current menace is at or below minimum, return
execute if score menace.current game.dungeon.menace <= menace.min game.dungeon.menace run return 1
#----------------------------------------------------------------------------------------------------

# Else, reduce by one
scoreboard players remove menace.current game.dungeon.menace 1
# Increase player score
scoreboard players add @p[tag=Lighting] profile.data.altar.cr.menace_reduced 1
