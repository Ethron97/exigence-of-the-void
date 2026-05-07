# Award player functions after opening a vault (without waiting for animation)

## CONSTRAINTS
#   AS player

## INPUT
#   STR vault

#====================================================================================================

# Update scoreboards
scoreboard players add @s profile.data.vaults.cr.vaults_opened 1

# Give "opened_" advancement
#   Only if on level 1 or 2, because if they are on level 3 they need to win the trial to unlock.
$execute if score @s game.player.active_level matches 1..2 run function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"opened_$(vault)"}
