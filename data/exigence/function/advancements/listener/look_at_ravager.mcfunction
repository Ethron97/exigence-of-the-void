# Reset advancement
advancement revoke @s only exigence:listener/look_at_ravager

# if game is not active, remove early
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

# If detect thoughts active, call function
execute as @s[scores={effect_detectthoughts=1..}] run function exigence:player/effects/detect_thoughts/check_looking
