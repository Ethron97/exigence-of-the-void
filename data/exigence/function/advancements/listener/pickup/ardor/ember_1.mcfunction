# DEBUG
#say Pickup ardor ember

# Reset advancement
advancement revoke @s only exigence:listener/pickup/ardor_ember_1

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

execute if score toggle.beacon debug matches 1 if score debug.level debug matches 3.. run say (D3) Pickup ardor ember (1)

# Clear ghast_tear
clear @s minecraft:ghast_tear[custom_data~{ardor_ember:true,ardor_level:"1"}]

# Give ardor flame
function exigence:player/give/ardor_ember {model:{strings:["ardor_ember_1"]},text:'Ruins of Solstice'}

# Activate waypoint
execute as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:armor_stand,tag=Waypoint,tag=Beacon] run function exigence:beacon/node/waypoint/activate

# Increase score
scoreboard players add ardor_embers.1 game.story.beacons 1
