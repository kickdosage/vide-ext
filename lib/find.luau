--!strict
local vide = require("../vide")
local types = require("./types")

type Array<T> = types.Array<T>
type Source<T> = vide.Source<T>

local function find<T>(src: Source<Array<T>>, value: T): number?
    local tbl = src()
    return table.find(tbl, value)
end

return find
