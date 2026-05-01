#say (D3) Step on barrier

# Reset advancement
advancement revoke @s only exigence:listener/step_on_barrier

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

# Reveal block that the player is standing on
execute at @s positioned ~ ~-1 ~ as @e[type=minecraft:marker,tag=HiddenBlock,tag=ReflectionNO,tag=!Revealed,tag=!Appeared,distance=..1] at @s run function exigence:mirror/hidden_blocks/reveal_block
