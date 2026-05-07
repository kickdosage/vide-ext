--!strict
local vide = require("../vide")

local action = vide.action

local function tag(...: string)
	local packed = { ... }
	return action(function(instance)
		for _, value in packed do
			instance:AddTag(value)
		end
	end)
end

return tag
