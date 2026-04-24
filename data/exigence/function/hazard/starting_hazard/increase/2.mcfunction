# Mark 1 random HazardNode on level 2 to start triggered

#====================================================================================================

execute in minecraft:overworld run tag @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=HazardNode,tag=!StartingHazard,sort=random,limit=1] add StartingHazard

scoreboard players add @a[tag=Predungeon] profile.data.hazard.cr.hazard_card_L1 1