get '/suggestions' do
  p '*'*50
  p session
	@suggestions = Suggestion.all
	erb :'suggestions/index'
end

get '/suggestions/new' do
	erb :'suggestions/new'
end


post '/suggestions' do
	suggestion = Suggestion.new(params[:suggestion])

	if suggestion.save
		redirect '/'
	end
end

get '/suggestions/:id' do
	@suggestion = Suggestion.find(params[:id])

	erb :'suggestions/show'
end