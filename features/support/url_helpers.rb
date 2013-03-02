# include Engine routes in Cucumber world
module EngineRoutesHelper
  include CanvasCukes::Engine.routes.url_helpers
end
World(EngineRoutesHelper)
