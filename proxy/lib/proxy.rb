# frozen_string_literal: true

class Proxy
  attr_reader :proxy_object, :messages

  def initialize(proxy_object)
    @proxy_object = proxy_object
    @messages = []
  end

  def method_missing(method_name, *args, &block)
    messages << method_name
    proxy_object.send(method_name, *args, &block)
  end
end
