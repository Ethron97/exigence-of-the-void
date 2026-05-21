# Put together reduced spellbind cost strings

#====================================================================================================

function exigence:vault/artifact/artifacts/enchanted_book/public/modify_costs

## GET SPELLBIND COST
# Convert costs to strings for reference
function exigence:cards/get_cost_strings
# Get full cost for lore
data modify storage exigence:resources target set value 'full_cost_2'
data modify storage exigence:resources rpad set value {text:" "}
function exigence:cards/set_full_cost_string with storage exigence:resources
