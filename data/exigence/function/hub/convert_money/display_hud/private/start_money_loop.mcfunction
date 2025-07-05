#say Start money loop

# Choose 5 coins to start spiraling
execute as @e[type=minecraft:item_display,tag=ConvertMoneyCoinDisplay,tag=!Spiral,sort=random,limit=5] run tag @s add Spiral 

# Subtract 5 from CoinsToConvert
#scoreboard players remove Coins CoinsToConvert 5

# Schedule function 1 second later to kill those coins and give money, and if there are 5+ coins to do this again
schedule function exigence:hub/convert_money/display_hud/private/convert_money_loop 20t append