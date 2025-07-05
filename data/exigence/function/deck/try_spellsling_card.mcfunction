# Check if player has the resources before actually trying to play the card

## CONSTRAINTS
#   AS active player

#====================================================================================================

#$say Try spellsling $(card_name)

tag @s add Spellslinging

# Get cost
$function exigence:cards/get_cost {card_name:"$(card_name)"}

# Test consume
function exigence:resources/test_consume

# If can afford, play
$execute if score LastConsumeTest Resources matches 1 run function exigence:deck/spellsling_card {card_name:'$(card_name)'}

# If cannot afford, message
execute if score LastConsumeTest Resources matches 0 run say Cannot afford to play
execute if score LastConsumeTest Resources matches 0 at @s run playsound minecraft:block.fire.extinguish ambient @s ~ ~1000 ~ 1000 1

tag @s remove Spellslinging
