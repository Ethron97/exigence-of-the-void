# Call from exigence:compass storage
# Or with name,x,y,z,lore

$give @s minecraft:compass[lore=$(lore),custom_name=$(name),custom_data={echo_id:$(echo_id),is_soulbound:true},lodestone_tracker={target:{pos:[$(x),$(y),$(z)],dimension:"$(dimension)"},tracked:false}]
