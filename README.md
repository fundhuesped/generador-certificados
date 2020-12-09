# generador-certificados
Este es un script de consola que genera certificados de asistencia para listado de participantes

## Para instalar
Instalar las gemas requeridas, por ejemplo corriendo:

```bash 
bundle install  
```

## Para correr

Se necesita 
1. El diploma firmado pero sin nombre. Reemplazar en certificados.rb el valor de DIPLOMA (en la línea 21) por la ruta al archivo.
2. El listado de participantes en formato csv con una columna Nombre que contenga el nombre y apellido completo de cada particpante. Cada participante en una fila distintinta. Reemplazar la ruta al csv en el foreach de la linea 10.
3. El nombre de la carpeta donde queramos que se guarde cada diploma. Reemplazar CARPETA en la línea 21. Es necesario crear la carpeta vacía en esa ruta.


Luego correr:
```bash 
bundle exec ruby certificados.rb 
```
El programa generará un diploma en la carpeta especificada, usando el template de DIPLOMA, por cada participante del csv.
