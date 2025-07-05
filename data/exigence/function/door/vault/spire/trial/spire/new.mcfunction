# New spire block marker
#   Iteratively checks until it finds a valid location within the trial arena

## CONSTRAINTS
#   AS existing spire

## INPUT
#   INT RotA
#   INT length

#=============================================================================================================

# DEBUG
#say Try create new spire

# If position is too far, try again
$execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated ~$(RotA) 0 positioned ^ ^1 ^$(length) unless function exigence:door/vault/spire/trial/spire/valid_pos run function exigence:door/vault/spire/trial/spire/random_spread
$execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated ~$(RotA) 0 positioned ^ ^1 ^$(length) unless function exigence:door/vault/spire/trial/spire/valid_pos run function exigence:door/vault/spire/trial/spire/new with storage exigence:trial
$execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated ~$(RotA) 0 positioned ^ ^1 ^$(length) unless function exigence:door/vault/spire/trial/spire/valid_pos run return 1

# DEBUG
#say Created new spire

# Summon marker
$execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated ~$(RotA) 0 positioned ^ ^1 ^$(length) run summon minecraft:marker ~ ~ ~ {Tags:["SpireTrialSetup","Spire","NewSpire"]}
$execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated ~$(RotA) 0 positioned ^ ^1 ^$(length) run setblock ~ ~ ~ minecraft:purpur_pillar
