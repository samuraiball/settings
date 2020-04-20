local BasePlugin = require "kong.plugins.base_plugin"

local CustomHandler = BasePlugin:extend()

CustomHandler.VERSION = "1.0.0"

CustomHandler.PRIORITY = 10

function CustomHandler:new()
    CustomHandler.super.new(self, "my-plugin")
end

function CustomHandler:access(config)
    CustomHandler.super.access(self)
    ngx.req.set_header("x-custom-header", "hello, kong plugins")
end

return CustomHandler
