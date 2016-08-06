#/bin/sh

install_dirs="vim bash zsh"
currdir=`pwd`

./install-dir.sh $install_dirs

if [ ! -e "${HOME}/.oh-my-zsh" ] ; then
	echo "Installing oh-my-zsh..."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

powerlinedir="${currdir}/fonts"

if [ ! -e ${powerlinedir} ] ; then
	git clone https://github.com/powerline/fonts ${powerlinedir}
	cd ${powerlinedir}
	./install.sh
	cd ${currdir}
fi

vundledir="${currdir}/vim/vim/bundle/Vundle.vim"

if [ ! -e ${vundledir} ] ; then
	git clone https://github.com/VundleVim/Vundle.vim.git ${vundledir}
fi

