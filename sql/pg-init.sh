sudo su - postgres -c 'createdb testwebapp_dev'
# sudo su - postgres -c 'createdb --echo --port=5432 --host=localhost --locale=ja_JP.UTF-8 --encoding=UTF8 --template=template0 testwebapp_dev'
sudo su - postgres -c 'psql -f '$PWD'/sql/pg.sql testwebapp_dev'
