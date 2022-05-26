local config = require('user.ui.user')
local u = require('user.ui.utils')

local defaults = {
  border_style = 'rounded',
}

require('cosmic-ui').setup(u.merge(defaults, config.cosmic_ui or {}))
