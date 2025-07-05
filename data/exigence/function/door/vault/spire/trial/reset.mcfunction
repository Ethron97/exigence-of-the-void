# Cleans up everything after a trial, win or lose

# Hide bossbar
bossbar set exigence:trial_spire visible false

# Replace end portal
fill -364 148 -18 -347 148 -2 black_concrete replace end_portal

# Center platform
fill -355 155 -9 -357 155 -11 polished_tuff

# Clear purpurpillar
fill -364 150 -18 -347 150 -2 air replace purpur_pillar
execute at @e[type=marker,tag=Spire] run fill ~ ~ ~ ~ ~ ~ air replace purpur_pillar

# Kill setups
kill @e[type=marker,tag=SpireTrialSetup]
kill @e[type=block_display,tag=SpireTrialSetup]

# Set fire normal
fill -363 158 -3 -349 158 -17 minecraft:chiseled_tuff replace minecraft:soul_soil
setblock -363 159 -10 fire
setblock -361 159 -15 fire
setblock -356 159 -17 fire
setblock -351 159 -15 fire
setblock -349 159 -10 fire
setblock -351 159 -5 fire
setblock -356 159 -3 fire
setblock -361 159 -5 fire
