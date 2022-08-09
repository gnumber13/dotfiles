-- utf seperators  ⏐ , , 
require('lualine').setup({
	options = {
		theme = 'auto', -- default
		--component_separators = { left = '', right = ''},
--		section_separators = { left = '', right = ''},
		component_separators = { left = '', right = ''},
		--section_separators = { left = '', right = ''}
		section_separators = { left = ' ', right = ''}
		--section_separators = { left = '', right = ''}
	}
})

