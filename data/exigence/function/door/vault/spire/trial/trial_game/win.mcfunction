# Called by trial.tick when win condition is met

## CONSTRAINTS
#   AS player

#====================================================================================================

# Teleport to vault chamber
tp @s -345.5 152.0 -9.5 -90 0

# Setup pots (trial gets setup on game start)
execute if entity @s[tag=Crucible] as @e[x=488,y=-1,z=535,dx=0,dy=1,dz=0,type=minecraft:marker,tag=PotMarker,tag=spire] run function exigence:door/vault/spire/setup/setup_pot_crucible_a with entity @s data.custom_data

# Give win scores
scoreboard players add @s[tag=Trial] profile.data.vaults.cr.spire_trial_win 1
scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.spire_crucible_win 1

# Give advancement
#   Always give trial unlock
#execute as @s[tag=Trial] run 
function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"trial_spire"}
execute as @s[tag=Crucible] run function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"crucible_spire"}

# COOP - Show title to all other players
execute if entity @s[tag=Trial] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 5 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=5},tag=Game]",color:"dark_aqua"},\
{text:" completed the ",color:"gray"},{text:"Trial of Spire ",color:"yellow"},{sprite:"minecraft:item/spire_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 5 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=5},tag=Game]",color:"dark_aqua"},\
{text:" completed the ",color:"gray"},{text:"Crucible of Spire ",color:"light_purple"},{sprite:"minecraft:item/spire_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 5 run title @s title ""