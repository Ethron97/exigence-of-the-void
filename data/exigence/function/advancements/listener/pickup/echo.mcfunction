# Reset advancement
advancement revoke @s only exigence:listener/pickup/echo

# TUTORIAL
clear @s[tag=Tutorial] minecraft:music_disc_relic 1
execute as @s[tag=Tutorial] in exigence:tutorial run function exigence:tutorial/flow/step

# Stop sound
stopsound @s neutral minecraft:block.amethyst_block.resonate

# Return if the game is not active
execute unless entity @s[tag=ActivePlayer] unless score game.is_active game.state matches 1 run return 1
#----------------------------------------------------------------------------------------------------

say (D3) Pickup echo

# Delete the music disc from their inventory
clear @s minecraft:music_disc_relic 1

# Call function to handle the rest of the event
function exigence:game/found_echo

# If coop, title otherp layers
tag @s add DontTitle
execute if score game.player_count game.state matches 2.. run title @a[tag=!DontTitle] subtitle [{"selector":"@s",color:"aqua"},{text:" picked up an echo shard",color:"gray"}]
execute if score game.player_count game.state matches 2.. run title @a[tag=!DontTitle] title ""
tag @s remove DontTitle
