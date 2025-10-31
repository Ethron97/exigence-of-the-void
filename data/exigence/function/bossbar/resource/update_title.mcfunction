# Recalc resources needed
function exigence:deck/process/reset_analyze_scores
# Analyze as each card in deck
execute as @e[type=minecraft:armor_stand,tag=Card,tag=!Played,tag=!Spellbound] run function exigence:deck/process/card_analyze_card with entity @s equipment.mainhand.components."minecraft:custom_data"

# If resources are 0, only show to players with full (if not in a vault)
execute if score Green.Consume deck.analysis matches 0 if score Red.Consume deck.analysis matches 0 if score Aqua.Consume deck.analysis matches 0 run \
bossbar set exigence:resources players @a[scores={game.player.vault_code=0,career.settings.resource_bossbar_style=2}]

# If resources > 0, show to players with dynamic+ (if not in a vault)
execute if score Green.Consume deck.analysis matches 1.. run bossbar set exigence:resources players @a[scores={game.player.vault_code=0,career.settings.resource_bossbar_style=1..}]
execute if score Red.Consume deck.analysis matches 1.. run bossbar set exigence:resources players @a[scores={game.player.vault_code=0,career.settings.resource_bossbar_style=1..}]
execute if score Aqua.Consume deck.analysis matches 1.. run bossbar set exigence:resources players @a[scores={game.player.vault_code=0,career.settings.resource_bossbar_style=1..}]

bossbar set exigence:resources name [{text:"Resources Needed: ",color:"white"},{"score":{"name":"Green.Consume","objective":"deck.analysis"},color:"dark_green"}," ",{"score":{"name":"Red.Consume","objective":"deck.analysis"},color:"dark_red"}," ",{"score":{"name":"Aqua.Consume","objective":"deck.analysis"},color:"aqua"}]
