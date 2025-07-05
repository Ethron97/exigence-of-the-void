# Called by advancement

# Revoke to reset
advancement revoke @s only exigence:listener/consume/eat_melon_slice

# Return if game is not active
execute if data storage exigence:dungeon {is_active:0} run return 1

#say Eat berry

# Ambrosia
execute if score Ambrosia Modifiers matches 1.. run function exigence:cards/ambrosia/private/eat
