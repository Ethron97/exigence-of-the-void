# Kick after logging in after logging out/dying

## CONSTRAINTS
#   AS player

#=====================================================================================================

execute unless score @s profile.player.coop_profile_id matches 1.. run tellraw @s [{text:"💀 Lost due to disconnect",color:red}]
execute if score @s profile.player.coop_profile_id matches 1.. run tellraw @s [{text:"💀 Died due to disconnect",color:red}]

# Clear appropriate amount of keepable items
tag @s add ClearDontDrop
function exigence:player/drop/coins/drop
function exigence:player/drop/glint/drop
function exigence:player/drop/research/drop
tag @s remove ClearDontDrop

# Clear remaining items
clear @s #exigence:drop_on_death
# If VaultKeep is 1, do not clear vault keys
clear @s[scores={game.player.mod.vault_keep=0}] #exigence:vault_key
# If void bundle, do not clear consumables
clear @s[scores={game.player.mod.void_bundle=0}] #exigence:consumable

# Run the died function
function exigence:player/death/died_common

# Leave
function exigence:game/access/leave

# Do basic instant coin conversion
function exigence:hub/convert_money/instant/start_conversion

# tp loss location
execute in exigence:hub run tp @s 12.5 199.0 -11.5
