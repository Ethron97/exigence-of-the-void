# Summons the block display that connects parent/child displays

## CONSTRAINTS
#   AT where it should be summoned

## INPUT
#   STR texture - minecraft block id
#   FLOAT[] Rotation

#====================================================================================================

# DEBUG
$execute if score toggle.trial debug matches 1 if score debug.level debug matches 4.. run say (D4 Trial) summoning line $(texture) $(thickness) $(offset) $(length)

# Summon block dispay
$summon minecraft:block_display ^0.01 ^ ^ {interpolation_duration:20,Rotation:$(Rotation),Tags:["NewPizzaLine","PizzaLine"],block_state:{Name:"$(texture)"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,0.0f],scale:[0.2f,0.2f,$(length)f]}}

# Give score
scoreboard players operation @e[type=minecraft:block_display,tag=NewPizzaLine,distance=..1] trial.object.pizza_id = #next trial.object.pizza_id

# Remove local tag
tag @e[type=minecraft:block_display,tag=NewPizzaLine,distance=..1] remove NewPizzaLine
