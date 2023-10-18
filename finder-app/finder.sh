# Assignment:
# Jaziel Lopez

filesdir="${1}"
searchstr="${2}"

if [ -z "${searchstr}" ]; then
    echo "[ERROR] Could not find search string argument: e.g. ${0} :SEARCH_DIRECTORY :SEARCH_STRING"
    exit 1
fi

if [ -z "${filesdir}" ]; then
    echo "[ERROR] Could not find search directory argument: e.g. ${0} :SEARCH_DIRECTORY :SEARCH_STRING"
    exit 1
fi

if [ ! -d "${filesdir}" ]; then
    echo "[ERROR] ${filesdir} not a directory"
    exit 1
fi

TOTAL_FILES=$(ls "${filesdir}" | wc -l | sed 's/ //g')
TOTAL_MATCHES=$(grep -rc "${searchstr}" "${filesdir}" | awk -F: 'BEGIN{s=0} { s+=$2 } END { print s}')


printf "The number of files are %d and the number of matching lines are %d" $TOTAL_FILES $TOTAL_MATCHES


# echo "TOTAL FILES: ${TOTAL_FILES}"
# echo "TOTAL MATCHES: ${TOTAL_MATCHES}"

