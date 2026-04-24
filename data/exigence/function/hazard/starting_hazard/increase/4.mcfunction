# Mark 1 random HazardNode on level 4 to start triggered

#====================================================================================================

execute in minecraft:overworld run tag @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=HazardNode,tag=!StartingHazard,sort=random,limit=1] add StartingHazard

scoreboard players add @a[tag=Predungeon] profile.data.hazard.cr.hazard_card_L1 1