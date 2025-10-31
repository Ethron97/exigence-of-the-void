# To lockerroom

say Leave predungeon

# Reset team so you only see your own score
scoreboard players reset * hub.player.consumable_limit

# Team/tag
tag @s add Lockerroom
team join Lockerroom @s
tag @s remove Predungeon

teleport @s ~ ~ ~3

playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Clear buttons
fill -263 18 -77 -259 18 -77 air

function exigence:hub/locker_room/load_chests

# Reset validation signs
fill -263 17 -77 -259 17 -77 air
fill -263 19 -77 -259 19 -77 air
fill -263 17 -77 -259 17 -77 bamboo_wall_sign[facing=south]{front_text:{has_glowing_text:0b,color:"red",messages:["","","",""]}}
fill -263 19 -77 -259 19 -77 bamboo_wall_sign[facing=south]{front_text:{has_glowing_text:0b,color:"red",messages:["","","",""]}}
