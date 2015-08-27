class Language < ActiveRecord::Base
	has_many :code_snippets, dependent: :nullify
end
