say Game On

# Void cache
execute if score mod.void_cache game.modifiers matches 1.. if score game.difficulty game.state matches 4.. run function exigence:cards/void_cache/trigger

# Reenable mob sounds for entities with "Silence" tag
execute as @e[tag=Silence] run data modify entity @s Silent set value false

# Initialize random rotation data
data merge storage temp {Rotation:[0.0f,0.0f]}
