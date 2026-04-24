# Give pointer compass

## CONSTRAINTS
#   AS player

## INPUT
#   STR lore
#   STR name
#   STR dimension
#   INT echo_id
#   INT x
#   INT y
#   INT z

#====================================================================================================

$give @s minecraft:compass[lore=$(lore),custom_name=$(name),custom_data={echo_id:$(echo_id),is_soulbound:true},lodestone_tracker={target:{pos:[$(x),$(y),$(z)],dimension:"$(dimension)"},tracked:false}]
