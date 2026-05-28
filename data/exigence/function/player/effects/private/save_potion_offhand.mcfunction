# Called as player by player_effect_tick

## CONSTRAINTS
#   AS player

#====================================================================================================

# Copy item to player_number node
execute if score @s game.player.player_number matches 1 in minecraft:overworld run item replace entity @e[x=519,y=0,z=502,dx=0,dy=0,dz=3,type=minecraft:armor_stand,tag=PlayerArmorstand,scores={game.entity.player_number=1}] weapon.offhand from entity @s weapon.offhand
execute if score @s game.player.player_number matches 2 in minecraft:overworld run item replace entity @e[x=519,y=0,z=502,dx=0,dy=0,dz=3,type=minecraft:armor_stand,tag=PlayerArmorstand,scores={game.entity.player_number=2}] weapon.offhand from entity @s weapon.offhand
execute if score @s game.player.player_number matches 3 in minecraft:overworld run item replace entity @e[x=519,y=0,z=502,dx=0,dy=0,dz=3,type=minecraft:armor_stand,tag=PlayerArmorstand,scores={game.entity.player_number=3}] weapon.offhand from entity @s weapon.offhand
execute if score @s game.player.player_number matches 4 in minecraft:overworld run item replace entity @e[x=519,y=0,z=502,dx=0,dy=0,dz=3,type=minecraft:armor_stand,tag=PlayerArmorstand,scores={game.entity.player_number=4}] weapon.offhand from entity @s weapon.offhand


# Copy player id for storage
#scoreboard players operation #compare profile.node.player_id = @s career.player_id

# Copy item to storage in-between
#execute if data entity @s {Inventory:[{Slot:-106b}]} run data modify storage exigence:player_effects item set from entity @s equipment.offhand
#execute unless data entity @s {Inventory:[{Slot:-106b}]} run data modify storage exigence:player_effects item set value {id:"minecraft:stone"}

# Copy item to PlayerNode armorstand
#execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s profile.node.player_id = #compare profile.node.player_id run data modify entity @s equipment.offhand set from storage exigence:player_effects item
