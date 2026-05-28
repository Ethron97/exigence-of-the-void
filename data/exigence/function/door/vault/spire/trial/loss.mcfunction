# Called by trial.tick when loss condition is met

## CONSTRAINTS
#   AS Trial Node

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Spire trial loss

# Reset vault
execute at @s run function exigence:door/vault/spire/trial/reset

# Try loss function as player, else queue
scoreboard players set #invoke_failure Temp 0
execute if score game.is_active game.state matches 1 if entity @s[tag=Game] run scoreboard players set #invoke_failure Temp 1

scoreboard players operation #compare career.player_id = @s hub.entity.player_id
## INPUT: invoke_failure
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #compare career.player_id \
run function exigence:door/vault/_trial/_try_loss
