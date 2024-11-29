# Shared Library Module

Este módulo contiene enumerables reutilizables, como tipos de instancias, discos, imágenes y regiones para Huawei Cloud.

Para visualizar el contenido de los enumerables, ejecutar:

> terraform console
>
> local.< enumerable name >

## Comandos a utilizar en plan o apply utilizando las variables de entorno de desarrollo y producción

> terraform plan/apply -var-file="dev.tfvars"
>
> terraform plan/apply -var-file="prod.tfvars"

## Ejemplos de scripts de data de usuario para montar discos de datos

> user_data_examples/init_disk.ps1 --> para Windows con power shell
>
> user_data_examples/init_disk.yaml --> para Linux con yaml en formato Cloud Init

## Referencia oficial de Terraform para Huawei Cloud

> <https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs>
