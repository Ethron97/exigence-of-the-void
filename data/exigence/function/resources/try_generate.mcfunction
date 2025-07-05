# Used for all generate, including multi-resource generate
# /function exigence:resources/try_generate {green:#,red:#,aqua:#}

# Clear title data
data modify storage exigence:resource_hud green_generate set value {text:""}
data modify storage exigence:resource_hud red_generate set value {text:""}
data modify storage exigence:resource_hud aqua_generate set value {text:""}
data modify storage exigence:resource_hud green_overflow set value {text:""}
data modify storage exigence:resource_hud red_overflow set value {text:""}
data modify storage exigence:resource_hud aqua_overflow set value {text:""}

scoreboard players set LastConsumeResult Resources 0

#$say try generate $(green) green, $(red) red, $(aqua) aqua

# Overflow = Green + NewGreen - MaxGreen > 0
scoreboard players operation #OverflowGreen Resources = Green Resources
scoreboard players operation #OverflowRed Resources = Red Resources
scoreboard players operation #OverflowAqua Resources = Aqua Resources

$scoreboard players add #OverflowGreen Resources $(green)
$scoreboard players add #OverflowRed Resources $(red)
$scoreboard players add #OverflowAqua Resources $(aqua)

scoreboard players operation #OverflowGreen Resources -= MaxGreen Resources
scoreboard players operation #OverflowRed Resources -= MaxRed Resources
scoreboard players operation #OverflowAqua Resources -= MaxAqua Resources

scoreboard players operation #OverflowGreen Resources > 0 number
scoreboard players operation #OverflowRed Resources > 0 number
scoreboard players operation #OverflowAqua Resources > 0 number

execute if score #OverflowGreen Resources matches 1.. run say Too many green
execute if score #OverflowRed Resources matches 1.. run say Too many red
execute if score #OverflowAqua Resources matches 1.. run say Too many aqua

# Get actual value added that isn't overflow
$scoreboard players set #AddedGreen Resources $(green)
$scoreboard players set #AddedRed Resources $(red)
$scoreboard players set #AddedAqua Resources $(aqua)

scoreboard players operation #AddedGreen Resources -= #OverflowGreen Resources
scoreboard players operation #AddedRed Resources -= #OverflowRed Resources
scoreboard players operation #AddedAqua Resources -= #OverflowAqua Resources

# Generate
function exigence:resources/green/generate
function exigence:resources/red/generate
function exigence:resources/aqua/generate

# Display generated
function exigence:resources/try_generate_step_2
