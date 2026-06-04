# Check if player has the resources before actually trying to play the card

## CONSTRAINTS
#   AS active player

#====================================================================================================

$execute if score toggle.deck debug matches 1 if score debug.level debug matches 3.. run say (D3) Try spellsling $(card_name)

tag @s add Spellslinging

# Get cost
$function exigence:cards/get_cost {card_name:"$(card_name)"}

# Test consume
function exigence:resources/test_consume

# If can afford, play
$execute if score #LastConsumeTest game.resources matches 1 run function exigence:deck/spellsling_card {card_name:'$(card_name)'}

# If cannot afford, message
execute if score #LastConsumeTest game.resources matches 0 run tellraw @s [{text:"✖ Cannot afford to play",color:"red"}] 
execute if score #LastConsumeTest game.resources matches 0 at @s run playsound minecraft:block.fire.extinguish ambient @s ~ ~1000 ~ 1000 1

tag @s remove Spellslinging
