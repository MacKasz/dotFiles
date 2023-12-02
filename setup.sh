SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
config_dir=$SCRIPT_DIR/.config
home_dir=$SCRIPT_DIR/HOME


find "$config_dir" -mindepth 1 -maxdepth 1 -exec ln -s {} $HOME/.config \;

find "$home_dir" -mindepth 1 -maxdepth 1 -exec ln -s {} $HOME \;
