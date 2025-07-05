# Add one menace from source

## INPUT
#   INT amount
#   STR from - "Sculk", "Node", "Other", "Fatigue"

#===========================================================================================================

# DEBUG
#$say Trigger $(amount) menace from $(from)

# Get max before and extra
scoreboard players operation #before_max Temp = 20 number
scoreboard players operation #before_max Temp -= Menace DungeonRun
scoreboard players operation #before_max Temp -= MenaceQueue DungeonRun
scoreboard players operation #before_max Temp > 0 number
$scoreboard players set #menace_added Temp $(amount)
scoreboard players operation #before_max Temp < #menace_added Temp

scoreboard players operation #after_max Temp = #menace_added Temp
scoreboard players operation #after_max Temp -= #before_max Temp



# Add scores
$scoreboard players operation @a[tag=ActivePlayer] cr_menaceFrom$(from) += #before_max Temp
$scoreboard players operation @a[tag=ActivePlayer] t_menaceFrom$(from) += #before_max Temp
$scoreboard players operation @a[tag=ActivePlayer] cr_menaceExtraFrom$(from) += #after_max Temp
$scoreboard players operation @a[tag=ActivePlayer] t_menaceExtraFrom$(from) += #after_max Temp

scoreboard players operation @a[tag=ActivePlayer] cr_menaceTotal += #before_max Temp
scoreboard players operation @a[tag=ActivePlayer] t_menaceTotal += #before_max Temp
scoreboard players operation @a[tag=ActivePlayer] cr_menaceExtraTotal += #after_max Temp
scoreboard players operation @a[tag=ActivePlayer] t_menaceExtraTotal += #after_max Temp

# Add menace after calculationss
$scoreboard players add MenaceQueue DungeonRun $(amount)
