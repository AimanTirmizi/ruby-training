# frozen_string_literal: true

class Proxy
  attr_reader :proxy_object

  def initialize(proxy_object)
    @proxy_object = proxy_object
  end

  def method_missing(method_name, *args, &block)
    proxy_object.send(method_name, *args, &block)
  end

  def messages
    [:upcase, :split]
  end

end
