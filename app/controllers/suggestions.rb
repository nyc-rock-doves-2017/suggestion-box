get '/suggestions' do
	@suggestions = Suggestion.all
	erb :'suggestions/index'
end

get '/suggestions/new' do
	if request.xhr?
		erb :'suggestions/_new', layout: false
	else
		erb :'suggestions/new'
	end
end


post '/suggestions' do
	suggestion = Suggestion.new(params[:suggestion])

	if suggestion.save
		if request.xhr?
			erb :'suggestions/_show', layout: false, locals: {suggestion: suggestion}
		else
			redirect '/'
		end
	end
end

get '/suggestions/:id' do
	@suggestion = Suggestion.find(params[:id])

	erb :'suggestions/show'
end