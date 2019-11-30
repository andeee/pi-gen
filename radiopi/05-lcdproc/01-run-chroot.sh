FILE=/usr/local/lib/libugpio.so
if [ -f "$FILE" ]; then
    exit
fi
cd /tmp
git clone https://github.com/mhei/libugpio.git
cd libugpio
sh ./autogen.sh; ./configure; make; make install
rm -rf /tmp/libugpio
