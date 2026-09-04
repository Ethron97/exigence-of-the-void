# DEBUG
#say Pickup ardor ember

# Reset advancement
advancement revoke @s only exigence:listener/pickup/ardor_ember_2

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

execute if score toggle.beacon debug matches 1 if score debug.level debug matches 3.. run say (D3) Pickup ardor ember (2)

# Clear ghast_tear
clear @s minecraft:ghast_tear[custom_data~{ardor_ember:true,ardor_level:"2"}]

# Give ardor flame
function exigence:player/give/ardor_ember {model:{strings:["ardor_ember_2"]},text:'Ruins of Solstice'}

# Activate waypoint
execute as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=Waypoint,tag=Beacon] run function exigence:beacon/node/waypoint/activate

# Increase score
scoreboard players add ardor_embers.2 game.story.beacons 1
