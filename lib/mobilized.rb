module Mobilized
  extend ActiveSupport::Concern

  MOBILE_USER_AGENTS =  'palm|blackberry|nokia|phone|midp|mobi|symbian|chtml|ericsson|minimo|' +
                        'audiovox|motorola|samsung|telit|upg1|windows ce|ucweb|astel|plucker|' +
                        'x320|x240|j2me|sgh|portable|sprint|docomo|kddi|softbank|android|mmp|' +
                        'pdxgw|netfront|xiino|vodafone|portalmmm|sagem|mot-|sie-|ipod|up\\.b|' +
                        'webos|amoi|novarra|cdm|alcatel|pocket|iphone|mobileexplorer|mobile'
                        # |ipad - removed for now.
  module ClassMethods
    def mobilized
      before_filter :is_mobile?
    end
  end

  def is_mobile?
    session[:is_mobile].nil? ? determine_mobile : session[:is_mobile]
  end

  # e.g. is_device?('ipad')
  def is_device?(type)
    request.user_agent.to_s.downcase.include?(type.to_s.downcase)
  end

  private
  def determine_mobile
    session[:is_mobile] = !(request.user_agent.to_s.downcase =~ Regexp.new(MOBILE_USER_AGENTS)).nil? && !is_device?('ipad')
  end

  included do 
    helper_method :is_mobile?, :is_device?
  end    
end 

ActionController::Base.send(:include, Mobilized)
