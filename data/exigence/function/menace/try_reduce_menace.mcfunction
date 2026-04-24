# Called to reduce current menace level by exactly 1
#   Cannot go below minimum
#   Cannot reduce at max menace

## CONSTRAINTS
#   AS player?
#   Not currently constraining anything, but we might add scoreboards.

# ASSUMES THAT THIS IS ONLY BEING CALLED BY LIGHTING ALTARS

#====================================================================================================

# If max menace, return
execute if score game.max_menace game.state matches 1 run return 1

# If current menace is at or below minimum, return
execute if score .menace game.dungeon <= .min_menace game.dungeon run return 1
#----------------------------------------------------------------------------------------------------

# Else, reduce by one
scoreboard players remove .menace game.dungeon 1
# Increase player score
scoreboard players add @p[tag=Lighting] profile.data.altar.cr.menace_reduced 1
