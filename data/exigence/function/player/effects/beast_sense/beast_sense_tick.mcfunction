# Call level subfunction for beastsense based on this player's active level

## CONSTRAINTS
#   AS active player with dead=0, beast sense=1..

#==================================================================================================

# Call bi-secondly to reduce lag
execute if score SecondsCooldown TickCounter matches 7 run function exigence:player/effects/beast_sense/private/beast_sense_level
execute if score SecondsCooldown TickCounter matches 17 run function exigence:player/effects/beast_sense/private/beast_sense_level

# If there are any ravagers left with the StartingSpeed boost, remove it so the player can't see them move fast via glow
#effect clear @e[type=ravager,tag=StartingSpeed] speed
#tag @e[type=ravager,tag=StartingSpeed] remove StartingSpeed
