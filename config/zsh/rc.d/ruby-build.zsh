export RUBY_CFLAGS='-O3 -march=native'
export RUBY_CONFIGURE_OPTS='--disable-install-doc'
export RUBY_MAKE_OPTS="--jobs=$(nproc)"
