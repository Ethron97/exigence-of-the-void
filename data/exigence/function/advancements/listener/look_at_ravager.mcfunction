# Reset advancement
advancement revoke @s only exigence:listener/look_at_ravager

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

# If detect thoughts active, call function
execute as @s[scores={game.player.effects.detectthoughts=1..}] run function exigence:player/effects/detect_thoughts/check_looking
