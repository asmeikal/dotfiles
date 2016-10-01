#/bin/sh

currdir=`pwd`

# install oh-my-zsh
if [ ! -e "${HOME}/.oh-my-zsh" ] ; then
	echo "Installing oh-my-zsh..."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	echo "ln -s ${currdir}/themes ${HOME}/.oh-my-zsh/custom/themes"
	ln -s "${currdir}/themes" "${HOME}/.oh-my-zsh/custom/themes"
fi

# install powerline fonts
powerlinedir="${currdir}/fonts"
if [ ! -e ${powerlinedir} ] ; then
	git clone https://github.com/powerline/fonts ${powerlinedir}
	cd ${powerlinedir}
	./install.sh
	cd ${currdir}
fi

# install vundle
vundledir="${currdir}/vim/vim/bundle/Vundle.vim"
if [ ! -e ${vundledir} ] ; then
	git clone https://github.com/VundleVim/Vundle.vim.git ${vundledir}
fi

# link everything
install_dirs="vim zsh git"
./install-dir.sh $install_dirs

# pass git helper
echo "ln -s ${currdir}/pass-git-helper ${HOME}/.config/pass-git-helper"
ln -s "${currdir}/pass-git-helper" "${HOME}/.config/pass-git-helper"

