# use capybara-webkit and predefine capybara port so that we can forward it
Capybara.javascript_driver = :webkit
Capybara.default_driver = :webkit
Capybara.server_port = 7787
Capybara.app_host = 'http://localhost:7787'
# FIXME this needs to become:
# Capybara.app_host = ENV['CANVAS_CUKES_STANDALONE_URL']
