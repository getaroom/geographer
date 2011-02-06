# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{geographer}
  s.version = "1.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["C. Jason Harrelson (midas)"]
  s.date = %q{2011-02-06}
  s.description = %q{Provides Geography information from the US and world (ie. US states list with abbreviations and names, World countries list, etc.)}
  s.email = %q{jason@lookforwardenterprises.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "History.txt",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "geographer.gemspec",
     "lib/geographer.rb",
     "lib/geographer/countries.rb",
     "lib/geographer/us/states.rb",
     "script/console",
     "test/geographer/countries_test.rb",
     "test/geographer/us/states_test.rb",
     "test/geographer_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/midas/geographer}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Provides Geography information from the US and world (ie. US states list with abbreviations and names, World countries list, etc.)}
  s.test_files = [
    "test/geographer/countries_test.rb",
     "test/geographer/us/states_test.rb",
     "test/geographer_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 2.10.2"])
    else
      s.add_dependency(%q<shoulda>, [">= 2.10.2"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 2.10.2"])
  end
end

