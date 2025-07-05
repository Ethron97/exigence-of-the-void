
scoreboard players add Fatigue TimesPlayed 1
scoreboard players add Fatigue TimesPlayedTotal 1
execute store result storage exigence:temp times_played int 1 run scoreboard players get Fatigue TimesPlayed

# Get highest played score to keep sidebar ordered
scoreboard players add #Highest CardsPlayed 1
execute store result storage exigence:temp score int 1 run scoreboard players get #Highest CardsPlayed

data modify storage exigence:temp spellsling set value ""
data modify storage exigence:temp recycled set value ""
data modify storage exigence:temp instant set value ""
function exigence:cards/add_sidebar_display_macro_fatigue with storage exigence:temp
