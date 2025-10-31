# Called from try_enter_dungeon

# Tags
tag @a[tag=Predungeon] add ActivePlayer
tag @a[tag=Predungeon] add PrimaryPlayer
tag @a[tag=Predungeon] remove Predungeon

# Coop?
data modify storage exigence:dungeon is_coop set value 0
execute if entity @a[tag=Coop] run data modify storage exigence:dungeon is_coop set value 1
tag @a[tag=Coop] add ActivePlayer
tag @a[tag=Coop] remove Coop

# Give room token
function exigence:room/game/new_token
scoreboard players operation @a[tag=ActivePlayer] RoomToken = Game RoomToken

# Reset validation signs
fill -263 17 -77 -259 17 -77 air
fill -263 19 -77 -259 19 -77 air
fill -263 17 -77 -259 17 -77 bamboo_wall_sign[facing=south]{front_text:{has_glowing_text:0b,color:"red",messages:["","","",""]}}
fill -263 19 -77 -259 19 -77 bamboo_wall_sign[facing=south]{front_text:{has_glowing_text:0b,color:"red",messages:["","","",""]}}

# Clear buttons
fill -263 18 -77 -259 18 -77 air

# Begin game
function exigence:game/game_on

# Remind player of how many resources they need
tellraw @a [{text:"\nResources Needed: ",color:"gray"},{"score":{"name":"Green.Consume","objective":"deck.analysis"},color:"dark_green"}," ",{"score":{"name":"Red.Consume","objective":"deck.analysis"},color:"red"}," ",{"score":{"name":"Aqua.Consume","objective":"deck.analysis"},color:"aqua"}]

# Initialize resources needed
function exigence:bossbar/resource/update_title
