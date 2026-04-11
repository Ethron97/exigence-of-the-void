# Used for checking things in the Hub
# Called by misc/tick if at least one player is in exigence:hub dimension

## CONSTRAINTS
#   IN exigence:hub

#====================================================================================================

execute as @a[distance=..2000] run function exigence:hub/hub_tick_player

# Room menu ticks (part 2, part 1 is in hub_tick_player because it's easier)
execute positioned -43.5 200.0 0.5 if entity @a[tag=ItemShop,distance=..50,limit=1] run function exigence:hub/item_shop/menu/shop_menu_tick
execute positioned 0.5 209.0 104.5 if entity @a[tag=Predungeon,distance=..16,limit=1] run function exigence:hub/predungeon/menu/predungeon_menu_tick
execute as @e[x=-29,y=197,z=6,dx=24,dy=8,dz=24,type=marker,scores={hub.locker_room_id=1..},tag=LockerRoomNode] at @s run function exigence:hub/locker_room/menu/locker_menu_tick

# Animate coin conversion
#execute if entity @a[distance=..1000,tag=ConvertingCoins,scores={career.settings.coin_conversion_style=2}] run function exigence:hub/convert_money/display_hud/tick
#execute if entity @a[distance=..1000,tag=ConvertingCoins,scores={career.settings.coin_conversion_style=1}] run function exigence:hub/convert_money/item_smash/tick

# Add 0 to all players player id to initialize it
#scoreboard players add @a career.player_id 0

# Assign ID to players that don't have one
#execute as @a[scores={career.player_id=0}] run function exigence:hub/player_id/assign_id

# MenuTick
#function exigence:menu/menu_tick

# If players are exalting
#execute if entity @a[tag=Exalting] run function exigence:hub/hub_tick/exalting




# DEPRECATED
#====================================================================================================
# Tp players that fall back to hub
#execute as @a[gamemode=adventure,tag=!Exalting,tag=EmberShopping,predicate=exigence:level/hub_lower] at @s run tp @s -274.5 17.00 -44.5
#execute as @a[gamemode=adventure,tag=!Exalting,tag=EmberViewing,predicate=exigence:level/hub_lower] at @s run tp @s -274.5 17.00 -44.5
#execute as @a[gamemode=adventure,tag=!Exalting,tag=MoneyShopping,predicate=exigence:level/hub_lower] at @s run tp @s -246.5 17.00 -44.5
#execute as @a[gamemode=adventure,tag=!Exalting,tag=!MoneyShopping,tag=!EmberShopping,tag=!EmberViewing,predicate=exigence:level/hub_lower] at @s run tp @s -260.5 17.00 -44.5

# Check for piggy banks on the ground
#execute unless entity @a[tag=ActivePlayer] unless entity @a[tag=ConvertingCoins] as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}}] run function exigence:vault/artifact/artifacts/piggy_bank/break
