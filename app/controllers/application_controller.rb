class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
 rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record
 rescue_from NoMethodError, with: :no_method_error

 private
 def couldnt_find_record
   redirect_to root_url, notice: "These are not the droids you are looking for"
 end

 def no_method_error
   redirect_to root_url, notice: "These are not the droids you are looking for."
 end
end
