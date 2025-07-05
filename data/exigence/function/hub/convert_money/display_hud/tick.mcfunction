# Execute at player who just finished dungoen
execute as @a[tag=ConvertingCoins] at @s anchored eyes positioned ^ ^ ^2 as @e[type=minecraft:item_display,tag=ConvertMoneyCoinDisplay] run function exigence:hub/convert_money/display_hud/private/holding_ring

# Turn the non spiral ones
scoreboard players add @e[type=minecraft:item_display,tag=ConvertMoneyCoinDisplay] HoldingRingPos 1

# Accelerate Spiral displays toward center
scoreboard players add @e[type=minecraft:item_display,tag=ConvertMoneyCoinDisplay,tag=Spiral] HoldingRingPos 3
scoreboard players add @e[type=minecraft:item_display,tag=ConvertMoneyCoinDisplay,tag=Spiral] HoldingRingRadius 1

# Continue all around circle seamlessly
scoreboard players operation @e[type=minecraft:item_display,tag=ConvertMoneyCoinDisplay] HoldingRingPos %= 360 number


#scoreboard players operation @e[type=minecraft:item_display,tag=ConvertMoneyCoinDisplay,tag=Spiral] HoldingRingRadius %= 20 number