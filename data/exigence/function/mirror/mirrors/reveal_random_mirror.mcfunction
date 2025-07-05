# Reveal all hidden blocks for one mirror that has not already had this applied

## CONSTRAINTS
#   AS mirror node

#======================================================================================================

# DEBUG
say Revealing

# Add tag
tag @s add RevealedMirror

# Reveal blocks
execute if entity @s[tag=4wide] run tag @e[type=marker,tag=HiddenBlock,tag=ReflectionNO,tag=four_wide] add Discovered
execute if entity @s[tag=45d] run tag @e[type=marker,tag=HiddenBlock,tag=ReflectionNO,tag=45_degree] add Discovered
execute if entity @s[tag=3wide] run tag @e[type=marker,tag=HiddenBlock,tag=ReflectionNO,tag=three_wide] add Discovered
execute if entity @s[tag=3way] run tag @e[type=marker,tag=HiddenBlock,tag=ReflectionNO,tag=intersection] add Discovered
