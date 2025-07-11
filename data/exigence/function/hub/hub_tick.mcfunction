# used for checking things in the Hub
# Called by misc/tick if the dungeon is not active

# Give everyone in the hub saturation
effect give @a[predicate=!exigence:effects/saturation] saturation infinite 0 true
effect give @a[predicate=!exigence:effects/regeneration] regeneration infinite 200 true

# Detect player respawn after a loss run
#function exigence:hub/hub_tick/detect_player_respawned

# Update actionbar
function exigence:hub/hub_tick/update_actionbar

# Item shop tick if someone is shopping
execute if entity @a[tag=ItemShopping] run function exigence:hub/item_shop/item_shop_tick

# Update nodecounter automatically every second
execute store result storage exigence:debug current_level int 1 run scoreboard players get Ethron97 ObjectLevel
execute if data storage exigence:debug {void:1} if score SecondsCooldown TickCounter matches 0 run function exigence:misc/update_node_counter with storage exigence:debug

# Update vault node counter
execute if data storage exigence:debug {void:1} if score SecondsCooldown TickCounter matches 0 run function exigence:misc/update_vault_counter

# Door checks for player warping throughout the hub
#function exigence:hub/door_tick
execute as @a[gamemode=!spectator,predicate=exigence:level/hub] run function exigence:hub/player/check_door

# This is for difficulty setup
execute if score SecondsCooldown TickCounter matches 0 run execute if data storage exigence:debug {echo:1} as @e[type=minecraft:armor_stand,tag=EchoNode,team=!ActiveEcho,scores={EchoDifficulty=0}] run team join Green @s
execute if score SecondsCooldown TickCounter matches 0 run execute if data storage exigence:debug {echo:1} as @e[type=minecraft:armor_stand,tag=EchoNode,team=Green,scores={EchoDifficulty=1..}] run team join Echo @s

# Set offline to 0
scoreboard players set @a offline 0

# Add 0 to all players player id to initialize it
scoreboard players add @a PlayerID 0 

# Assign ID to players that don't have one
execute as @a[scores={PlayerID=0}] run function exigence:hub/player_id/assign_id

# Tp players that fall back to hub
execute as @a[gamemode=adventure,tag=!Exalting,tag=EmberShopping,predicate=exigence:level/hub_lower] at @s run tp @s -274.5 17.00 -44.5
execute as @a[gamemode=adventure,tag=!Exalting,tag=EmberViewing,predicate=exigence:level/hub_lower] at @s run tp @s -274.5 17.00 -44.5
execute as @a[gamemode=adventure,tag=!Exalting,tag=MoneyShopping,predicate=exigence:level/hub_lower] at @s run tp @s -246.5 17.00 -44.5
execute as @a[gamemode=adventure,tag=!Exalting,tag=!MoneyShopping,tag=!EmberShopping,tag=!EmberViewing,predicate=exigence:level/hub_lower] at @s run tp @s -260.5 17.00 -44.5

# Initialize player profile difficulty
scoreboard players add @a ProfileDifficulty 0

# Animate coin conversion
execute if entity @a[tag=ConvertingCoins,scores={s_coinConversion=1}] run function exigence:hub/convert_money/display_hud/tick
execute if entity @a[tag=ConvertingCoins,scores={s_coinConversion=0}] run function exigence:hub/convert_money/item_smash/tick


# MenuTick
function exigence:menu/menu_tick

# Check for piggy banks on the ground
#   DEPRECATED
#execute unless entity @a[tag=ActivePlayer] unless entity @a[tag=ConvertingCoins] as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}}] run function exigence:vault/artifact/artifacts/piggy_bank/break

# DEBUG
function exigence:hub/hub_tick/predicate_debug

# If players are exalting
execute if entity @a[tag=Exalting] run function exigence:hub/hub_tick/exalting

# Calculate item limits if in shop/lockerrom
execute if score SecondsCooldown TickCounter matches 17 as @a[team=ItemShop] run function exigence:player/utility/calculate_item_limit
execute if score SecondsCooldown TickCounter matches 17 as @a[team=Lockerroom] run function exigence:player/utility/calculate_item_limit
