effect give @s slowness 5 10 false
data modify entity @s AngryAt set value {}
data modify entity @s AngryAt set from entity @a[scores={pl_skill_user=1},limit=1] UUID
execute at @s run summon lightning_bolt ~ ~ ~