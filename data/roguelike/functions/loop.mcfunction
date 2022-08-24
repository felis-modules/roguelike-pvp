kill @e[type=arrow,nbt={inGround:1b}]

function roguelike:character/loop
function roguelike:commands/loop
function roguelike:multiplayer/loop
function roguelike:msg/loop

# Shield block sound
execute at @a[scores={SHIELD_BLOCKED=1..}] run playsound minecraft:item.shield.block master @a[distance=..30] ~ ~ ~ 1 0.96 0

# custom damage hurt cooltime
scoreboard players remove @e[scores={RP_HURT_COOL=1..}] RP_HURT_COOL 1

# Reset Event Listeners
# THIS PROCEDURE MUST BE DONE FINALLY

scoreboard players set @a RP_USED_CBOW 0
scoreboard players set @a RP_USED_CSTICK 0
scoreboard players set @a RP_USED_FSTICK 0
scoreboard players set @a SHIELD_BLOCKED 0