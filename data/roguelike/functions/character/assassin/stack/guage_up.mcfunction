execute as @s[scores={as_stack=..1},nbt={SelectedItem:{tag:{sub_wp:1b},id:"minecraft:warped_fungus_on_a_stick"}}] run scoreboard players remove @s as_stack_guage 1
execute as @s[scores={as_stack_guage=..0}] run tag @s add ready
execute as @s[scores={as_stack=..1,as_stack_guage=..0},tag=ready,nbt={SelectedItem:{tag:{sub_wp:1b}}}] run scoreboard players add @s as_stack 1
execute store result score @s[scores={as_stack_guage=..0},tag=ready] as_stack_guage run data get storage roguelike:rp rp_stack_guage
