# Called by trial.tick when win condition is met

## CONSTRAINTS
#   AS player

#====================================================================================================

# Teleport to vault chamber
tp @s -345.5 152.0 6.5 -90 0

# Setup pots (trial gets setup on game start)
execute if entity @s[tag=Crucible] as @e[x=487,y=-1,z=487,dx=0,dy=1,dz=0,type=minecraft:marker,tag=PotMarker,tag=eye] run function exigence:door/vault/eye/setup/setup_pot_crucible_a with entity @s data.custom_data

# Give win scores
scoreboard players add @s[tag=Trial] profile.data.vaults.cr.eye_trial_win 1
scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.eye_crucible_win 1

# Give advancement
#   Always give trial unlock
#execute as @s[tag=Trial] run 
function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"trial_eye"}
execute as @s[tag=Crucible] run function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"crucible_eye"}

# COOP - Show title to all other players
execute if entity @s[tag=Trial] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 4 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=4},tag=Game]",color:"dark_aqua"},\
{text:" completed the ",color:"gray"},{text:"Trial of Sight ",color:"yellow"},{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 4 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=4},tag=Game]",color:"dark_aqua"},\
{text:" completed the ",color:"gray"},{text:"Crucible of Sight ",color:"light_purple"},{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 4 run title @s title ""