# Check all validation requirements

## CONSTRAINTS
#   AS/AT predungeon menu node

## OUTPUT
#   #predungeon_validate_total Temp

#====================================================================================================

#say validate/validate

# Default to VALID
scoreboard players set #predungeon_validate_total Temp 1

# COOP CHECK
function exigence:hub/predungeon/validate/coop/check

scoreboard players operation #predungeon_validate_total Temp = #predungeon_validate_coop Temp
execute if score #predungeon_validate_coop Temp matches 0 run return fail
#----------------------------------------------------------------------------------------------------

# PLAYER INVENTORY CHECK
function exigence:hub/predungeon/validate/player/check

scoreboard players operation #predungeon_validate_total Temp = #predungeon_validate_player Temp
execute if score #predungeon_validate_player Temp matches 0 run return fail
#----------------------------------------------------------------------------------------------------

# DECK CHECK
function exigence:hub/predungeon/validate/deck/check

scoreboard players operation #predungeon_validate_total Temp = #predungeon_validate_deck Temp
