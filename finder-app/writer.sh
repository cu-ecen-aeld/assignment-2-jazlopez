# Assignment
# Jaziel Lopez
#
writefile=${1}
writestr=${2}

if [ -z "${writestr}" ]; then
    # echo "[ERROR] argument WRITESTR is empty\ne.g. $0 :WRITEFILE :WRITESTR"
    exit 1
fi

if [ -z "${writefile}" ]; then
    # echo "[ERROR] argument WRITEFILE is empty\ne.g. $0 :WRITEFILE :WRITESTR"
    exit 1
fi

ONLY_DIRECTORY_PATH=$(dirname "${writefile}")
mkdir -p $ONLY_DIRECTORY_PATH

echo "${writestr}" > "${writefile}" || echo "[ERROR] Could not write file ${writefile}" && exit 1
