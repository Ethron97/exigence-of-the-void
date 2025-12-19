# Called directly from debug_menu, not toggle_debug

# Disable all other debugs
execute if data storage exigence:debug {altar:1} run function exigence:altar/toggle_altar_debug {levels:'1..4'}
execute if data storage exigence:debug {beacon:1} run function exigence:beacon/toggle_beacon_debug {levels:'1..4'}
execute if data storage exigence:debug {bell:1} run function exigence:bell/toggle_bell_debug {levels:'1..4'}
execute if data storage exigence:debug {berry:1} run function exigence:botany/toggle_berry_debug {levels:'1..4'}
execute if data storage exigence:debug {bookshelf:1} run function exigence:mirror/bookshelf/bookshelves/toggle_bookshelf_debug {levels:'1..4'}
execute if data storage exigence:debug {door:1} run function exigence:door/toggle_door_debug {levels:'1..4'}
execute if data storage exigence:debug {echo:1} run function exigence:ember/toggle_echo_debug {levels:'1..4'}
execute if data storage exigence:debug {enemy:1} run function exigence:enemy/toggle_enemy_debug {levels:'1..4'}
execute if data storage exigence:debug {hazard:1} run function exigence:hazard/toggle_hazard_debug {levels:'1..4'}
execute if data storage exigence:debug {menace:1} run function exigence:menace/toggle_menace_debug {levels:'1..4'}
execute if data storage exigence:debug {mirror:1} run function exigence:mirror/toggle_mirror_debug {levels:'1..4'}
execute if data storage exigence:debug {treasure:1} run function exigence:treasure/toggle_treasure_debug {levels:'1..4'}
execute if data storage exigence:debug {variance:1} run function exigence:variance/toggle_variance_debug {levels:'1..4'}
execute if data storage exigence:debug {vault:1} run function exigence:vault/toggle_vault_debug {levels:'1..4'}

playsound minecraft:block.stone_button.click_off block @s ~ ~ ~ 1 1.2

# Toggle levelonly
execute if data storage exigence:debug {levelonly:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {levelonly:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {levelonly:1} run say Turning levelonly debug off
execute if data storage exigence:debug {levelonly:0} run say Turning levelonly on

# Update actual value
data modify storage exigence:debug levelonly set from storage temp debug

## Functionality
#execute if data storage exigence:debug {levelonly:1} run say h
#execute if data storage exigence:debug {levelonly:0} run say h

function exigence:misc/triggers/admin/debug_menu
