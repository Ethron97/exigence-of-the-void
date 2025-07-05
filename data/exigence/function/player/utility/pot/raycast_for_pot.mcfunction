execute if entity @s[distance=..3] if block ^ ^ ^ minecraft:decorated_pot run function exigence:player/give/pot_breaker
execute if entity @s[distance=..3] unless block ^ ^ ^ minecraft:decorated_pot positioned ^ ^ ^0.3 run function exigence:player/utility/pot/raycast_for_pot
