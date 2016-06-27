#/bin/sh

install_dirs="vim bash zsh"
currdir=`pwd`

for d in $install_dirs ; do
	for f in `ls -1 $d` ; do
		fname="${HOME}/.${f}"
		if [ -L ${fname} ] ; then
			echo "Removing link ${fname}..."
			rm $fname
		elif [ -e ${fname} ] ; then
			echo "mv $fname \"${fname}.bak\""
			mv $fname "${fname}.bak"
		else
			echo "Installing file ${fname}..."
			stripdir="$(echo "${d}" | tr -d '[[:space:]]')"
			echo "ln -s ${currdir}/${stripdir}/${f} ${fname}"
			ln -s ${currdir}/${stripdir}/${f} ${fname}
		fi
	done
done

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

