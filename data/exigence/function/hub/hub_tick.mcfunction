# Used for checking things in the Hub
# Called by misc/tick if at least one player is in exigence:hub dimension

## CONSTRAINTS
#   IN exigence:hub

#=============================================================================================================

# Give everyone in the hub saturation
effect give @a[predicate=exigence:dimension/hub,predicate=!exigence:effects/saturation] saturation infinite 0 true
effect give @a[predicate=exigence:dimension/hub,predicate=!exigence:effects/regeneration] regeneration infinite 200 true

# Update actionbar
function exigence:hub/hub_tick/update_actionbar

# Door checks for player warping throughout the hub
#function exigence:hub/door_tick
# TODO DISABVLED CHECK DOOR DURING HUB RENOVATIONS
#execute as @a[gamemode=!spectator,predicate=exigence:level/hub] run function exigence:hub/player/check_door
execute as @a[gamemode=!spectator,predicate=exigence:dimension/hub] run function exigence:hub/player/check_door




# Item shop tick if someone is shopping
execute if entity @a[distance=..1000,tag=ItemShopping] run function exigence:hub/item_shop/item_shop_tick

# Animate coin conversion
execute if entity @a[distance=..1000,tag=ConvertingCoins,scores={s_coinConversion=1}] run function exigence:hub/convert_money/display_hud/tick
execute if entity @a[distance=..1000,tag=ConvertingCoins,scores={s_coinConversion=0}] run function exigence:hub/convert_money/item_smash/tick
 


# Add 0 to all players player id to initialize it
scoreboard players add @a PlayerID 0

# Assign ID to players that don't have one
execute as @a[scores={PlayerID=0}] run function exigence:hub/player_id/assign_id

# Initialize player profile difficulty
scoreboard players add @a ProfileDifficulty 0



# MenuTick
function exigence:menu/menu_tick

# If players are exalting
execute if entity @a[tag=Exalting] run function exigence:hub/hub_tick/exalting

# Calculate item limits if in shop/lockerrom
execute if score SecondsCooldown TickCounter matches 17 as @a[team=ItemShop] run function exigence:player/utility/calculate_item_limit
execute if score SecondsCooldown TickCounter matches 17 as @a[team=Lockerroom] run function exigence:player/utility/calculate_item_limit




# DEPRECATED
#=============================================================================================================
# Tp players that fall back to hub
#execute as @a[gamemode=adventure,tag=!Exalting,tag=EmberShopping,predicate=exigence:level/hub_lower] at @s run tp @s -274.5 17.00 -44.5
#execute as @a[gamemode=adventure,tag=!Exalting,tag=EmberViewing,predicate=exigence:level/hub_lower] at @s run tp @s -274.5 17.00 -44.5
#execute as @a[gamemode=adventure,tag=!Exalting,tag=MoneyShopping,predicate=exigence:level/hub_lower] at @s run tp @s -246.5 17.00 -44.5
#execute as @a[gamemode=adventure,tag=!Exalting,tag=!MoneyShopping,tag=!EmberShopping,tag=!EmberViewing,predicate=exigence:level/hub_lower] at @s run tp @s -260.5 17.00 -44.5

# Check for piggy banks on the ground
#execute unless entity @a[tag=ActivePlayer] unless entity @a[tag=ConvertingCoins] as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}}] run function exigence:vault/artifact/artifacts/piggy_bank/break
