# Tick on all items

## CONSTRAINTS
#   AS/AT item

#====================================================================================================

# Glow tick
execute if score @s game.entity.glow_remaining matches 1.. unless entity @s[tag=GlowInked] run function exigence:game/game_tick/e_tick/item/glow_tick

## SWITCH
execute if entity @s[tag=VaultKey] run return run function exigence:game/game_tick/e_tick/item/vault_key
execute if entity @s[tag=LevelKey] run return run function exigence:game/game_tick/e_tick/item/level_key
execute if entity @s[tag=EchoShard] run return run function exigence:game/game_tick/e_tick/item/echo_shard
execute if entity @s[tag=Ardor] run return run function exigence:game/game_tick/e_tick/item/ardor