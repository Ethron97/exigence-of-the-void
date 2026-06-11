# More of a remove-played-voids rather than return-deck, as the cards never left the chest

#====================================================================================================

execute if score toggle.deck debug matches 1 if score debug.level debug matches 3.. run say (D3) Return deck

# If there is any VoidKeep, apply now
execute store result storage exigence:temp i int 1 run scoreboard players get mod.void_keep game.modifiers
execute if score mod.void_keep game.modifiers matches 1.. run function exigence:deck/post_process/apply_void_keep with storage exigence:temp

# Remove played non-return cards
execute in minecraft:overworld as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=!ReturnCard,tag=Played] run function exigence:deck/post_process/remove_card with entity @s equipment.mainhand.components."minecraft:custom_data"
