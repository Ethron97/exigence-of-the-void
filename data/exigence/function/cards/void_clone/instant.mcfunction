say +1 Void Merchant on level 3, +1 Hazard on level 3 (+1 Hazard per player in COOP)

scoreboard players add VoidMerchants Modifiers 1

# Increase StartingHazard by 1 on level 3
execute as @a[tag=ActivePlayer] run tag @e[type=minecraft:armor_stand,tag=HazardNode,tag=!StartingHazard,scores={ObjectLevel=3},limit=1,sort=random] add StartingHazard
