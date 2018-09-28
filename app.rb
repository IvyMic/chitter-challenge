require 'sinatra/base'
require 'pg'
require_relative './lib/peep.rb'
require 'sinatra/flash'

class Chitter < Sinatra::Base
  enable :sessions

  get '/' do
    # 'TEST'
  end

  get '/peeps' do
    @peeps = Peep.all
    erb(:peeps)
  end

  post '/peeps' do
    @peep = params[:peep_to_add]
    Peep.add(@peep)
    redirect '/peeps'
  end

  run! if app_file == $0
end