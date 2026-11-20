Asignar permisos everyone a una carpeta de Windows por PowerShell

$Carpeta = "C:\Shares"
$permiso = New-Object System.Security.AccessControl.FileSystemAccessRule("Everyone", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
$acl = Get-ACL $Carpeta
$acl.AddAccessRule($permiso)
Set-Acl $Carpeta $acl
