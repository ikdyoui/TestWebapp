sudo su - postgres -c 'createdb testwebapp_dev'
sudo su - postgres -c 'psql -f '$PWD'/sql/pg.sql testwebapp_dev'
