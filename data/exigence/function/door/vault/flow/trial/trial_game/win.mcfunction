# Called by trial.tick when win condition is met

## CONSTRAINTS
#   AS player

#====================================================================================================

# Teleport to vault chamber
tp @s -345.5 152.0 -25.5 -90 0

# Setup pots (trial gets setup on game start)
execute if entity @s[tag=Crucible] as @e[x=488,y=-1,z=504,dx=0,dy=1,dz=0,type=minecraft:marker,tag=PotMarker,tag=flow] run function exigence:door/vault/flow/setup/setup_pot_crucible_a with entity @s data.custom_data

# Give win scores
scoreboard players add @s[tag=Trial] profile.data.vaults.cr.flow_trial_win 1
scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.flow_crucible_win 1

# Give advancement
execute as @s[tag=Trial] run function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"trial_flow"}
execute as @s[tag=Crucible] run function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"crucible_flow"}

# COOP - Show title to all other players
execute if entity @s[tag=Trial] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 6 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=6},tag=Game]",color:"dark_aqua"},\
{text:" completed the ",color:"gray"},{text:"Trial of Motion ",color:"yellow"},{sprite:"minecraft:item/flow_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 6 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=6},tag=Game]",color:"dark_aqua"},\
{text:" completed the ",color:"gray"},{text:"Crucible of Motion ",color:"light_purple"},{sprite:"minecraft:item/flow_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 6 run title @s title ""