#/bin/sh

NOTE_NAME="${1}"
CURRENT_DATE_YYMMDD=$(date +%g%m%d)
FILE_NAME="${CURRENT_DATE_YYMMDD}"_"${NOTE_NAME}"
if [ -f "${FILE_NAME}" ]; then
echo "==========Appending========" >> "${FILE_NAME}"
else
cat <<EOF > "${FILE_NAME}"
	**********Note************
	Created ${CURRENT_DATE_YYMMDD} (YYMMDD)
	**************************
EOF
fi
echo "" >> "${FILE_NAME}" #adding a new line
vi +$ -c 'startinsert' "${FILE_NAME}" 


