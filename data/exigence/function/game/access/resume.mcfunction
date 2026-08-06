# Rejoin game that is still in progess after having logged out during it

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) Player "resume" after logout

# Undo the temp decrease of player count
scoreboard players add game.player_count game.state 1

# If they escaped, do nothing
execute if entity @s[tag=Won] run return 0
#----------------------------------------------------------------------------------------------------

# Kill the player
tellraw @s [{text:"💀 Died due to disconnect",color:red}]

# Announce
tag @s add DontTitle
tellraw @a[tag=ActivePlayer,tag=!DontTitle] [{selector:"@s",color:"dark_aqua"},{text:" 💀 Died due to disconnect",color:red}]
tag @s remove DontTitle

# Can't kill them same tick as log in I guess. Queue?
scoreboard players set @s game.player.kill_queue 10
