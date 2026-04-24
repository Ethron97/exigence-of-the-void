say +1 🔥 for each time you stepped on sculk this run (highest of all players used in coop)

# Add sculk steps to ember queue
scoreboard players set #temp Temp 0
# Get highest from all players
execute as @a[tag=ActivePlayer] run scoreboard players operation #temp Temp > @s profile.data.gameplay.cr.sculk_steps

# Add to queue
scoreboard players operation ember.queue game.dungeon.temp += #temp Temp

# Tellraw actual amount added
tellraw @a [{text:"+",color:"gray"},{"score":{"name":"#temp","objective":"Temp"},color:"gray"},{text:" 🔥",color:"aqua"}]
