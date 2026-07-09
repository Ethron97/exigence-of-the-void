# Join team based on player number

## CONSTRAINTS
#   AS player

#====================================================================================================

team join ItemShop @s
execute if score @s profile.player.coop_profile_index matches 0..1 run return run team join ItemShop1 @s
execute if score @s profile.player.coop_profile_index matches 2 run return run team join ItemShop2 @s
execute if score @s profile.player.coop_profile_index matches 3 run return run team join ItemShop3 @s
execute if score @s profile.player.coop_profile_index matches 4 run return run team join ItemShop4 @s
