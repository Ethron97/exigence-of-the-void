# Execute at active player
#say trigger dust of appearance

# Playsound
playsound minecraft:item.firecharge.use ambient @a ^ ^ ^3 1 1.5

# Particles
particle minecraft:dust_color_transition{from_color:[1.0f,0.91f,0.36f],scale:1.0f,to_color:[0.88f,0.26f,1.0f]} ^ ^2 ^4 3 0.5 3 0.1 50

# Select nearby hidden blocks to reveal
tag @e[distance=..15,type=minecraft:marker,tag=HiddenBlock,tag=ReflectionNO,tag=!Appeared,tag=!Appearing] add Appearing

# Begin loop to reveal blocks one tick at a time
function exigence:hub/item_shop/frame/item/dust_of_appearance/private/trigger_loop

