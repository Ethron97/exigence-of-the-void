# Select node on level 4 to spawn crystal at

## CONSTRAINTS
#   IN minecraft:overworld

## OUTPUT
#   Node on level 4 with tag NewChosenCrystal

#====================================================================================================

execute if score toggle.wards debug matches 1 if score debug.level debug matches 3.. run say (D3) Choose node

## OUTPUT
tag @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,tag=CrystalCandidate,tag=!ChosenCrystal,sort=random,limit=1] add NewChosenCrystal
