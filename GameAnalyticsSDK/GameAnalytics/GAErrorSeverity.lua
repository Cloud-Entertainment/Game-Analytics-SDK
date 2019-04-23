local function readonlytable(table)
   return setmetatable({}, {
     __index = table,
     __newindex = function(t, k, v)
                    error("Attempt to modify read-only table: " .. t .. ", key=" .. k .. ", value=" .. v)
                  end,
     __metatable = false
   });
end

return readonlytable({
    Debug = "Debug";
    Info = "Info";
    Warning = "Warning";
    Error = "Error";
    Critical = "Critical";
})
