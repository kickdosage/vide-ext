--!strict
local vide = require("../vide")
local types = require("./types")

type Array<T> = types.Array<T>
type Source<T> = vide.Source<T>

local function insert<T>(src: Source<Array<T>>, value: T)
    local tbl = src()
    table.insert(tbl, value)
    src(tbl)
end

return insert
