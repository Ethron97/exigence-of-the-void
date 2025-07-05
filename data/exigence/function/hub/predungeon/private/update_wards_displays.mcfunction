# Update displays showing health of remaining wards

## CONSTRAINTS
#   AS primary player in predungeon

#===============================================================================================================

# Move scores to data
execute store result storage exigence:temp SapphireWard int 1 run scoreboard players get @s WardSapphire
execute store result storage exigence:temp EmeraldWard int 1 run scoreboard players get @s WardEmerald
execute store result storage exigence:temp TopazWard int 1 run scoreboard players get @s WardTopaz
execute store result storage exigence:temp AmethystWard int 1 run scoreboard players get @s WardAmethyst
execute store result storage exigence:temp RubyWard int 1 run scoreboard players get @s WardRuby

# Call macro
function exigence:hub/predungeon/private/update_wards_displays_macro with storage exigence:temp

data remove storage exigence:temp SapphireWard
data remove storage exigence:temp EmeraldWard
data remove storage exigence:temp TopazWard
data remove storage exigence:temp AmethystWard
data remove storage exigence:temp RubyWard 
