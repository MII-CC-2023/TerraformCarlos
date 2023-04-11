# TerraformCarlos

## 1º Paso: Instalación de Terraform

En primer lugar abriremos la cloudshell y ejecutaremos el siguiente comando para descargarnos terraform:

```
 wget https://releases.hashicorp.com/terraform/1.4.2/terraform_1.4.2_linux_amd64.zip
```

## 2º Paso: Crear archivos `main.tf` , `ip.tf` y `maquinas.tf`

Pasaremos a crear los siguientes archivos `.tf` con las funciones de establecer las credenciales, crear una IP y crear una máquina virtual respectivamente.

Es importante el haber generado un fichero `.json`  denominado `account.json` con la información relevante sobre nuestras credenciales .
Todos estos ficheros anteriormente mencionados se encuentran en este repositorio.

Se deja a continuación el código del main.tf

```
provider "google"{
    credentials = "${file("account.json")}"
    project = "my-project-cc-380615"
    region = "europe-central2"
}
```

## 3º Paso: Aplicar estos ficheros

Una vez que hemos generado dichos ficheros, ejecutaremos el siguiente comando para que se lleven a cabo las funciones que tienen estos:

```
terraform apply
```


## 4º Paso: Destruir las creaciones que hemos hecho

Para liberar todos los recursos que hemos creado con los pasos anteriores, tan solo habrá que ejecutar el siguiente comando:

```
terraform destroy
```
