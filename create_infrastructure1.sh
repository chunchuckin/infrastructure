printf '%s %s\n' "Start deployment in" "$(date)"
printf '%s\n' "Cloning infrastructure files from repo"
git clone https://github.com/chunchuckin/infrastructure.git
cd infrastructure
printf '%s\n' "Cloning development files from repo"
git clone https://github.com/chunchuckin/development.git ./html/reg1
printf '%s %s\n' "Start building custom php-fpm image in" "$(date)"
docker build -t "php:7.4-fpm-mysql" - < ./Dockerfile
printf '%s %s\n' "Start containers in" "$(date)"
docker-compose up -d
printf '%s %s\n' "Infrastructure ready in" "$(date)"
