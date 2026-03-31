# Verify all members have valid consumable counts, and no blacklisted items

## CONSTRAINTS
#   AS/AT predungeon menu node

## OUTPUT
#   #predungeon_validate_player Temp

#====================================================================================================

#say validate/player/check

# Default to VALID
scoreboard players set #predungeon_validate_player Temp 1

# Because we know we run this step only if validate/coop/check succeeds, we know
#   we just have to check the current @a[tag=Predungeon] list

execute as @a[tag=Predungeon,distance=..32] run function exigence:hub/predungeon/validate/player/check_thrown_items
execute as @a[tag=Predungeon,distance=..32] run function exigence:hub/predungeon/validate/player/check_player_consumables
execute as @a[tag=Predungeon,distance=..32] run function exigence:hub/predungeon/validate/player/check_player_card

execute if score #predungeon_validate_player Temp matches 0 run return 0

execute as @a[tag=Predungeon,distance=..32] run function exigence:hub/predungeon/validate/player/check_player_boots
execute as @a[tag=Predungeon,distance=..32] run function exigence:hub/predungeon/validate/player/check_player_leggings
execute as @a[tag=Predungeon,distance=..32] run function exigence:hub/predungeon/validate/player/check_player_chestplate
execute as @a[tag=Predungeon,distance=..32] run function exigence:hub/predungeon/validate/player/check_player_helmet

# Check artifacts
execute as @a[tag=Predungeon,distance=..32] run function exigence:hub/predungeon/validate/player/check_player_artifacts



# Not validation issues, but good time to check inventory.
execute as @a[scores={career.settings.currency_warn=1},tag=Predungeon,distance=..32] run function exigence:hub/predungeon/validate/player/check_player_currency
