# Cleans up everything after a trial, win or lose

# Clone ground
#clone -420 125 8 -408 125 20 -420 151 8
# Clear platform
fill -423 151 22 -406 150 6 air replace minecraft:magenta_glazed_terracotta

# Hide bossbar
bossbar set exigence:trial_silence visible false

# Kill setup entities
kill @e[type=marker,tag=SilenceTrialSetup]

# Replace end portal with black concrete
fill -406 148 22 -422 148 6 black_concrete replace end_portal

# Reset fire
fill -407 158 7 -421 158 21 minecraft:chiseled_tuff replace minecraft:soul_soil
setblock -407 159 14 fire
setblock -409 159 19 fire
setblock -414 159 21 fire
setblock -419 159 19 fire
setblock -421 159 14 fire
setblock -419 159 9 fire
setblock -414 159 7 fire
setblock -409 159 9 fire
