require "leaflet/encoded/rails/version"

module Leaflet
  module Encoded
    module Rails
      class Engine < ::Rails::Engine
        initializer 'leaflet-encoded.precompile' do |app|
          app.config.assets.precompile += %w(Polyline.encoded.js)
        end
      end
    end
  end
end
