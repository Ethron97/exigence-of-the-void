# Teleport a void merchant to a random position on level 3

## CONSTRAINTS
#   AS void merchant

#====================================================================================================

# DEBUG
execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3 Void) I am teleporting

# Reset tags
tag @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,tag=CanVoidTeleport] remove CanVoidTeleport

# Remove light from head
execute at @s run fill ~ ~2 ~ ~ ~2 ~ air replace light

# Unload shop if loaded
execute if entity @s[tag=Loaded] at @s run function exigence:game/other/void_shop/unload_shop

# Playsound (old location)
execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 2 0.8

# Teleport
#   Add all echo (other than chosen) and menace nodes to CanVoidTeleport
tag @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=EchoNode,tag=!ChosenEchoNode] add CanVoidTeleport
tag @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=MenaceNode] add CanVoidTeleport
tag @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,tag=VoidTent] add CanVoidTeleport

#   As each CanVoidTeleport, remove tag if there is a bad guy nearby (or enderman, or player)
execute as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,tag=CanVoidTeleport] at @s if entity @e[type=#exigence:enemy,distance=..10] run tag @s remove CanVoidTeleport
execute as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:enderman,tag=VoidMerchant] at @s as @e[type=minecraft:marker,tag=CanVoidTeleport,distance=..15] run tag @s remove CanVoidTeleport
execute as @a[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,tag=ActivePlayer] at @s as @e[type=minecraft:marker,tag=CanVoidTeleport,distance=..24] run tag @s remove CanVoidTeleport
execute at @s as @e[type=minecraft:marker,tag=CanVoidTeleport,distance=..48] run tag @s remove CanVoidTeleport

# (Given the ratio of merchant to nodes, it should be 100% impossible for there to be 0 teleportation locations).

# Remove the nearest 5 options
execute at @s run tag @e[type=minecraft:marker,tag=CanVoidTeleport,distance=..32,sort=nearest,limit=5] remove CanVoidTeleport

#   Teleport the void merchant to a random CanVoidTeleport
tp @s @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,tag=CanVoidTeleport,sort=random,limit=1]

# Add new light in head
execute at @s run fill ~ ~2 ~ ~ ~2 ~ light[level=10] replace air

# Playsound (new location)
execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 2 1.2

# Reset tags
tag @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,tag=CanVoidTeleport] remove CanVoidTeleport