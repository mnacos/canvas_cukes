module CanvasCukes
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load "canvas_cukes/tasks.rake"
    end
  end
end
