execute as @s[tag=!ready,nbt={Inventory:[{tag:{main_wp:1b,Damage:10},Slot:-106b}]}] run item modify entity @s weapon.offhand roguelike:character/assassin/not_ready
execute as @s[nbt=!{SelectedItem:{tag:{sub_wp:1b}}}] run tag @s remove ready
execute store result score @s[nbt=!{SelectedItem:{tag:{sub_wp:1b}}}] as_stack_guage run data get storage roguelike:rp rp_stack_guage
execute as @s[tag=!ready,scores={as_stack=..1},nbt={SelectedItem:{tag:{sub_wp:1b}}}] run scoreboard players remove @s as_stack_guage 1

execute as @s[scores={as_stack_guage=..0},tag=!ready,nbt={SelectedItem:{tag:{sub_wp:1b}}}] run function roguelike:character/assassin/stack/stack_up
execute as @s[scores={as_stack_guage=..0},tag=!ready,nbt={SelectedItem:{tag:{sub_wp:1b}}}] run item modify entity @s weapon.offhand roguelike:character/assassin/ready
execute as @s[scores={as_stack_guage=..0}] run tag @s add ready
execute store result score @s[scores={as_stack_guage=0}] as_stack_guage run data get storage roguelike:rp rp_stack_guage

