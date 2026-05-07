# Called directly from debug_menu, not toggle_debug

# Disable all other debugs
execute if score toggle.altar debug matches 1 run function exigence:altar/admin/toggle_altar_debug {levels:'1..4'}
execute if score toggle.beacon debug matches 1 run function exigence:beacon/admin/toggle_beacon_debug {levels:'1..4'}
execute if score toggle.bell debug matches 1 run function exigence:bell/admin/toggle_bell_debug {levels:'1..4'}
execute if score toggle.berry debug matches 1 run function exigence:botany/admin/toggle_berry_debug {levels:'1..4'}
execute if score toggle.bookshelf debug matches 1 run function exigence:mirror/bookshelf/admin/toggle_bookshelf_debug {levels:'1..4'}
execute if score toggle.door debug matches 1 run function exigence:door/admin/toggle_door_debug {levels:'1..4'}
execute if score toggle.echo debug matches 1 run function exigence:ember/admin/toggle_echo_debug {levels:'1..4'}
execute if score toggle.enemy debug matches 1 run function exigence:enemy/admin/toggle_enemy_debug {levels:'1..4'}
execute if score toggle.hazard debug matches 1 run function exigence:hazard/admin/toggle_hazard_debug {levels:'1..4'}
execute if score toggle.menace debug matches 1 run function exigence:menace/admin/toggle_menace_debug {levels:'1..4'}
execute if score toggle.mirror debug matches 1 run function exigence:mirror/admin/toggle_mirror_debug {levels:'1..4'}
execute if score toggle.treasure debug matches 1 run function exigence:treasure/admin/toggle_treasure_debug {levels:'1..4'}
execute if score toggle.variance debug matches 1 run function exigence:variance/admin/toggle_variance_debug {levels:'1..4'}
execute if score toggle.vault debug matches 1 run function exigence:vault/admin/toggle_vault_debug {levels:'1..4'}

playsound minecraft:block.stone_button.click_off block @s ~ ~ ~ 1 1.2

# Toggle levelonly
execute if data storage exigence:debug {levelonly:1} run scoreboard players set #temp debug 0
execute if data storage exigence:debug {levelonly:0} run scoreboard players set #temp debug 1

# Callout new debug value
execute if data storage exigence:debug {levelonly:1} run say Turning levelonly debug off
execute if data storage exigence:debug {levelonly:0} run say Turning levelonly on

# Update actual value
data modify storage exigence:debug levelonly set from storage temp debug

## Functionality
#execute if data storage exigence:debug {levelonly:1} run say h
#execute if data storage exigence:debug {levelonly:0} run say h

function exigence:misc/triggers/admin/debug_menu
