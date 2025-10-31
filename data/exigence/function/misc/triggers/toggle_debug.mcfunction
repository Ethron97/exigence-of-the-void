# Toggle debug from menu

#say Toggle debug

# If levelonly, whatever matches /trigger level
$execute if data storage exigence:debug {levelonly:1} if score @s ObjectLevel matches 1 run function exigence:$(debug_function) {levels:'1'}
$execute if data storage exigence:debug {levelonly:1} if score @s ObjectLevel matches 2 run function exigence:$(debug_function) {levels:'2'}
$execute if data storage exigence:debug {levelonly:1} if score @s ObjectLevel matches 3 run function exigence:$(debug_function) {levels:'3'}
$execute if data storage exigence:debug {levelonly:1} if score @s ObjectLevel matches 4 run function exigence:$(debug_function) {levels:'4'}
# Else all levels
$execute if data storage exigence:debug {levelonly:0} run function exigence:$(debug_function) {levels:'1..10'}

playsound minecraft:block.stone_button.click_off block @s ~ ~ ~ 1 1.2

# Reopen menu with updated switches
function exigence:misc/triggers/admin/debug_menu
