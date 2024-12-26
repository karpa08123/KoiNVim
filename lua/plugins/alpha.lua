return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.startify'

    dashboard.section.header.val = {
[[ __   ___   ______    __  ___      ___  __     ___      ___]], 
[[|/"| /  ") /    " \  |" \|"  \    /"  ||" \   |"  \    /"  |]],
[[(: |/   / // ____  \ ||  |\   \  //  / ||  |   \   \  //   |]],
[[|    __/ /  /    ) :)|:  | \\  \/. ./  |:  |   /\\  \/.    |]],
[[(// _  \(: (____/ // |.  |  \.    //   |.  |  |: \.        |]],
[[|: | \  \\        /  /\  |\  \\   /    /\  |\ |.  \    /:  |]],
[[(__|  \__)\"_____/  (__\_|_)  \__/    (__\_|_)|___|\__/|___|]],
                                                           
    }

    alpha.setup(dashboard.opts)
  end,
}
