if Rails.env.test? && !ENV['CANVAS_CUKES_FORWARD_COMMAND'].blank?
  pid = fork do
    exec ENV['CANVAS_CUKES_FORWARD_COMMAND']
  end
  Process.detach(pid)
  sleep 5
  at_exit do
    Process.kill('TERM', pid)
  end
end
