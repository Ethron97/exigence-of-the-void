#say Fervor [+5s Poison II, +6 🔥]
function exigence:cards/announce_card

scoreboard players add ember.queue game.dungeon.temp 6

effect give @a[scores={dead=0},tag=ActivePlayer] poison 5 1 false
