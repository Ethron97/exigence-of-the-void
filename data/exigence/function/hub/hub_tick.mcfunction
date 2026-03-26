# Used for checking things in the Hub
# Called by misc/tick if at least one player is in exigence:hub dimension

## CONSTRAINTS
#   IN exigence:hub

#====================================================================================================

# Give everyone in the hub saturation
effect give @a[predicate=exigence:dimension/entity/hub,predicate=!exigence:effects/saturation] saturation infinite 0 true
effect give @a[predicate=exigence:dimension/entity/hub,predicate=!exigence:effects/regeneration] regeneration infinite 200 true

# Update actionbar
execute as @a[distance=..2000] run function exigence:hub/hub_tick/update_actionbar

# Door checks for player warping throughout the hub
execute as @a[gamemode=!spectator,predicate=exigence:dimension/entity/hub] run function exigence:hub/player/check_door

# Increase hub tick score for profile (if they are in adventure mode)
execute as @a[gamemode=adventure,predicate=exigence:dimension/entity/hub] run scoreboard players add @s profile.hub_ticks 1

# Room menu tick(s)
execute as @a[scores={hub.player.profile_selector_id=1..}] at @s run function exigence:hub/profile_selector/menu/profile_menu_tick
execute positioned 0 100 0 as @e[distance=..200,type=marker,tag=LockerRoomNode,scores={hub.locker_room_id=1..}] at @s run function exigence:hub/locker_room/menu/locker_menu_tick
execute positioned -43.5 200.0 0.5 if entity @a[distance=..50,tag=ItemShop] run function exigence:hub/item_shop/menu/shop_menu_tick
execute positioned 0.5 209.0 104.5 if entity @a[distance=..16,tag=Predungeon] run function exigence:hub/predungeon/menu/predungeon_menu_tick
scoreboard players remove @a[scores={hub.player.interaction_cooldown=1..}] hub.player.interaction_cooldown 1


# Animate coin conversion
#execute if entity @a[distance=..1000,tag=ConvertingCoins,scores={career.settings.coin_conversion_style=2}] run function exigence:hub/convert_money/display_hud/tick
#execute if entity @a[distance=..1000,tag=ConvertingCoins,scores={career.settings.coin_conversion_style=1}] run function exigence:hub/convert_money/item_smash/tick
 
# Add 0 to all players player id to initialize it
#scoreboard players add @a career.player_id 0

# Assign ID to players that don't have one
#execute as @a[scores={career.player_id=0}] run function exigence:hub/player_id/assign_id

# Initialize player profile difficulty
#scoreboard players add @a profile.profile_difficulty 0

# MenuTick
#function exigence:menu/menu_tick

# If players are exalting
#execute if entity @a[tag=Exalting] run function exigence:hub/hub_tick/exalting

# Calculate item limits if in shop/lockerrom
#execute if score seconds.cooldown tick_counter matches 17 as @a[team=ItemShop] run function exigence:player/utility/calculate_item_limit
#execute if score seconds.cooldown tick_counter matches 17 as @a[team=Lockerroom] run function exigence:player/utility/calculate_item_limit




# DEPRECATED
#====================================================================================================
# Tp players that fall back to hub
#execute as @a[gamemode=adventure,tag=!Exalting,tag=EmberShopping,predicate=exigence:level/hub_lower] at @s run tp @s -274.5 17.00 -44.5
#execute as @a[gamemode=adventure,tag=!Exalting,tag=EmberViewing,predicate=exigence:level/hub_lower] at @s run tp @s -274.5 17.00 -44.5
#execute as @a[gamemode=adventure,tag=!Exalting,tag=MoneyShopping,predicate=exigence:level/hub_lower] at @s run tp @s -246.5 17.00 -44.5
#execute as @a[gamemode=adventure,tag=!Exalting,tag=!MoneyShopping,tag=!EmberShopping,tag=!EmberViewing,predicate=exigence:level/hub_lower] at @s run tp @s -260.5 17.00 -44.5

# Check for piggy banks on the ground
#execute unless entity @a[tag=ActivePlayer] unless entity @a[tag=ConvertingCoins] as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}}] run function exigence:vault/artifact/artifacts/piggy_bank/break
