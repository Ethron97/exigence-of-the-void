## CONSTRAINTS
#   AS/AT active living player on level 3

#====================================================================================================

function exigence:player/effects/beast_sense/private/lvl_3_ravager
execute if score mod.void_scent game.modifiers matches 1 run function exigence:player/effects/beast_sense/private/lvl_3_enderman
