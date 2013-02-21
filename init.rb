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

  # dashboard:activity
  #
  # opens the activity dashboard for an app
  #
  def activity
    require "launchy"

    if app = optional_app
      Launchy.open("https://dashboard.heroku.com/apps/#{app}/activity")
    else
      Launchy.open("https://dashboard.heroku.com/activity")
    end
  end

  # dashboard:collaborators
  #
  # opens the collaborators dashboard for an app
  #
  def collaborators
    require "launchy"

    if app
      Launchy.open("https://dashboard.heroku.com/apps/#{app}/collaborators")
    end
  end

  # dashboard:settings
  #
  # opens the settings dashboard for an app
  #
  def settings
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
