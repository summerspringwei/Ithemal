cur=$(pwd)
cd /data/scratch/charithm/libraries/install/$1

 ./bin/mysql --defaults-file=my.cnf -u root -pmysql7788# -e"DROP DATABASE IF EXISTS $2; CREATE DATABASE IF NOT EXISTS $2;"

 ./bin/mysql --defaults-file=my.cnf --database=$2 -u root -pmysql7788# --max_allowed_packet=32M -f < /data/scratch/charithm/projects/cmodel/database/$4

static_files=$(find /data/scratch/charithm/projects/cmodel/data/$3 -type f -name '*.sql' -not -name 'static_perlbench_r_*' -not -name 'static_perlbench_s_*' -name 'static_*')
dyn_files=$(find /data/scratch/charithm/projects/cmodel/data/$3 -type f -name '*.sql' -not -name 'dyn_perlbench_r_*' -not -name 'dyn_perlbench_s_*' -name 'dyn_*' )


for file in $static_files
do
 # do something on $file
 echo $file
 ./bin/mysql --defaults-file=my.cnf --database=$2 -u root -pmysql7788# --max_allowed_packet=32M -f < $file
done

for file in $dyn_files
do
 # do something on $file
 echo $file
 ./bin/mysql --defaults-file=my.cnf --database=$2 -u root -pmysql7788# --max_allowed_packet=32M -f < $file
done

echo $cur
cd $cur

