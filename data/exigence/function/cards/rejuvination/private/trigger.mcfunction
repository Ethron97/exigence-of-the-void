# Called from play if resources successful

# Tellraw
tellraw @a [{text:"   Recycled ",color:"gray"},{"score":{"name":"@a[tag=ActivePlayer,sort=arbitrary,limit=1]","objective":"profile.data.deck.cr.cards_spellbound"},color:"gray"},{text:" ♻",color:"green"}]

# Switch to call recycles for each card spellbound
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=1..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=2..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=3..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=4..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=5..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute unless entity @a[scores={profile.data.deck.cr.cards_spellbound=6..},tag=ActivePlayer] run return 1
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=6..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=7..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=8..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=9..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=10..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute unless entity @a[scores={profile.data.deck.cr.cards_spellbound=11..},tag=ActivePlayer] run return 1
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=11..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=12..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=13..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=14..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=15..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute unless entity @a[scores={profile.data.deck.cr.cards_spellbound=16..},tag=ActivePlayer] run return 1
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=16..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=17..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=18..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=19..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=20..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute unless entity @a[scores={profile.data.deck.cr.cards_spellbound=21..},tag=ActivePlayer] run return 1
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=21..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=22..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=23..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=24..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=25..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute unless entity @a[scores={profile.data.deck.cr.cards_spellbound=26..},tag=ActivePlayer] run return 1
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=26..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=27..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=28..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=29..},tag=ActivePlayer] run function exigence:deck/recycle/try
execute if entity @a[scores={profile.data.deck.cr.cards_spellbound=30..},tag=ActivePlayer] run function exigence:deck/recycle/try

