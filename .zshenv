# rust
source $HOME/.cargo/env

# Path
set-go-binary
set-brew
set-xilinx

export PATH="/home/frind/.bin:$PATH"

function set-conda() {
	# >>> conda initialize >>>
	# !! Contents within this block are managed by 'conda init' !!
	__conda_setup="$('/home/frind/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
	if [ $? -eq 0 ]; then
		eval "$__conda_setup"
	else
		if [ -f "/home/frind/miniconda3/etc/profile.d/conda.sh" ]; then
			. "/home/frind/miniconda3/etc/profile.d/conda.sh"
		else
			export PATH="/home/frind/miniconda3/bin:$PATH"
		fi
	fi
	unset __conda_setup
	# <<< conda initialize <<<
	
	#CONDA_AUTO_ACTIVATE_BASE=false
	#conda config --set auto_activate_base false
}
