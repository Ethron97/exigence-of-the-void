# Summon new coin drop within the dungeun

## CONSTRAINTS
#   AT location

#=========================================================================================================

# Summon a new coin with tag "new coin"
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:large_amethyst_bud",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_model_data":{"strings":["coin1"]}}},Tags:["NewCoin","Coin","Treasure"]}

# Playsound
playsound minecraft:block.amethyst_block.step neutral @a ~ ~ ~ 2 1

# Store object level
scoreboard players operation #compare ObjectLevel = @s ObjectLevel

# DEBUG
#tellraw @a [{text:"I am spawning on level "},{"score":{"name":"#compare","objective":"ObjectLevel"}}]

# Add "bonus_coin:true" if it is being summoned on a non-active level
scoreboard players set #Bonus Temp 0
execute unless score @s ObjectLevel = ActiveLevel DungeonRun run scoreboard players set #Bonus Temp 1

# Get stack size (if stack size modifier enabled)
scoreboard players set #stacksize Temp 1
execute if data storage exigence:dungeon_settings {stacked_coins:1} if score @s ObjectLevel matches 2 run scoreboard players set #stacksize Temp 2
execute if data storage exigence:dungeon_settings {stacked_coins:1} if score @s ObjectLevel matches 3 run scoreboard players set #stacksize Temp 3
execute if data storage exigence:dungeon_settings {stacked_coins:1} if score @s ObjectLevel matches 4 run scoreboard players set #stacksize Temp 4

# Handle common coin function (removes NewCoin tag)
execute as @e[type=minecraft:item,tag=NewCoin] at @s run function exigence:treasure/node/coin_data


# Increment coin dropped scores
execute if score #Bonus Temp matches 0 if score @s ObjectLevel matches 1 run scoreboard players operation @a[tag=ActivePlayer] profile.data.treasure.cr.coins_dropped_L1 += #stacksize Temp
execute if score #Bonus Temp matches 0 if score @s ObjectLevel matches 2 run scoreboard players operation @a[tag=ActivePlayer] profile.data.treasure.cr.coins_dropped_L2 += #stacksize Temp
execute if score #Bonus Temp matches 0 if score @s ObjectLevel matches 3 run scoreboard players operation @a[tag=ActivePlayer] profile.data.treasure.cr.coins_dropped_L3 += #stacksize Temp
execute if score #Bonus Temp matches 0 if score @s ObjectLevel matches 4 run scoreboard players operation @a[tag=ActivePlayer] profile.data.treasure.cr.coins_dropped_L4 += #stacksize Temp

execute if score #Bonus Temp matches 1 if score @s ObjectLevel matches 1 run scoreboard players operation @a[tag=ActivePlayer] profile.data.treasure.cr.coins_bonus_dropped_L1 += #stacksize Temp
execute if score #Bonus Temp matches 1 if score @s ObjectLevel matches 2 run scoreboard players operation @a[tag=ActivePlayer] profile.data.treasure.cr.coins_bonus_dropped_L2 += #stacksize Temp
execute if score #Bonus Temp matches 1 if score @s ObjectLevel matches 3 run scoreboard players operation @a[tag=ActivePlayer] profile.data.treasure.cr.coins_bonus_dropped_L3 += #stacksize Temp
execute if score #Bonus Temp matches 1 if score @s ObjectLevel matches 4 run scoreboard players operation @a[tag=ActivePlayer] profile.data.treasure.cr.coins_bonus_dropped_L4 += #stacksize Temp

# Increase source-specific scores
execute as @a[tag=ActivePlayer] run function exigence:treasure/node/coin/private/update_scores with storage exigence:treasure
