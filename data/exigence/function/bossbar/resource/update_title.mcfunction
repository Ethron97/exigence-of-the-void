# Update resources needed bossbar title

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) Update resources needed bossbar

# Recalc resources needed
function exigence:deck/process/reset_analyze_scores
# Analyze as each card in deck
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=!Played,tag=!Spellbound] run function exigence:deck/process/card_analyze_card with entity @s equipment.mainhand.components."minecraft:custom_data"

# If resources are 0, only show to players with full (if not in a vault)
execute if score resource.green.consume deck.analysis matches 0 if score resource.red.consume deck.analysis matches 0 if score resource.aqua.consume deck.analysis matches 0 run \
bossbar set exigence:resources players @a[scores={game.player.vault_code=0,career.settings.resource_bossbar_style=2}]

# If resources > 0, show to players with dynamic+ (if not in a vault)
execute if score resource.green.consume deck.analysis matches 1.. run bossbar set exigence:resources players @a[scores={game.player.vault_code=0,career.settings.resource_bossbar_style=1..}]
execute if score resource.red.consume deck.analysis matches 1.. run bossbar set exigence:resources players @a[scores={game.player.vault_code=0,career.settings.resource_bossbar_style=1..}]
execute if score resource.aqua.consume deck.analysis matches 1.. run bossbar set exigence:resources players @a[scores={game.player.vault_code=0,career.settings.resource_bossbar_style=1..}]

bossbar set exigence:resources name [{text:"Resources Needed: ",color:"white"},{"score":{"name":"resource.green.consume","objective":"deck.analysis"},color:"dark_green"}," ",{"score":{"name":"resource.red.consume","objective":"deck.analysis"},color:"dark_red"}," ",{"score":{"name":"resource.aqua.consume","objective":"deck.analysis"},color:"aqua"}]
