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

  def number_of_times_called(method_name)
    messages.count(method_name)
  end

  def called?(method_name)
    messages.include?(method_name)
  end

  def respond_to?(method_name)
    proxy_object.respond_to?(method_name) || super(method_name)
  end
end
