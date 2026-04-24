# Generic loss

# Play loss sound
execute at @s run playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 1 1

# Title
function exigence:door/vault/_trial/titles/loss

# Price of failure (if game is active)
execute if score game.is_active game.state matches 1 run function exigence:door/vault/_trial/_failure

# If trialtrial tp 6 blocks forward to go through wall
execute at @s run tp @s[tag=TrialTrial] ^ ^ ^6

# Generic end
function exigence:door/vault/_trial/_end
