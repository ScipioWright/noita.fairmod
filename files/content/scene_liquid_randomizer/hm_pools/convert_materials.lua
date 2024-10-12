local water = CellFactory_GetType("water")

dofile("mods/noita.fairmod/files/scripts/utils/utilities.lua")

local liquids = MaterialsFilter(CellFactory_GetAllLiquids(false, false) or {})

local random_liquid = CellFactory_GetType(liquids[Random(1, #liquids)])

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform(entity_id)

print("Converting materials at " .. x .. ", " .. y)

ConvertMaterialOnAreaInstantly( x, y, 75, 128, water, random_liquid, false, false )

--EntityKill(entity_id)