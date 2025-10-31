# Update reflection armor to match their player

## CONSTRAINTS
#   AS armor_stand Reflection
#   Assumes player has tag "Reflecting"

#======================================================================================================

#say Matching equipment

## ARMOR/HANDS
item replace entity @s armor.feet from entity @p[tag=Reflecting] armor.feet
item replace entity @s armor.legs from entity @p[tag=Reflecting] armor.legs
item replace entity @s armor.chest from entity @p[tag=Reflecting] armor.chest

item replace entity @s weapon.mainhand from entity @p[tag=Reflecting] weapon.mainhand
item replace entity @s weapon.offhand from entity @p[tag=Reflecting] weapon.offhand


## HELMET
# Add tag to playernode
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s profile.node.player_id = @p[tag=Reflecting] career.player_id run tag @s add GrabHead

# 1/1000 change to flash wither skeleton skull for the jump scare
#   Too glitchy
#execute if score @s Random matches 2.. run scoreboard players remove @s Random 1
#execute if score @s Random matches ..97 store result score @s Random run random value 1..100

#execute if score @s Random matches 1..99 run item replace entity @s armor.head from entity @e[type=minecraft:armor_stand,tag=GrabHead,limit=1] armor.head
#execute if score @s Random matches 100 run item replace entity @s armor.head with wither_skeleton_skull
#execute if score @s Random matches 100 run say boo!

execute unless items entity @s armor.head * run item replace entity @s armor.head from entity @e[type=minecraft:armor_stand,tag=GrabHead,limit=1] armor.head

# Remove local tag
tag @e[type=minecraft:armor_stand,tag=GrabHead] remove GrabHead
