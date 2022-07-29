require "paq" {
	"savq/paq-nvim";                  -- Let Paq manage itself
	--    "neovim/nvim-lspconfig";          -- Mind the semi-colons
	--    "hrsh7th/nvim-cmp";
    -- themes 
        'folke/tokyonight.nvim'; 
        'cocopon/iceberg.vim';
        'sainnhe/sonokai';
        -- 'itchyny/lightline.vim';
        'windwp/windline.nvim';

    -- functionality
        'tpope/vim-fugitive';
        'SirVer/ultisnips';
        { 
            'akinsho/bufferline.nvim',
            tag = "v2.*", 
            requires = 'kyazdani42/nvim-web-devicons' 
        };

        'tpope/vim-surround';
        'neovim/nvim-lspconfig';

        -- for telescope
        'nvim-lua/plenary.nvim';
        'nvim-telescope/telescope.nvim';

        'vimwiki/vimwiki';
        { 'iamcco/markdown-preview.nvim', 
            run = 'yarn install' };
        'junegunn/goyo.vim';
        -- 'preservim/nerdtree';

    -- webdev
        'ap/vim-css-color';
        'mattn/emmet-vim';

--    {'nvim-treesitter/nvim-treesitter', run=vim.fn[':TSUpdate']};--  " We recommend updating the parsers on update
}
