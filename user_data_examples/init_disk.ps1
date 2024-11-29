# Verificar discos disponibles
$disk = Get-Disk | Where-Object PartitionStyle -eq 'Raw'

# Inicializar y formatear el disco si está disponible
if ($disk) {
    Initialize-Disk -Number $disk.Number -PartitionStyle GPT -PassThru | 
        New-Partition -UseMaximumSize -AssignDriveLetter | 
        Format-Volume -FileSystem NTFS -NewFileSystemLabel "DataDisk" -Confirm:$false

    # Asignar la letra de unidad (por ejemplo, D:)
    $partition = Get-Partition -DiskNumber $disk.Number | Where-Object DriveLetter -eq $null
    $partition | Set-Partition -NewDriveLetter D

    # Crear la carpeta de destino y guardar un archivo de prueba
    New-Item -Path "D:\Data" -ItemType Directory -Force
    Set-Content -Path "D:\Data\init.txt" -Value "Disco de datos inicializado correctamente."
}