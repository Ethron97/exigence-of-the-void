say Game On

function exigence:vault/reset_vaults
function exigence:vault/enter_with_vault_key

# Void cache
execute if score mod.void_cache game.modifiers matches 1.. if score game.difficulty game.state matches 4.. run function exigence:cards/void_cache/trigger


# Reenable mob sounds for entities with "Silence" tag
execute as @e[tag=Silence] run data modify entity @s Silent set value false

# Initialize random rotation data
data merge storage temp {Rotation:[0.0f,0.0f]}

#====================================================================================================

# Set sidebar display or bossbar display for cards played display
#scoreboard objectives setdisplay sidebar game.cards_played

# Setup PHANTOM preview entities
kill @e[type=minecraft:block_display,tag=ItemPreview]
execute as @a[tag=ActivePlayer] run function exigence:player/utility/setup_preview_display
