# Called by trial.tick when loss condition is met

## CONSTRAINTS
#   AS player

#====================================================================================================

# Teleport to vault chamber
tp @s -424.5 152.0 -17.5 90 0

# Setup pots
#execute if entity @s[tag=Trial] as @e[x=487,y=-1,z=455,dx=0,dy=1,dz=0,type=minecraft:marker,tag=PotMarker,tag=bolt,tag=!Crucible] run function exigence:door/vault/bolt/setup/setup_pot_trial_a with entity @s data.custom_data
execute if entity @s[tag=Crucible] as @e[x=487,y=-1,z=455,dx=0,dy=1,dz=0,type=minecraft:marker,tag=PotMarker,tag=bolt] run function exigence:door/vault/bolt/setup/setup_pot_crucible_a with entity @s data.custom_data

# If game is active, give begin scores
execute if score game.is_active game.state matches 1 run scoreboard players add @s[tag=Trial] profile.data.vaults.cr.bolt_trial_win 1
execute if score game.is_active game.state matches 1 run scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.bolt_crucible_win 1

# Give advancement
execute if score game.is_active game.state matches 1 as @s[tag=Trial] run function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"trial_bolt"}
execute if score game.is_active game.state matches 1 as @s[tag=Crucible] run function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"crucible_bolt"}

# Reset vault
function exigence:door/vault/bolt/trial/reset

# Win
function exigence:door/vault/_trial/_win

