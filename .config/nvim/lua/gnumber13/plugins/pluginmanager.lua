require "paq" {
	"savq/paq-nvim";                  -- Let Paq manage itself
	--    "hrsh7th/nvim-cmp";
	
    -- themes 
		'kshenoy/vim-signature';
        'folke/tokyonight.nvim'; 
        'cocopon/iceberg.vim';
        'sainnhe/sonokai';
      
        -- 'lewis6991/gitsigns.nvim'; -- for git support for windline

    -- functionality
		
        { 
			'akinsho/bufferline.nvim', tag = "v2.*", 
            requires = 'kyazdani42/nvim-web-devicons' 
        };

        'tpope/vim-fugitive';
        'tpope/vim-surround';


        'neovim/nvim-lspconfig';

		'williamboman/mason.nvim';
		'williamboman/mason-lspconfig.nvim';
	--	'phaazon/hop.nvim';

		'nvim-lualine/lualine.nvim';
		'L3MON4D3/LuaSnip';
        -- for telescope
        'nvim-lua/plenary.nvim';
        'nvim-telescope/telescope.nvim';

        'vimwiki/vimwiki';
        { 'iamcco/markdown-preview.nvim', 
            run = 'yarn install' };
        'junegunn/goyo.vim';

    -- webdev
        'ap/vim-css-color';
        'mattn/emmet-vim';

-- {'nvim-treesitter/nvim-treesitter', run=vim.fn[':TSUpdate']};--  " We recommend updating the parsers on update
--'norcalli/nvim-colorizer.lua';
--'SirVer/ultisnips';
-- 'preservim/nerdtree';
}
