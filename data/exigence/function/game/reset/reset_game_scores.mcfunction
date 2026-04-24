# Reset game scores

## CONSTRAINTS

#====================================================================================================

# DATA
data modify storage exigence:treasure queue set value []
#data modify storage exigence:dungeon active_player.uuid set from entity @a[tag=ActivePlayer,limit=1] UUID

# Reset NPC dialogue GAME scores TODO
scoreboard players set npc.supplier game.dialogue 0
execute unless entity @a[tag=Predungeon,advancements={exigence:story/match_bookshelf=true}] run scoreboard players set npc.scientist game.dialogue 0
execute if entity @a[tag=Predungeon,advancements={exigence:story/match_bookshelf=true}] run scoreboard players set npc.scientist game.dialogue 6
execute unless entity @a[tag=Predungeon,advancements={exigence:story/light_altars=true}] run scoreboard players set npc.petitioner game.dialogue 0
execute if entity @a[tag=Predungeon,advancements={exigence:story/light_altars=true}] run scoreboard players set npc.petitioner game.dialogue 4

# Game Time
scoreboard players set game.ticks tick_counter 0
# Cooldowns
scoreboard players set card.draw.cooldown tick_counter 0
scoreboard players set card.play.cooldown tick_counter 0

# Dungeon run scores
# GAME STATE
scoreboard players set game.all_echos_found game.state 0
scoreboard players set game.escape_portal game.state 0
scoreboard players set game.active_level game.state 1
scoreboard players set game.ascend_level game.state 1
scoreboard players set game.beacons_lit game.state 0
scoreboard players set game.max_menace game.state 0
scoreboard players set game.dead_players game.state 0
# Set elsewhere:
# game.difficulty
# game.is_active
# game.profile_difficulty
# game.player_count

# DUNGEON
scoreboard players set .min_menace game.dungeon 0
scoreboard players set .menace game.dungeon 0
scoreboard players set .menace_block game.dungeon 0
scoreboard players set .hazard game.dungeon 0
scoreboard players set .cards game.dungeon 0
scoreboard players set .fatigue game.dungeon 0

# TEMP
scoreboard players set card.queue game.dungeon.temp 0
scoreboard players set menace.queue game.dungeon.temp 0
scoreboard players set hazard.queue game.dungeon.temp 0
scoreboard players set treasure.queue game.dungeon.temp 0
scoreboard players set ember.queue game.dungeon.temp 0
scoreboard players set berry.queue game.dungeon.temp 0
scoreboard players set growth.level game.dungeon.temp 0

# ECHO
scoreboard players set .echos_required game.dungeon.echo 0
scoreboard players set .difficulty_mod game.dungeon.echo 0
scoreboard players set .echo_difficulty game.dungeon.echo 0
scoreboard players set .level_1_echos game.dungeon.echo 0
scoreboard players set .level_2_echos game.dungeon.echo 0
scoreboard players set .level_3_echos game.dungeon.echo 0
scoreboard players set .level_4_echos game.dungeon.echo 0

# Cards played display
scoreboard players reset * game.cards_played
scoreboard players reset * game.cards_played.times_played
scoreboard players reset * game.cards_played.times_processed
scoreboard players reset * game.cards_played.times_recycled

# Triumph
scoreboard players set tri.Elation game.triumph 0
scoreboard players set tri.Joy game.triumph 0
scoreboard players set tri.Gratification game.triumph 0
scoreboard players set tri.TrueAscension game.triumph 0

scoreboard players set exit.portal.countdown tick_counter 0

# Misc
scoreboard players set #current game.item.clock_marker.id 0

#====================================================================================================
# Global Modifiers
scoreboard players set mod.void_deck_modifier game.modifiers 0
scoreboard players set mod.led_by_ancient_light game.modifiers 0
scoreboard players set mod.max_dragon_breath game.modifiers 0
scoreboard players set mod.void_cache game.modifiers 0
scoreboard players set mod.bonus_cards game.modifiers 0
scoreboard players set mod.evergrowth game.modifiers 0
scoreboard players set mod.echo_cake game.modifiers 0
scoreboard players set mod.gold_idol game.modifiers 0
scoreboard players set mod.void_shop_slots game.modifiers 3
scoreboard players set mod.void_merchants game.modifiers 1
scoreboard players set mod.lucky_feather game.modifiers 0
scoreboard players set mod.brush game.modifiers 0
scoreboard players set mod.claustrophobia game.modifiers 0
scoreboard players set mod.exigence game.modifiers 0
scoreboard players set mod.tranquility game.modifiers 0
scoreboard players set mod.backup_plan game.modifiers 0
scoreboard players set mod.final_harvest game.modifiers 0
scoreboard players set mod.ambrosia game.modifiers 0
scoreboard players set mod.concordance game.modifiers 0
scoreboard players set mod.resonance game.modifiers 0
scoreboard players set mod.revealed_mirrors game.modifiers 0
scoreboard players set mod.patience game.modifiers 0
scoreboard players set mod.void_scent game.modifiers 0
scoreboard players set mod.chrysopoeia game.modifiers 0
scoreboard players set mod.mending game.modifiers 0
scoreboard players set mod.oblivion game.modifiers 0
scoreboard players set mod.spellbook game.modifiers 0
scoreboard players set mod.metabolism game.modifiers 0
scoreboard players set mod.final_ascension game.modifiers 0
scoreboard players set mod.inner_fire game.modifiers 0

# Dev modififers
scoreboard players set .vault_rain game.dev_modifiers 0

#====================================================================================================

# Load score/cooldown limits

# Initialize cooldowns
scoreboard players set #RavagerAggroCooldownLimit tick_counter 100
scoreboard players set ravager.aggro.cooldown tick_counter 50
# Delay after breaking ravager glass before it comes back
scoreboard players set #RavagerGlassCooldownLimit game.entity.ravager_glass.cooldown 20

# Pull passive treasure cooldown from data
execute store result score #PassiveTreasureCooldownLimit tick_counter run data get storage exigence:dungeon_settings passive_treasure 1
scoreboard players operation passive.treasure.cooldown tick_counter = #PassiveTreasureCooldownLimit tick_counter

scoreboard players set seconds.cooldown tick_counter 20

# 35 seconds cooldown for the first card draw. Normally 30 seconds
scoreboard players set #CardDrawCooldownLimit tick_counter 600
scoreboard players operation card.draw.cooldown tick_counter = #CardDrawCooldownLimit tick_counter

# Queued cards get played every 3 seconds
scoreboard players set #CardPlayCooldownLimit tick_counter 60
scoreboard players operation card.play.cooldown tick_counter = #CardPlayCooldownLimit tick_counter

# Lowest interval of heartbeats
scoreboard players set #minHeartbeatDelay tick_counter 9

# Max attempts of a treasure node before giving up treasure drop
scoreboard players set #MaxTreasureDroppingIterations node.treasure.drop_working 10

# Delay before a menace node can trigger from player presence again
scoreboard players set #MenaceNodeCooldownLimit game.node.menace.cooldown 200

# Warden - Max Awareness
scoreboard players set #max_awareness game.warden.awareness 75
# Warden - Anger Threshold
scoreboard players set #anger_threshold game.warden.awareness 30