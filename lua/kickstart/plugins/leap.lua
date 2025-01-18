return {
  {
    -- Enhanced in-buffer navigation with Leap
    'ggandor/leap.nvim',
    main = 'leap',
    opts = {
      case_sensitive = false, -- Make searches case-insensitive by default
      highlight_unlabeled_phase_one_targets = true, -- Highlight potential targets during the initial phase
    },
    keys = {
      {
        's',
        function()
          require('leap').leap {} -- Explicitly pass an empty table
        end,
        desc = 'Leap forward',
      },
      {
        'S',
        function()
          require('leap').leap { backward = true } -- Backward search
        end,
        desc = 'Leap backward',
      },
      {
        'gs',
        function()
          require('leap').leap {
            target_windows = require('leap.util').get_enterable_windows(),
          }
        end,
        desc = 'Leap across windows',
      },
    },
  },
}
