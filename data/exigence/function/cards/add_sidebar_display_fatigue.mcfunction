
scoreboard players add card.Fatigue game.cards_played.times_played 1
scoreboard players add card.Fatigue TimesPlayedTotal 1
execute store result storage exigence:temp times_played int 1 run scoreboard players get card.Fatigue game.cards_played.times_played

# Get highest played score to keep sidebar ordered
scoreboard players add #Highest game.cards_played 1
execute store result storage exigence:temp score int 1 run scoreboard players get #Highest game.cards_played

data modify storage exigence:temp spellsling set value ""
data modify storage exigence:temp recycled set value ""
data modify storage exigence:temp instant set value ""
function exigence:cards/add_sidebar_display_macro_fatigue with storage exigence:temp
