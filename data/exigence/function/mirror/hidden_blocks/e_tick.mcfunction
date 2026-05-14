# Called by game_tick e_tick

## CONSTRAINTS
#   AS/AT hidden block (marker)

#====================================================================================================

# Un-reveal any blocks further than 16 blocks from a player
#   They get revealed from player tick mirror helmet, or stepping on barrier advancement
execute if entity @s[tag=ReflectionNO,tag=Revealed] unless entity @a[tag=ActivePlayer,distance=..16] run return run function exigence:mirror/hidden_blocks/hide_block

# Hide block that the player REFLECTION is no longer standing on
#   They get revealed from mirror/reflection/private/tp_reflection
execute if entity @s[tag=ReflectionYES,tag=Revealed] align xyz positioned ~-0.5 ~0.2 ~-0.5 unless entity @e[dx=1,dy=0,dz=1,type=minecraft:mannequin,tag=Reflection,distance=..2,limit=1] run function exigence:mirror/hidden_blocks/hide_block
