--!strict
local vide = require("../vide")
local types = require("./types")

type Array<T> = types.Array<T>
type Source<T> = vide.Source<T>

local function remove<T>(src: Source<Array<T>>, index: number)
    local tbl = src()
    table.remove(tbl, index)
    src(tbl)
end

return remove
