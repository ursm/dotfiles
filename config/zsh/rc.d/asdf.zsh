znap source asdf-vm/asdf asdf.sh

fpath+=(~[asdf]/completions)

export ASDF_DATA_DIR=$XDG_DATA_HOME/asdf
export ASDF_GEM_DEFAULT_PACKAGES_FILE=$XDG_CONFIG_HOME/asdf/default-gems
export ASDF_NPM_DEFAULT_PACKAGES_FILE=$XDG_CONFIG_HOME/asdf/default-npm-packages
export RUST_WITHOUT=rust-docs
