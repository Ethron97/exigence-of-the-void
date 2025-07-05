# Called by play

execute as @a[tag=ActivePlayer,scores={dead=0,cr_effect_glimmer=1..}] run function exigence:cards/truesight/private/give_effect {effect:'glimmer',display:'Glimmer'}
execute as @a[tag=ActivePlayer,scores={dead=0,cr_effect_flicker=1..}] run function exigence:cards/truesight/private/give_effect {effect:'flicker',display:'Flicker'}
execute as @a[tag=ActivePlayer,scores={dead=0,cr_effect_beastsense=1..}] run function exigence:cards/truesight/private/give_effect {effect:'beastsense',display:'Beastsense'}
tellraw @a[tag=ActivePlayer,scores={dead=0,cr_effect_beastsense=0,cr_effect_glimmer=0,cr_effect_flicker=0}] {text:"   No effect time to give",color:"gray",italic:true}
