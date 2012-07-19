require "heroku/command/base"

class Heroku::Command::Dashboard < Heroku::Command::Base

  # dashboard
  #
  # opens the heroku dashboard for an app
  #
  def index
    require "launchy"

    if app = optional_app
      Launchy.open("https://dashboard.heroku.com/apps/#{app}")
    else
      Launchy.open("https://dashboard.heroku.com")
    end
  end

  # dashboard:history
  #
  # opens the history dashboard for an app
  #
  def history
    require "launchy"

    if app = optional_app
      Launchy.open("https://dashboard.heroku.com/apps/#{app}/history")
    else
      Launchy.open("https://dashboard.heroku.com/history")
    end
  end

  # dashboard:resources
  #
  # opens the resources dashboard for an app
  #
  def resources
    require "launchy"

    if app
      Launchy.open("https://dashboard.heroku.com/apps/#{app}/resources")
    end
  end

  # dashboard:collaborators
  #
  # opens the collaborators dashboard for an app
  #
  def resources
    require "launchy"

    if app
      Launchy.open("https://dashboard.heroku.com/apps/#{app}/collaborators")
    end
  end
  #
  # dashboard:settings
  #
  # opens the settings dashboard for an app
  #
  def resources
    require "launchy"

    if app
      Launchy.open("https://dashboard.heroku.com/apps/#{app}/settings")
    end
  end

private

  def optional_app
    app rescue nil
  end

end
