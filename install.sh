#/bin/sh

install_dirs="vim bash zsh"
currdir=`pwd`

for d in $install_dirs ; do
	for f in `ls -1 $d` ; do
		fname="${HOME}/.${f}"
		echo "Installing file ${fname}..."
		if [ -e ${fname} ] ; then
			echo "mv $fname \"${fname}.bak\""
			mv $fname "${fname}.bak"
		elif [ -L ${fname} ] ; then
			echo "Removing link ${fname}..."
			rm $fname
		fi
		stripdir="$(echo "${d}" | tr -d '[[:space:]]')"
		echo "ln -s ${currdir}/${stripdir}/${f} ${fname}"
		ln -s ${currdir}/${stripdir}/${f} ${fname}
	done
done

if [ ! -e "~/.oh-my-zsh" ] ; then
	echo "Installing oh-my-zsh..."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

powerlinedir="${currdir}/fonts"

if [ ! -e ${powerlinedir} ] ; then
	git clone https://github.com/powerline/fonts
	cd fonts
	./install.sh
	cd ..
fi

if [ ! -e ${currdir}/vim/vim/bundle/Vundle.vim ] ; then
	git clone https://github.com/VundleVim/Vundle.vim.git vim/vim/bundle/Vundle.vim
fi

