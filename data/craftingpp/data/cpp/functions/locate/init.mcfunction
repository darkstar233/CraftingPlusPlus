# 标记玩家视线所有方块
# 记录玩家和视线坐标
execute anchored eyes run summon area_effect_cloud ^ ^ ^ {Tags:["cpp_locate_block"]}
execute store result score #x cppValue run data get entity @e[type=area_effect_cloud,distance=..3,tag=cpp_locate_block,limit=1] Pos[0] 100
execute store result score #y cppValue run data get entity @e[type=area_effect_cloud,distance=..3,tag=cpp_locate_block,limit=1] Pos[1] 100
execute store result score #z cppValue run data get entity @e[type=area_effect_cloud,distance=..3,tag=cpp_locate_block,limit=1] Pos[2] 100
execute anchored eyes run summon area_effect_cloud ^ ^ ^1 {Tags:["cpp_locate_block_front"],Invulnerable:1b,NoGravity:1b}
execute store result score #f cppValue run data get entity @e[type=area_effect_cloud,distance=..3,tag=cpp_locate_block_front,limit=1] Pos[0] 100
execute store result score #g cppValue run data get entity @e[type=area_effect_cloud,distance=..3,tag=cpp_locate_block_front,limit=1] Pos[1] 100
execute store result score #h cppValue run data get entity @e[type=area_effect_cloud,distance=..3,tag=cpp_locate_block_front,limit=1] Pos[2] 100
kill @e[type=area_effect_cloud,tag=cpp_locate_block_front]
# 记录朝向的坐标
scoreboard players operation #f cppValue -= #x cppValue
scoreboard players operation #g cppValue -= #y cppValue
scoreboard players operation #h cppValue -= #z cppValue
# 记录朝向的符号
scoreboard players operation #sf cppValue = #f cppValue
scoreboard players operation #sg cppValue = #g cppValue
scoreboard players operation #sh cppValue = #h cppValue
# 根据朝向符号调整坐标值
execute if score #sf cppValue matches ..-1 run scoreboard players operation #x cppValue *= #-1 cppValue
execute if score #sg cppValue matches ..-1 run scoreboard players operation #y cppValue *= #-1 cppValue
execute if score #sh cppValue matches ..-1 run scoreboard players operation #z cppValue *= #-1 cppValue
execute if score #sf cppValue matches ..-1 run scoreboard players operation #f cppValue *= #-1 cppValue
execute if score #sg cppValue matches ..-1 run scoreboard players operation #g cppValue *= #-1 cppValue
execute if score #sh cppValue matches ..-1 run scoreboard players operation #h cppValue *= #-1 cppValue
# 获取与方块交点
function cpp:locate/loop
