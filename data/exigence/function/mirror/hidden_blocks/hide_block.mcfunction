# Call as hidden_block entity

tag @s remove Revealed
tag @s remove Appeared
tag @s remove Appearing
execute at @s run kill @e[distance=..1,type=minecraft:block_display,tag=!HiddenBlockDebug,tag=RevealedBlock]

playsound minecraft:block.end_portal_frame.fill neutral @a ~ ~ ~ 1 0.3