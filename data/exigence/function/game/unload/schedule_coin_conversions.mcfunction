# Called from game_off to give a breather before dingdingindingidngidn

#=====================================================================================================

# If every player has Instant enabled, we have to manually call the leftovers
execute unless entity @a[tag=QueueCoinConversion,scores={career.settings.coin_conversion_style=1..}] \
as @r[tag=QueueCoinConversion,scores={career.settings.coin_conversion_style=0}] run function exigence:hub/convert_money/leftovers/start_conversion

# As all players online who have coins to convert...
execute as @a[tag=QueueCoinConversion] run function exigence:hub/convert_money/start_convert
