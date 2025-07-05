# Recalc resources needed
function exigence:deck/process/reset_analyze_scores
# Analyze as each card in deck
execute as @e[type=minecraft:armor_stand,tag=Card,tag=!Played,tag=!Spellbound] run function exigence:deck/process/card_analyze_card with entity @s equipment.mainhand.components."minecraft:custom_data"

bossbar set exigence:resources name [{text:"Resources Needed: ",color:"white"},{"score":{"name":"GreenConsume","objective":"DeckAnalysis"},color:"dark_green"}," ",{"score":{"name":"RedConsume","objective":"DeckAnalysis"},color:"dark_red"}," ",{"score":{"name":"AquaConsume","objective":"DeckAnalysis"},color:"aqua"}]
