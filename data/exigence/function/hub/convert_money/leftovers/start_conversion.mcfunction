# Called by the first player to run out of coins to convert
#   or first player who didn't have enough to start converting

# Essentially identical to "instant", but pulling from leftovers instead

## CONSTRAINTS
#   AS player

#====================================================================================================

say (D3) Start converting Leftovers

# Reset scores
scoreboard players set #leftover hub.coin_conversion.coins_converted 0
scoreboard players set #leftover hub.coin_conversion.money_converted 0

# Return if not enough to convert
execute unless score coins.leftover hub.coin_conversion matches 5.. run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Start converting Leftovers (B)

# It should always be co-op when this is called because you can't have enough leftovers for a Glint in solo (it would just do a normal convert)

# Get player who is owed the least glint on this profile
scoreboard players operation #compare profile.player.coop_profile_id = @s profile.player.coop_profile_id
scoreboard players set #temp Temp 999999

# Tag co-op players to message
execute as @a if score @s profile.player.coop_profile_id = #compare profile.player.coop_profile_id run tag @s add AmstCoop

execute as @a[tag=AmstCoop] run scoreboard players operation #temp Temp < @s hub.coin_conversion.glint_owed
execute as @a[tag=AmstCoop] if score @s hub.coin_conversion.glint_owed = #temp Temp run tag @s add AmstOwed

# Start recursion as random player on co-op with lowest (or tied) glint owed
execute as @r[tag=AmstOwed] run function exigence:hub/convert_money/leftovers/private/convert
tag @a[tag=AmstCoop] remove AmstCoop
tag @a[tag=AmstOwed] remove AmstOwed
