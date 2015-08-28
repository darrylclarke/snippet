class Language < ActiveRecord::Base
	has_many :code_snippets, dependent: :nullify
	
	validates	:name,	
				uniqueness: true
end
