# Kick after logging in after logging out during exalt (campaign win)

## CONSTRAINTS
#   AS player

#=====================================================================================================

#execute unless score @s profile.player.coop_profile_id matches 1.. run tellraw @s [{text:"💀 Lost due to disconnect",color:red}]
#execute if score @s profile.player.coop_profile_id matches 1.. run tellraw @s [{text:"💀 Died due to disconnect",color:red}]

# Clear effects
effect clear @s

# Convert placeholder void items to actual armor loot
execute at @s positioned ~ ~10 ~ run function exigence:player/utility/armor/void_armor/check_for_placeholders

# Clear specific items
clear @s #exigence:win_clear
# If VaultKeep is 1, do not clear vault keys
clear @s[scores={game.player.mod.vault_keep=0}] #exigence:vault_key

# Leave
function exigence:game/access/leave

# Do basic instant coin conversion
function exigence:hub/convert_money/instant/start_conversion
