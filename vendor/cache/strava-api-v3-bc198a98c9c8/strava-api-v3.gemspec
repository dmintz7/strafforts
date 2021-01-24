# -*- encoding: utf-8 -*-
# stub: strava-api-v3 0.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "strava-api-v3".freeze
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jared Holdcroft".freeze]
  s.date = "2021-01-23"
  s.description = "The library provides a wrapper to Version 3 of the Strava API".freeze
  s.email = ["jared@theholdcrofts.com".freeze]
  s.files = [".gitignore".freeze, ".travis.yml".freeze, "DOCS.md".freeze, "Gemfile".freeze, "LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "fonts/copse-regular-webfont.eot".freeze, "fonts/copse-regular-webfont.svg".freeze, "fonts/copse-regular-webfont.ttf".freeze, "fonts/copse-regular-webfont.woff".freeze, "fonts/quattrocentosans-bold-webfont.eot".freeze, "fonts/quattrocentosans-bold-webfont.svg".freeze, "fonts/quattrocentosans-bold-webfont.ttf".freeze, "fonts/quattrocentosans-bold-webfont.woff".freeze, "fonts/quattrocentosans-bolditalic-webfont.eot".freeze, "fonts/quattrocentosans-bolditalic-webfont.svg".freeze, "fonts/quattrocentosans-bolditalic-webfont.ttf".freeze, "fonts/quattrocentosans-bolditalic-webfont.woff".freeze, "fonts/quattrocentosans-italic-webfont.eot".freeze, "fonts/quattrocentosans-italic-webfont.svg".freeze, "fonts/quattrocentosans-italic-webfont.ttf".freeze, "fonts/quattrocentosans-italic-webfont.woff".freeze, "fonts/quattrocentosans-regular-webfont.eot".freeze, "fonts/quattrocentosans-regular-webfont.svg".freeze, "fonts/quattrocentosans-regular-webfont.ttf".freeze, "fonts/quattrocentosans-regular-webfont.woff".freeze, "images/background.png".freeze, "images/bg_hr.png".freeze, "images/blacktocat.png".freeze, "images/body-background.png".freeze, "images/bullet.png".freeze, "images/hr.gif".freeze, "images/icon_download.png".freeze, "images/octocat-logo.png".freeze, "images/sprite_download.png".freeze, "index.html".freeze, "javascripts/main.js".freeze, "lib/strava/api/v3.rb".freeze, "lib/strava/api/v3/activity.rb".freeze, "lib/strava/api/v3/activity_extras.rb".freeze, "lib/strava/api/v3/athlete.rb".freeze, "lib/strava/api/v3/athlete_extras.rb".freeze, "lib/strava/api/v3/auth.rb".freeze, "lib/strava/api/v3/client.rb".freeze, "lib/strava/api/v3/club.rb".freeze, "lib/strava/api/v3/club_group_event.rb".freeze, "lib/strava/api/v3/common.rb".freeze, "lib/strava/api/v3/configuration.rb".freeze, "lib/strava/api/v3/errors.rb".freeze, "lib/strava/api/v3/gear.rb".freeze, "lib/strava/api/v3/route.rb".freeze, "lib/strava/api/v3/running_race.rb".freeze, "lib/strava/api/v3/segment.rb".freeze, "lib/strava/api/v3/segment_effort.rb".freeze, "lib/strava/api/v3/stream.rb".freeze, "lib/strava/api/v3/upload.rb".freeze, "lib/strava/api/v3/version.rb".freeze, "params.json".freeze, "strava-api-v3.gemspec".freeze, "stylesheets/normalize.css".freeze, "stylesheets/pygment_trac.css".freeze, "stylesheets/styles.css".freeze, "stylesheets/stylesheet.css".freeze, "test/helper.rb".freeze, "test/strava/api/v3/common_test.rb".freeze, "test/strava/api/v3/configuration_test.rb".freeze, "test/strava/api/v3/strava_test.rb".freeze]
  s.homepage = "http://github.com/jaredholdcroft/strava-api-v3".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.8".freeze
  s.summary = "Strava API V3".freeze
  s.test_files = ["test/helper.rb".freeze, "test/strava/api/v3/common_test.rb".freeze, "test/strava/api/v3/configuration_test.rb".freeze, "test/strava/api/v3/strava_test.rb".freeze]

  s.installed_by_version = "3.0.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<httmultiparty>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_dependency(%q<httmultiparty>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<multi_json>.freeze, [">= 0"])
    s.add_dependency(%q<httmultiparty>.freeze, [">= 0"])
  end
end
