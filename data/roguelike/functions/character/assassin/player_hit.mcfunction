# 모든 hit/hurt 매칭은 타격자 먼저, 피격자 나중 순으로 코드가 실행됨 (내가 그렇게 설계함)
# 만약 반대상황이 필요한 경우, roguelike:entity_hit_matching/usage.txt 참고

# 때린 "모든" 암살자에 대해 실행되는 구문이므로
# 매 틱, 매 스레드 별로 때린 사람의 스택이 몇이지 반영해야한다.
# 처리할 때 as_stack 은 사용하지 않는 사람이 있으면 0으로 초기화 시킬 필요 없음 (암살자일경우만 실행됨)
execute store result score .state as_stack run scoreboard players get @s as_stack
scoreboard players add .state as_stack 1
## 1 : 스택 x / 2 : 스택 1 / 3 : 스택 2
# tag @s remove baldo
# tag @s remove ready
scoreboard players set @s as_stack 0
# 또한 때린 사람이 처리가 필요한 경우 조건으로 분기
# 단순히 set attacker 의 경우 모듈로 따로 뺄까 생각중임 일단은 구현하고 나중에 리팩토링
execute if score .state as_stack matches 1..3 run function roguelike:character/assassin/stack/set_attacker