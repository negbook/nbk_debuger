NativeLog = function (native,...)
	TriggerServerEvent("nbk_debuger:writenativelog",native,...)
end 
exports('NativeLog',NativeLog)	