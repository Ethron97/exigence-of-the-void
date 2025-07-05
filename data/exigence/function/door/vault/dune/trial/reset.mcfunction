# Cleans up everything after a trial, win or lose

# DEBUG
say Reset Dune

# Hide bossbar
bossbar set exigence:trial_dune visible false

# Kill setups
kill @e[type=marker,tag=DuneTrialSetup]

# Kill skulls
kill @e[type=item_display,tag=DuneSkull]

# Replace end portal
fill -406 148 6 -422 148 -10 black_concrete replace end_portal

# Reset fire
fill -407 158 -9 -421 158 5 minecraft:chiseled_tuff replace minecraft:soul_soil
setblock -407 159 -2 fire
setblock -409 159 3 fire
setblock -414 159 5 fire
setblock -419 159 3 fire
setblock -421 159 -2 fire
setblock -419 159 -7 fire
setblock -414 159 -9 fire
setblock -409 159 -7 fire
