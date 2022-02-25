CreateThread(function()
	local a = "output path: "..GetResourcePath(GetCurrentResourceName())..'/output/'..string.format("%s", "name", 1) ..'.log'
	print(a)
end)
RegisterServerEvent("nbk_debuger:writenativelog")
AddEventHandler("nbk_debuger:writenativelog", function (native,...)
	local f,err = io.open(GetResourcePath(GetCurrentResourceName())..'/output/'..string.format("%s", native) ..'.log','a+')
	if not f then return print(err) end
	local opts = {...}
	for i,v in pairs(opts) do 
		if type(v) == 'string' then 
			opts[i] = '"'..v.. '"'
		end 
	end 
	f:write("\t"..native.."("..table.concat(opts,",")..")\n")
	f:close()
end)
