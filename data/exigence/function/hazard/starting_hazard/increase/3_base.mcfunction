# Mark 1 random HazardNode on level 3 to start triggered

#====================================================================================================

execute in minecraft:overworld run tag @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=HazardNode,tag=!StartingHazard,sort=random,limit=1] add StartingHazard

scoreboard players add @a[tag=Predungeon] profile.data.hazard.cr.hazard_setup_L3 1