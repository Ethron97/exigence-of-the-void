#execute if data storage exigence:dungeon_settings {ardor_flame_type:0} run say [+1 Flame of Ardor on each level]
#execute if data storage exigence:dungeon_settings {ardor_flame_type:1} run say [+1 Ember of Ardor on each level]
function exigence:cards/announce_card

scoreboard players add mod.led_by_ancient_light game.modifiers 1
