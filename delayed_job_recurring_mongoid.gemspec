require 'date'

Gem::Specification.new do |s|
  s.name        = 'delayed_job_recurring_mongoid'
  s.version     = '1.0.0'
  s.date        = Date.today.to_s
  s.summary     = "Recurring jobs for delayed_job with mongoid"
  s.description = "Extends delayed_job to support recurring jobs, including timezone support"
  s.authors     = ["Adhiguna Utama Sabril"]
  s.email       = 'adhiguna.sabril@gmail.com'
  s.files       = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md)

  s.homepage    = 'https://github.com/artdevil/delayed_job_recurring_mongoid'
  s.license     = 'MIT'

  s.required_ruby_version = '> 1.9'

  s.add_development_dependency 'rails'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'mongoid-rspec'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'timecop'
  s.add_development_dependency 'mongoid'
  s.add_development_dependency 'database_cleaner', '~> 1.3'
  s.add_development_dependency 'timecop', '~> 0.7.1'

  s.add_runtime_dependency 'delayed_job', '>= 3.0'
  s.add_runtime_dependency 'delayed_job_mongoid'
end
