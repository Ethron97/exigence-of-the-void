# Reset advancement
advancement revoke @s only exigence:listener/pickup/echo

execute if score toggle.echo debug matches 1 if score debug.level debug matches 3.. run say (D3) Pickup echo

# TUTORIAL
clear @s[tag=Tutorial] minecraft:music_disc_relic 1
execute as @s[tag=Tutorial] in exigence:tutorial run function exigence:tutorial/flow/step

# Stop sound
stopsound @s neutral minecraft:block.amethyst_block.resonate

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

execute if score toggle.echo debug matches 1 if score debug.level debug matches 3.. run say (D3) Pickup echo game

# Get which level the echo was
scoreboard players set #found_on_level Temp 0
execute store result score #temp Temp run clear @s minecraft:music_disc_relic[custom_data~{object_level:1}]
execute if score #temp Temp matches 1 run scoreboard players set #found_on_level Temp 1

execute store result score #temp Temp run clear @s minecraft:music_disc_relic[custom_data~{object_level:2}]
execute if score #temp Temp matches 1 run scoreboard players set #found_on_level Temp 2

execute store result score #temp Temp run clear @s minecraft:music_disc_relic[custom_data~{object_level:3}]
execute if score #temp Temp matches 1 run scoreboard players set #found_on_level Temp 3

execute store result score #temp Temp run clear @s minecraft:music_disc_relic[custom_data~{object_level:4}]
execute if score #temp Temp matches 1 run scoreboard players set #found_on_level Temp 4

execute if score toggle.echo debug matches 1 if score debug.level debug matches 3.. run tellraw @s [{text:"(D3 Echo) Found on level: "},{score:{name:"#found_on_level",objective:"Temp"}}]

# Call function to handle the rest of the event
#   INPUT: #found_on_level Temp 1-4
function exigence:game/found_echo

# If coop, title otherp layers
tag @s add DontTitle
execute if score game.player_count game.state matches 2.. run title @a[tag=!DontTitle] subtitle [{"selector":"@s",color:"aqua"},{text:" picked up an echo shard",color:"gray"}]
execute if score game.player_count game.state matches 2.. run title @a[tag=!DontTitle] title ""
tag @s remove DontTitle
