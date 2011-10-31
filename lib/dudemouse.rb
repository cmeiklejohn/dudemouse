# encoding: UTF-8

require 'rubygems'
require 'bundler'
require 'sinatra'

module Dudemouse
  class Application < Sinatra::Base
    get '/' do
      erb :index
    end
  end

  def self.app
    @app ||= Rack::Builder.new do
      run Application
    end
  end
end
