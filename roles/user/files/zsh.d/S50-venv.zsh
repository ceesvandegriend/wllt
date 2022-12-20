#
# This file is managed by Ansible.
#
function venv() {
    DIR=${PWD}

    while [ ${DIR} != '/' ] ; do
        if [ -d ${DIR}/.venv ] ; then
             break
        fi

        DIR=$(dirname ${DIR})
    done

    if [ -f ${DIR}/.venv/bin/activate ] ; then
        source ${DIR}/.venv/bin/activate 
    fi
}
