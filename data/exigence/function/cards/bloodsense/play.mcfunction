say Fervor [+5s Poison II, +2 minutes of Beastsense]

function exigence:player/effects/add_effect_time_card {effect:"beastsense",duration:2400}

effect give @a[tag=ActivePlayer,scores={dead=0}] poison 5 1 false
