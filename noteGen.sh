#!/bin/sh

NOTE_NAME="${1}"
CURRENT_DATE_YYMMDD=$(date +%g%m%d)
FILE_NAME="${CURRENT_DATE_YYMMDD}"_"${NOTE_NAME}"
if [ -f "${FILE_NAME}" ]; then
cat <<EO1 >> "${FILE_NAME}"
=======Appending========

EO1 

else
cat <<EOF > "${FILE_NAME}"
**********Note************
Created "${CURRENT_DATE_YYMMDD}" {YYMMDD}
**************************
EOF
fi
vi "${FILE_NAME}"
