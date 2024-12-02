# HWCloudTFLib

Este módulo contiene enumerables reutilizables, como tipos de instancias, discos, imágenes y regiones para Huawei Cloud.

## Versión Actual

```Markdown
1.6.2
```

## Configuración

1. En un archivo `*.tf` ejecutar la invocación del módulo y configuración de elementos locales.

```hcl
module "HWCloudTFLib" {
    source = "git::https://github.com/JuanRoeder/HWCloudTFLib.git?ref=v1.6.2"
}

locals {
    enum_regions = module.HWCloudTFLib.enum_regions
    enum_commons = module.HWCloudTFLib.enum_commons
    enum_ecs = module.HWCloudTFLib.enum_ecs
    enum_evs = module.HWCloudTFLib.enum_evs
    enum_ims = module.HWCloudTFLib.enum_ims
    enum_vpc = module.HWCloudTFLib.enum_vpc
    enum_eip = module.HWCloudTFLib.enum_eip
    enum_vpn = module.HWCloudTFLib.enum_vpn
}
```

2. Ejecutar el comando de terraform en el Terminal para instanciar el módulo

```bash
terraform init
```

3. Para visualizar el contenido de los enumerables, ejecutar en el terminal:

```bash
terraform console
```

4. Este comando activará la miniconsola de terraform, el cual se puede invocar a los enumerable. Ejemplo:

```bash
local.enum_regions
```

Como resultado mostrará

```json
{
  "AF-Johannesburg" = "af-south-1"
  "AP-Bangkok" = "ap-southeast-2"
  "AP-Singapore" = "ap-southeast-3"
  "CN East-Shanghai1" = "cn-east-3"
  "CN-Hong-Kong" = "ap-southeast-1"
  "CN-North-Beijing4" = "cn-north-4"
  "CN-South-Guangzhou" = "cn-south-1"
  "LA-Lima1" = "sa-peru-1"
  "LA-Mexico-City1" = "na-mexico-1"
  "LA-Mexico-City2" = "la-north-2"
  "LA-Santiago" = "la-south-2"
  "LA-Sao-Paulo1" = "sa-brazil-1"
}
```

Para salir de `terraform console` hacer `Ctrl + C`

## Uso de Snnippets

Se puede hacer uso de snippets para facilitar la escritura de código de configuración de la librería. Se puede descargar el archivo de snippets desde el repositorio

```
https://github.com/JuanRoeder/HWCloudTFSnippet.git
```

## Referencia oficial de Terraform para Huawei Cloud

```
https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs
```

## Otros comandos y ayudas

### Comandos a utilizar en plan o apply utilizando las variables de entorno de desarrollo y producción

```bash
terraform plan/apply -var-file="dev.tfvars"
```

```bash
terraform plan/apply -var-file="prod.tfvars"
```

### Ejemplos de scripts de data de usuario para montar discos de datos

Para Windows con Powershell

```
https://github.com/JuanRoeder/HWCloudTFLib/blob/main/user_data_examples/init_disk.ps1
```

Para Linux con yaml en formato Cloud Init

```
https://github.com/JuanRoeder/HWCloudTFLib/blob/main/user_data_examples/init_disk.yaml
```
