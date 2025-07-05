# Cleans up everything after a trial, win or lose

# Hide bossbar
bossbar set exigence:trial_eye visible false

# Cleanup
kill @e[type=#exigence:eye_trial,tag=EyeTrialSetup]
kill @e[type=minecraft:item_display,tag=EyeTrialSetup]

# Replace end portal
fill -364 148 -2 -347 148 14 black_concrete replace end_portal

# Reset fire
fill -363 158 13 -349 158 -1 minecraft:chiseled_tuff replace minecraft:soul_soil
setblock -363 159 6 fire
setblock -361 159 1 fire
setblock -356 159 -1 fire
setblock -351 159 1 fire
setblock -349 159 6 fire
setblock -351 159 11 fire
setblock -356 159 13 fire
setblock -361 159 11 fire
