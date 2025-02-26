require('telescope').setup{
    defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        mappings = {
            i = {
                -- map actions.which_key to <C-h> (default: <C-/>)
                -- actions.which_key shows the mappings for your picker,
                -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                -- 键盘映射
                ["<C-j>"]=require('telescope.actions').cycle_history_next,
                ["<C-k>"]=require('telescope.actions').cycle_history_prev,
                ["<C-v>"]=require('telescope.actions').file_vsplit,
                ["<C-t>"]=require('telescope.actions').file_tab,

            },
            n={},
            v={},
        }
    },
    -- 分拣器配置，暂无该部分
    pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
    },
    extensions = {
        coc={
            theme='ivy',
            prefer_location=true,
        },
        fzf={
            fuzzy=true,
            override_generic_sorter=true,
            override_file_sorter=true,
            case_mode="smart_case",

        }

    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
    }
}
--require('telescope').load_extension('coc')
--require('telescope').load_extension('toggleterm')
require('telescope').load_extension('fzf')
require('telescope').load_extension('harpoon')
require('telescope').load_extension('zoxide')
