# Trigger from mirror_tick every second

## CONSTRAINTS
#   AS player (not dead)
#   IF game.player.mod.mirror_vision > 0

#=============================================================================================================

# Every second, get random hidden block and reveal it
execute at @s as @e[distance=..5,type=minecraft:marker,tag=HiddenBlock,tag=ReflectionNO,tag=!Revealed,tag=!Appeared,limit=1,sort=random] at @s run function exigence:mirror/hidden_blocks/reveal_block

# Un-reveal any hidden blocks further than 3 blocks (unless it was appeared by dust of appearance)
#execute at @a[tag=ActivePlayer] as @e[distance=6..,type=minecraft:marker,tag=HiddenBlock,tag=ReflectionNO,tag=Revealed,tag=!Appeared] at @s run function exigence:mirror/hidden_blocks/hide_block
