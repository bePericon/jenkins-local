## Jenkins Local

> **Importante!** Tener instalado: [Docker Engine](https://docs.docker.com/engine/install), [Docker Compose](https://docs.docker.com/compose/install)
 

- Crear imagen necesaria para el servidor:
~~~
$> docker-compose build
~~~

- Levantar los contenedores necesarios:
~~~
$> docker-compose up
~~~

- Para ver el pass generado para ingresar la primera vez:
~~~
$> docker exec jenkins-local tail -f /var/jenkins_home/secrets/initialAdminPassword
~~~

