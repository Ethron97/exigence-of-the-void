# Used for all generate, including multi-resource generate
# /function exigence:resources/try_generate {green:#,red:#,aqua:#}

# Clear title data
data modify storage exigence:resource_hud green_generate set value {text:""}
data modify storage exigence:resource_hud red_generate set value {text:""}
data modify storage exigence:resource_hud aqua_generate set value {text:""}
data modify storage exigence:resource_hud green_overflow set value {text:""}
data modify storage exigence:resource_hud red_overflow set value {text:""}
data modify storage exigence:resource_hud aqua_overflow set value {text:""}

scoreboard players set #LastConsumeResult game.resources 0

#$say try generate $(green) green, $(red) red, $(aqua) aqua

# Overflow = Green + NewGreen - MaxGreen > 0
scoreboard players operation #OverflowGreen game.resources = Current.Green game.resources
scoreboard players operation #OverflowRed game.resources = Current.Red game.resources
scoreboard players operation #OverflowAqua game.resources = Current.Aqua game.resources

$scoreboard players add #OverflowGreen game.resources $(green)
$scoreboard players add #OverflowRed game.resources $(red)
$scoreboard players add #OverflowAqua game.resources $(aqua)

scoreboard players operation #OverflowGreen game.resources -= Max.Green game.resources
scoreboard players operation #OverflowRed game.resources -= Max.Red game.resources
scoreboard players operation #OverflowAqua game.resources -= Max.Aqua game.resources

scoreboard players operation #OverflowGreen game.resources > 0 number
scoreboard players operation #OverflowRed game.resources > 0 number
scoreboard players operation #OverflowAqua game.resources > 0 number

execute if score #OverflowGreen game.resources matches 1.. run say Too many green
execute if score #OverflowRed game.resources matches 1.. run say Too many red
execute if score #OverflowAqua game.resources matches 1.. run say Too many aqua

# Get actual value added that isn't overflow
$scoreboard players set #AddedGreen game.resources $(green)
$scoreboard players set #AddedRed game.resources $(red)
$scoreboard players set #AddedAqua game.resources $(aqua)

scoreboard players operation #AddedGreen game.resources -= #OverflowGreen game.resources
scoreboard players operation #AddedRed game.resources -= #OverflowRed game.resources
scoreboard players operation #AddedAqua game.resources -= #OverflowAqua game.resources

# Generate
function exigence:resources/green/generate
function exigence:resources/red/generate
function exigence:resources/aqua/generate

# Display generated
function exigence:resources/try_generate_step_2
