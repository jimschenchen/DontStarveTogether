--------------------------------------------------------------------------
--[[ trackableitems class definition ]]
--------------------------------------------------------------------------

return Class(function(self, inst)

assert(not TheNet:IsDedicated(), "hudindicatablemanager should only exist on client")
                                  
--------------------------------------------------------------------------
--[[ Dependencies ]]
--------------------------------------------------------------------------

--------------------------------------------------------------------------
--[[ Constants ]]
--------------------------------------------------------------------------

--------------------------------------------------------------------------
--[[ Member variables ]]
--------------------------------------------------------------------------

--Public
self.inst = inst
self.items = {}
--------------------------------------------------------------------------
--[[ Private member functions ]]
--------------------------------------------------------------------------

--------------------------------------------------------------------------
--[[ Private event handlers ]]
--------------------------------------------------------------------------

--------------------------------------------------------------------------
--[[ Initialization ]]
--------------------------------------------------------------------------

--------------------------------------------------------------------------
--[[ Public getters and setters ]]
--------------------------------------------------------------------------

--------------------------------------------------------------------------
--[[ Public member functions ]]
--------------------------------------------------------------------------

function self:RegisterItem(item)
	if not self.items[item.GUID] then
		self.items[item.GUID] = item
	end
end

function self:UnRegisterItem(item)
	if item then
		if self.items[item.GUID] then
			self.items[item.GUID] = nil
		end
	end
end

--------------------------------------------------------------------------
--[[ Save/Load ]]
--------------------------------------------------------------------------

function self:OnSave()
	local data = {}
	return data
end

function self:OnLoad(data)
	if data ~= nil then
	end
end

--------------------------------------------------------------------------
--[[ Debug ]]
--------------------------------------------------------------------------

function self:GetDebugString()
	if true then
		return nil 
	end
end

end)
