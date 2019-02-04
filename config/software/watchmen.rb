name 'watchmen'

source git: 'https://github.com/mbobin/watchmen.git'

license 'MIT'

dependency 'ruby'

# TODO - build omnibus software for them
# dependency 'influxdb'
# dependency 'grafana'

build do
  env = with_standard_compiler_flags(with_embedded_path)

  command "echo $(git log --pretty=format:'%h' -n 1) > REVISION"

  bundle_without = %w(development test)
  bundle "install --without #{bundle_without.join(' ')} --jobs #{workers} --retry 5", env: env

  sync project_dir, "#{install_dir}/embedded/watchmen", exclude: %w[spec .git .gitignore]

  delete "#{install_dir}/embedded/watchmen/vendor/bundle"
  delete "#{install_dir}/embedded/vendor/bundle/ruby/*/cache/*"
end
