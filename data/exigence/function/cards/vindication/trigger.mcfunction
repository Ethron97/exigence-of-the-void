# Execute card play logic if resource successfully consumed

# =============================================================================

# Reset score
scoreboard players set #highest_hearts Temp 0

# Get highiest damage taken since last death (for living players)
execute as @a[scores={dead=0},tag=ActivePlayer] run scoreboard players operation #highest_hearts Temp > @s game.player.damage_since_last_death
# Convert to hearts
scoreboard players operation #highest_hearts Temp /= 20 number

# Add to treasure queue
scoreboard players operation ember.queue game.dungeon.temp += #highest_hearts Temp

# Tellraw actual amount added
tellraw @a [{text:"+",color:"gray"},{"score":{"name":"#highest_hearts","objective":"Temp"},color:"gray"},{text:" 🔥",color:"aqua"}]
