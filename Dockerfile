FROM freeipa/freeipa-server:fedora-29

COPY *.patch /opt/

RUN patch /usr/lib/python3.7/site-packages/ipaplatform/redhat/tasks.py /opt/tasks-py.patch && \
    patch /usr/lib/python3.7/site-packages/ipapython/ipautil.py /opt/ipautil-py.patch
