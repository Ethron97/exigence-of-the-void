# Called as advancement reward

# Reset advancement
advancement revoke @s only exigence:listener/pickup/ardor_flame

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

execute if score toggle.beacon debug matches 1 if score debug.level debug matches 3.. run say (D3) Pickup ardor flame

# Kill all other ardor flames this player's level
scoreboard players operation #compare game.player.active_level = @s game.player.active_level
execute if score game.is_active game.state matches 1 at @s run execute as @e[type=minecraft:item,tag=ArdorFlame,distance=..1000] if score @s game.entity.object_level = #compare game.player.active_level run kill @s

# Clear netherstar
clear @s minecraft:nether_star[custom_data~{ardor_flame:true}]
#execute if score @s game.player.active_level matches 1 run clear @s minecraft:nether_star[custom_data~{ardor_flame:true}]
#execute if score @s game.player.active_level matches 2 run clear @s minecraft:nether_star[custom_data~{ardor_flame:true}]
#execute if score @s game.player.active_level matches 3 run clear @s minecraft:nether_star[custom_data~{ardor_flame:true}]
#execute if score @s game.player.active_level matches 4 run clear @s minecraft:nether_star[custom_data~{ardor_flame:true}]

# Give ardor flame
execute if score @s game.player.active_level matches 1 run function exigence:player/give/ardor_flame {model:{"strings":[ardor_flame_1]},text:'Ruins of Solstice'}
execute if score @s game.player.active_level matches 2 run function exigence:player/give/ardor_flame {model:{"strings":[ardor_flame_2]},text:'Mirror Mines'}
execute if score @s game.player.active_level matches 3 run function exigence:player/give/ardor_flame {model:{"strings":[ardor_flame_3]},text:'Temple of Fervor'}
execute if score @s game.player.active_level matches 4 run function exigence:player/give/ardor_flame {model:{"strings":[ardor_flame_4]},text:'Ardor\\\'s Bane'}

# Activate waypoint
execute if score @s game.player.active_level matches 1 as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:armor_stand,tag=Waypoint,tag=Beacon] run function exigence:beacon/node/waypoint/activate
execute if score @s game.player.active_level matches 2 as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=Waypoint,tag=Beacon] run function exigence:beacon/node/waypoint/activate
execute if score @s game.player.active_level matches 3 as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:armor_stand,tag=Waypoint,tag=Beacon] run function exigence:beacon/node/waypoint/activate
execute if score @s game.player.active_level matches 4 as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:armor_stand,tag=Waypoint,tag=Beacon] run function exigence:beacon/node/waypoint/activate