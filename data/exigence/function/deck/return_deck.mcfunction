
execute as @e[type=minecraft:armor_stand,tag=Card,tag=!ReturnCard,tag=Played] run function exigence:deck/post_process/remove_card with entity @s equipment.mainhand.components."minecraft:custom_data"

#================================================================================================
# OLD
# Collects the items from all armorstands and gives them to the player
#say Return deck
#execute unless entity @e[type=minecraft:armor_stand,tag=ReturnCard] run say WHY ARE TEHRE NO RETURN CARDS
#execute as @e[type=minecraft:armor_stand,tag=Card,tag=ReturnCard] run function exigence:deck/return_card with entity @s equipment.mainhand.components."minecraft:custom_data"
#kill @e[type=minecraft:armor_stand,tag=Card]