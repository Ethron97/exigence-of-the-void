# Called by profile_tick

## CONSTRAINTS
#   AS player (score quit=1..)

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) Player logged in

scoreboard players set @s quit 0

# Add local tag
tag @s add JustLoggedIn

# Call player node
scoreboard players operation #compare career.player_id = @s career.player_id
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15] if score @s profile.node.player_id = #compare career.player_id \
run function exigence:profile/player_node/calls/player_logged_in

# If you are logging back in with a co-op profile selected, re-sync advancements (in case other players researched etc)
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.player.profile_id at @s as @a if score @s profile.player.profile_id = #compare profile.player.profile_id \
run function exigence:profile/player/call_grant_advancements_from_scores

# Check if logged out while coin converting:
execute if score @s hub.coin_conversion.glint_owed matches 1.. run function exigence:hub/convert_money/instant/start_conversion
# Or if queued:
execute if entity @s[tag=QueueCoinConversion] run function exigence:hub/convert_money/instant/start_conversion
# Or if converting:
execute if entity @s[tag=ConvertingCoins] run function exigence:hub/convert_money/instant/start_conversion

# Enable admin triggers
execute if entity @s[tag=Admin] run function exigence:misc/triggers/admin/enable_all_admin_triggers

# Clear other misc tags
tag @s remove OpeningVault

# Remove local tag
tag @s remove JustLoggedIn