# Cleans up everything after a trial, win or lose

# Hide bossbar
bossbar set exigence:trial_flow visible false

# Kill setup entities
kill @e[type=marker,tag=FlowTrialSetup]
kill @e[type=block_display,tag=FlowTrialSetup]

# Replace end portal
fill -347 148 -34 -364 148 -18 black_concrete replace end_portal

# Reset fire
fill -363 158 -19 -349 158 -33 minecraft:chiseled_tuff replace minecraft:soul_soil
setblock -363 159 -26 fire
setblock -361 159 -31 fire
setblock -356 159 -33 fire
setblock -351 159 -31 fire
setblock -349 159 -26 fire
setblock -351 159 -21 fire
setblock -356 159 -19 fire
setblock -361 159 -21 fire
