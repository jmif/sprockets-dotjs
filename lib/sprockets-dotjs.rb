require 'sprockets/dotjs/compiler'

Sprockets.register_engine '.djs', ::Sprockets::DotJS::Compiler
