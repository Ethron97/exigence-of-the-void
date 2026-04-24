# Called by advancement

# Revoke to reset
advancement revoke @s only exigence:listener/consume/eat_melon_slice

# Return if game is not active
execute unless entity @s[tag=ActivePlayer] unless score game.is_active game.state matches 1 run return 1
#----------------------------------------------------------------------------------------------------

#say Eat berry

# Increase score
scoreboard players add @s profile.data.berry.cr.berries_eaten 1

# Ambrosia
execute if score mod.ambrosia game.modifiers matches 1.. run function exigence:cards/ambrosia/private/eat
