json.array!(@code_snippets) do |code_snippet|
  json.extract! code_snippet, :id, :language_id, :title, :work
  json.url code_snippet_url(code_snippet, format: :json)
end
