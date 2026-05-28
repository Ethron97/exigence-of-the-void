# New spire block marker
#   Iteratively checks until it finds a valid location within the trial arena

## CONSTRAINTS
#   AS/AT existing spire

## INPUT
#   INT RotA
#   INT length

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 4.. run say (D4 Trial) Try create new spire

# If position is too far, try again
$execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated ~$(RotA) 0 positioned ^ ^1 ^$(length) unless function exigence:door/vault/spire/trial/spire/valid_pos run function exigence:door/vault/spire/trial/spire/random_spread
$execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated ~$(RotA) 0 positioned ^ ^1 ^$(length) unless function exigence:door/vault/spire/trial/spire/valid_pos run return run function exigence:door/vault/spire/trial/spire/new with storage exigence:trial
#----------------------------------------------------------------------------------------------------

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Created new spire

# Summon marker
$execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated ~$(RotA) 0 positioned ^ ^1 ^$(length) run summon minecraft:marker ~ ~ ~ {Tags:["SpireTrialSetup","SpireObject","NewSpire"],CustomName:{text:"Marker | SpireObject"}}
$execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated ~$(RotA) 0 positioned ^ ^1 ^$(length) run setblock ~ ~ ~ minecraft:purpur_pillar
