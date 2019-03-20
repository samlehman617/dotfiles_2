###############################################################################
# SOFTWARE FROM GIT REPOSITORIES
#
# This script installs all the programs I have obtained from Git Repositories.
# Not all of the software I use may be included.
###############################################################################
# --- INSTALL SOFTWARE --------------------------------------------------------
###############################################################################
install() {
# --- GIT-OPEN ----------------------------------------------------------------
git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open

# --- SSHRC -------------------------------------------------------------------
git clone https://github.com/Russell91/sshrc $TEMP/sshrc
chmod +x $TEMP/sshrc
sudo mv $TEMP/sshrc /usr/local/bin                       # or elsewhere in PATH
mkdir -p $DOTFILES/ssh/sshrc/sshrc.d

# --- SSHRC -------------------------------------------------------------------
git clone https://github.com/kdabir/has.git $TEMP/has
cd $TEMP/has
make install

# --- TERMINAL IMAGE VIEWER ---------------------------------------------------
git clone https://github.com/stefanhaustein/TerminalImageViewer.git $TEMP/TerminalImageViewer
cd $TEMP/TerminalImageViewer/src/main/cpp
make
sudo make install

# --- UNIVERSAL CTAGS ---------------------------------------------------------
sudo apt install -yq autoconf pkg-config
git clone https://github.com/majutsushi/ctags $TEMP/ctags
cd $TEMP/ctags
./autogen.sh
./configure
make
sudo make install

# --- AWESOME FONTS -----------------------------------------------------------

# --- WINDOWS -----------------------------------------------------------------

# --- AUTO --------------------------------------------------------------------
}


###############################################################################
# --- EXECUTION ---------------------------------------------------------------
###############################################################################
begin() {
	echo "Installing software from git repositories..."
	begin_dt=`date '%m %d %H:%M'`             # Get time script began.
	mkdir -p $HOME/temp                       # Make temp dir if not exists
}
cleanup() {
	echo "Software installed. Cleaning up..."
	end_dt=`date '%m %d %H:%M'`                 # Get time script ended.
	find $TEMP -newermt $begin_dt -delete       # Delete temp files created
	echo "Done."
}
###############################################################################
begin
install
cleanup
###############################################################################
