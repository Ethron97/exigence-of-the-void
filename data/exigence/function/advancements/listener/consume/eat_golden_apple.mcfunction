# Called by advancement

# Revoke to reset
advancement revoke @s only exigence:listener/consume/eat_golden_apple

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

# If game.player.mod.regen_mantle = 6, +1 max health
# (GOlden Apple gives regen naturally, bypassing our trigger)
execute if score @s game.player.mod.regen_mantle matches 6 run function exigence:player/attributes/health_boost/increase_health {boost:2}