# sudo su - postgres -c 'createdb testwebapp_dev'
sudo su - postgres -c 'createdb --echo --port=5432 --host=localhost --locale=ja_JP.UTF8 --encoding=UTF8 testwebapp_dev'
sudo su - postgres -c 'psql -f '$PWD'/sql/pg.sql testwebapp_dev'
