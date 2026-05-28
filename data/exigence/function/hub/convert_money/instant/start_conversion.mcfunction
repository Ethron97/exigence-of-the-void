# Convert money instantly without any sort of animation
# Meant to be called if a player was logged out

## CONSTRAINTS
#   AS player
#   WITH SCORE hub.coin_conversion already set / gold nuggets already cleared

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Start Coin Conversion (Instant)

# Don't reset variables here because this might be called to "finish" one of the other conversions

# If came from SlowConversion, add leftover
execute if entity @s[tag=SlowConversion] run function exigence:hub/convert_money/instant/private/fix_slow_interruption

# Start recursion
execute if score @s hub.coin_conversion matches ..4 run return run function exigence:hub/convert_money/finish_converting
execute if score @s hub.coin_conversion matches 5.. run function exigence:hub/convert_money/instant/private/convert