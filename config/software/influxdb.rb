name "influxdb"
default_version "1.7.3"

dependency "config_guess"

# Version 1.9 and above are GPLv3, do NOT add later versions in
version("1.7.3") { source sha256: "2988a63fbedff8e1db2e3f33f197bba791c04d2d9d0c975c3f3c6e508c67ff3d" }

source url: "https://dl.influxdata.com/influxdb/releases/influxdb-#{version}-static_linux_amd64.tar.gz"

relative_path "influxdb-#{version}"

build do
  env = with_standard_compiler_flags(with_embedded_path)
end
