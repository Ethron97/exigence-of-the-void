# Updates bossbar visiblity

#bossbar set exigence:objective players @a[tag=ActivePlayer,tag=DisplayObjective]
execute in exigence:hub positioned 0.5 207.5 31.5 run bossbar set exigence:ds_deck players @a[distance=..5]
execute in exigence:hub positioned 0.5 207.5 31.5 run bossbar set exigence:ds_objective players @a[distance=..5]