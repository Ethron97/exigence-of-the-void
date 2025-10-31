$scoreboard players add card.$(card_name) game.cards_played.times_played 1
$execute if data storage exigence:debug {void:0} run scoreboard players add card.$(card_name) TimesPlayedTotal 1
$execute store result storage exigence:temp times_played int 1 run scoreboard players get card.$(card_name) game.cards_played.times_played

$execute store result storage exigence:temp times_processed int 1 run scoreboard players get $(card_name) game.cards_played.times_processed

$scoreboard players operation #can_played game.cards_played.times_processed = card.$(card_name) game.cards_played.times_processed
$scoreboard players operation #can_played game.cards_played.times_processed += card.$(card_name) game.cards_played.times_recycled
execute store result storage exigence:temp times_can_played int 1 run scoreboard players get #can_played game.cards_played.times_processed
