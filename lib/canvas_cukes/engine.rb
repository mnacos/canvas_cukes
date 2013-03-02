module CanvasCukes
  class Engine < ::Rails::Engine
    rake_tasks do
      load "canvas_cukes/tasks.rake"
    end
  end
end
