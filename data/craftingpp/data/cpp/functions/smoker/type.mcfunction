# 燃料改变
execute if predicate cpp:furnace/burntime0 if predicate cpp:furnace/item1 run function cpp:smoker/fuel_change_check
# 消耗燃料
execute as @s[tag=!cpp_check_fuel] if predicate cpp:furnace/burntime0 if predicate cpp:furnace/item1 run function cpp:smoker/fuel_use
# 进度
execute unless predicate cpp:furnace/burntime0 store result block ~ ~ ~ CookTime short 1 run scoreboard players add @s cppTick 2
execute if score @s cppTick matches 199.. run function cpp:smoker/done
# 停止
execute if predicate cpp:furnace/burntime0 run scoreboard players reset @s cppTick
# 发光
execute if predicate cpp:furnace/lit run function cpp:smoker/lit_true
execute if predicate cpp:furnace/unlit run function cpp:smoker/lit_false
