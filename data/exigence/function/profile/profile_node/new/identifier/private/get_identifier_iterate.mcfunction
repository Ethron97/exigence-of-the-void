# Iterate over the list of identifiers to get the first valid one

## INPUT
#   INT i - current index

#=============================================================================================================

#$say Iterate $(i)

# Get element i
$data modify storage exigence:temp identifier set from storage exigence:temp identifiers[$(i)]

# Check if selected identifier exists in the valid
function exigence:profile/profile_node/new/identifier/private/is_valid with storage exigence:temp

# Break recursion if valid identifier found
execute if score #valid Temp matches 1 run return 0

# Else, increment i and iterate
scoreboard players add #i Temp 1
# Wrap around
scoreboard players operation #i Temp %= #max_identifiers Temp
execute store result storage exigence:temp i int 1 run scoreboard players get #i Temp
function exigence:profile/profile_node/new/identifier/private/get_identifier_iterate with storage exigence:temp