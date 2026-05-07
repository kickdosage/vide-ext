--!strict
local find = require("@self/find")
local insert = require("@self/insert")
local remove = require("@self/remove")
local tag = require("@self/tag")
local vide = require("./vide")

export type CombinedProps<Name, Props> = vide.InstanceProperties<Name> & Props

local vide_ext = {
	find = find,
	insert = insert,
	remove = remove,
	tag = tag,
}

return table.freeze(vide_ext)
