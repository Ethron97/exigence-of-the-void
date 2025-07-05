$scoreboard players add $(card_name) TimesPlayed 1
$execute if data storage exigence:debug {void:0} run scoreboard players add $(card_name) TimesPlayedTotal 1
$execute store result storage exigence:temp times_played int 1 run scoreboard players get $(card_name) TimesPlayed

$execute store result storage exigence:temp times_processed int 1 run scoreboard players get $(card_name) TimesProcessed

$scoreboard players operation #can_played TimesProcessed = $(card_name) TimesProcessed
$scoreboard players operation #can_played TimesProcessed += $(card_name) TimesRecycled
execute store result storage exigence:temp times_can_played int 1 run scoreboard players get #can_played TimesProcessed
