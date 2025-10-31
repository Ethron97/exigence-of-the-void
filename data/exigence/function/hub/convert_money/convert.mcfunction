# Call as player, regardless of whether it is win or loss

say General convert

tag @a remove ConvertingCoins
tag @s add ConvertingCoins

# Add 0 to initialize
scoreboard players add @s career.settings.coin_conversion_style 0

# Choose conversion style based on setting
execute if score @s career.settings.coin_conversion_style matches 0 run schedule function exigence:hub/convert_money/item_smash/convert_money 20t
execute if score @s career.settings.coin_conversion_style matches 1 run schedule function exigence:hub/convert_money/display_hud/convert_money 20t
execute if score @s career.settings.coin_conversion_style matches 2 run schedule function exigence:hub/convert_money/instant/convert_money 20t
