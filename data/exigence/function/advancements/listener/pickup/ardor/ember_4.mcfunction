# DEBUG
#say Pickup ardor ember

# Reset advancement
advancement revoke @s only exigence:listener/pickup/ardor_ember_4

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

execute if score toggle.beacon debug matches 1 if score debug.level debug matches 3.. run say (D3) Pickup ardor ember (4)

# Clear ghast_tear
clear @s minecraft:ghast_tear[custom_data~{ardor_ember:true,ardor_level:"4"}]

# Give ardor flame
function exigence:player/give/ardor_ember {model:{strings:["ardor_ember_4"]},text:'Ruins of Solstice'}

# Activate waypoint
execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:armor_stand,tag=Waypoint,tag=Beacon] run function exigence:beacon/node/waypoint/activate

# Increase score
scoreboard players add ardor_embers.4 game.story.beacons 1
