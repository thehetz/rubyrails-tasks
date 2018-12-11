while getopts h:d:u:p
do
case "${option}"
in
h) export DB-HOST=${OPTARG};;
d) export DB-DATABASE=${OPTARG};;
u) export DB-USERNAME=${OPTARG};;
p) export DB-PASSWORD=${OPTAGR};;
esac
done
