# Mark 1 random HazardNode on level 1 to start triggered

#====================================================================================================

execute in minecraft:overworld run tag @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=HazardNode,tag=!StartingHazard,sort=random,limit=1] add StartingHazard

scoreboard players add @a[tag=Predungeon] profile.data.hazard.cr.hazard_card_L1 1