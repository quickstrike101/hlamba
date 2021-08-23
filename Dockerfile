FROM  registry.developers.crunchydata.com/crunchydata/crunchy-postgres-ha:centos8-13.2-4.6.2 
RUN mkdir /temp
RUN groupadd non-root-postgres-group
RUN useradd non-root-postgres-user --group non-root-postgres-group
RUN chown -R non-root-postgres-user:non-root-postgres-group /temp
RUN chmod 777 /temp
USER non-root-postgres
