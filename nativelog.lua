CreateThread(function()
	local a = "output path: "..GetResourcePath(GetCurrentResourceName())..'/output/'..string.format("%s", "name", 1) ..'.log'
	print(a)
end)
RegisterServerEvent("nbk_debuger:writenativelog")
AddEventHandler("nbk_debuger:writenativelog", function (native,...)
	local f,err = io.open(GetResourcePath(GetCurrentResourceName())..'/output/'..string.format("%s", native) ..'.log','w+')
	if not f then return print(err) end
	local opts = {...}
	f:write(native.."("..table.concat(opts,",")..")")
	f:close()
end)
