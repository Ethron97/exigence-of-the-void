# More of a remove-played-voids rather than return-deck, as the cards never left the chest

#====================================================================================================

execute in minecraft:overworld as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=!ReturnCard,tag=Played] run function exigence:deck/post_process/remove_card with entity @s equipment.mainhand.components."minecraft:custom_data"
