# tag @a[tag=assassin,scores={RP_ON_DEATH=1}] remove baldo
execute as @a[tag=assassin,scores={RP_USED_PEARL=1},nbt=!{SelectedItem:{id:"minecraft:ender_pearl"}}] run item replace entity @s weapon.mainhand with minecraft:slime_ball{display:{Name:'{"text":"빈 암살자의 엔더 진주","color":"aqua","bold":false,"italic":false}',Lore:['{"text":"전부 다 사용하여 충전을 기다려야 한다.","color":"gray","bold":false,"italic":false}']}}
execute as @a[tag=assassin,scores={RP_USED_PEARL=1}] run effect give @s speed 3 1
execute as @a[tag=assassin,scores={RP_USED_PEARL=1}] run function roguelike:character/assassin/stack/stack_up
execute as @a[tag=assassin,scores={RP_USED_PEARL=1}] run scoreboard players remove @s as_pearl 1

execute as @s[scores={as_stack=1}] run effect give @s strength 3 1 true
execute as @s[scores={as_stack=2}] run effect give @s strength 3 2 true
execute as @s[scores={as_stack=0}] run effect give @s strength 3 0 true

################################################################
function roguelike:character/assassin/smoke/main
#####################################################################

## 스택관련
## 이건 왼손에든거 nbt임@a[nbt={Inventory:[{id:"minecraft:stone_hoe",Slot:-106b}]

# execute as @a[tag=assassin,nbt={Inventory:[{tag:{main_wp:1b},Slot:-106b}]}] run function roguelike:character/assassin/stack/guage_up
# execute as @a[tag=assassin,tag=ready,nbt={SelectedItem:{tag:{main_wp:1b}}},nbt={Inventory:[{tag:{sub_wp:1b},Slot:-106b}]}] run function roguelike:character/assassin/stack/swap
scoreboard players remove @s[scores={as_stack_down=2..}] as_stack_down 1
execute as @a[tag=assassin,scores={as_stack_down=1, as_stack=1..}] run function roguelike:character/assassin/stack/stack_down
scoreboard players set @s[scores={as_stack=3..}] as_stack 2


## 스택 토큰

function roguelike:character/assassin/stack/token/main

############################################################

tag @a[tag=assassin,scores={RP_USED_PEARL = 1,as_pearl=..1}] remove RP_spause1
tag @a[tag=assassin,scores={RP_USED_LPOTION = 1}] remove RP_spause2

scoreboard players set @a[tag=assassin] temp 0

