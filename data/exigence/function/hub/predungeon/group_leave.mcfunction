# If there were multiple people in Predungeon, skip lockerroom and send everyone hub

say Group leave

tp @a[tag=Predungeon] -260.5 17.00 -44.5
tp @a[tag=Coop,tag=!Lockerroom] -260.5 17.00 -44.5

# Playsound
playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Remove tags
tag @a[tag=Coop] remove Coop

tag @s remove Predungeon
team leave @s

# Clear buttons
fill -263 18 -77 -259 18 -77 air

fill -263 17 -77 -259 17 -77 air
fill -263 17 -77 -259 17 -77 bamboo_wall_sign[facing=south]{front_text:{has_glowing_text:0b,color:"red",messages:["","","",""]}}
