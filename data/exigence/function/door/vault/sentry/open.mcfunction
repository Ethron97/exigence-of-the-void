# Open door
fill -417 73 -207 -416 75 -208 air replace packed_mud

# Surrounding effects
fill -420 60 -207 -415 66 -210 minecraft:bone_block replace minecraft:netherite_block

# Ladder
fill -417 73 -206 -417 82 -206 ladder[facing=east]
scoreboard players set Sentry VaultOpenState 0
function exigence:door/vault/sentry/open_loop