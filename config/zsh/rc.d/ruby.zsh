export GEMRC=$XDG_CONFIG_HOME/gem/gemrc
export IRBRC=$XDG_CONFIG_HOME/irb/irbrc

function {
  local nproc=$(nproc)

  export RUBY_CFLAGS='-O3 -march=native'
  export RUBY_CONFIGURE_OPTS='--disable-install-doc'
  export RUBY_MAKEOPTS="--jobs=$nproc --load-average=$nproc"
  export BUNDLE_JOBS=$nproc
}
