require 'sprockets'
require 'tilt/template'
require 'v8'

module Sprockets
  module DotJS
    class Compiler < Tilt::Template
      def self.default_mime_type
        'application/javascript'
      end

      def prepare
      end


      def initialize_engine
        dotjs_lib = open(::File.join(::File.dirname(__FILE__), '..', '..', 'support', 'doT.js')).read
        @@context = ::V8::Context.new
        @@context.eval(dotjs_lib)
        @@context['def'] = {}
      end

      def render(scope=Object.new, locals={}, &block)
        val = @@context['doT']['compile'].call(data,@@context['def'])
        val
      end
    end
  end
end
