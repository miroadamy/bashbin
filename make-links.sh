# Script will make links to GDrive and Dropbox under the project named the same with named 'Dropbox', 'GDrive' and 'src'
#
# For example:
# 
# from /Users/miro/Projects/TWC/cineplex/proj1
# .. creates /Users/miro/Projects/TWC/cineplex/proj1/Dropbox -> /Users/miro/Dropbox/Projects/TWC/cineplex/proj1
# .. creates /Users/miro/Projects/TWC/cineplex/proj1/GDrive -> /Users/miro/Google Drive/Projects/TWC/cineplex/proj1
# .. creates /Users/miro/Projects/TWC/cineplex/proj1/src -> /Users/miro/src/TWC/cineplex/proj1
#

DROPBOX="/Users/$USER/Dropbox"
GDRIVE="/Users/$USER/GDrive/Google Drive"
SRC="/Users/$USER/src"
# echo Dropbox = $DROPBOX
# echo GDrive = $GDRIVE
# echo $PWD

DROPBOXDIR=${DROPBOX}${PWD#/Users/$USER}
echo Creating ${DROPBOXDIR}
mkdir -p "${DROPBOXDIR}"
ln -s "${DROPBOXDIR}" Dropbox

GDRIVEDIR=${GDRIVE}${PWD#/Users/$USER}
echo Creating ${GDRIVEDIR}
mkdir -p "${GDRIVEDIR}"
ln -s "${GDRIVEDIR}" GDrive

SRCDIR=${SRC}${PWD#/Users/$USER}
echo Creating ${SRCDIR}
mkdir -p "${SRCDIR}"
ln -s "${SRCDIR}" src
