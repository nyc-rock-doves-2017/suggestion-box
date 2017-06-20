get '/' do
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
	p '*'*100
	@suggestion = Suggestion.find(params[:id])
	p @suggestion
	erb :'suggestions/show'
end