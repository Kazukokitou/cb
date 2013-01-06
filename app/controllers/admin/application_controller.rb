class Admin::ApplicationController < ApplicationController
  http_basic_authenticate_with name: ENV['BASIC_AUTH_NAME'], password: ENV['BASIC_AUTH_PASS'] if Rails.env != 'development'
end
