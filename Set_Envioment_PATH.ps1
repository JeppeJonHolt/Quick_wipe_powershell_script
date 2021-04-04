function Set_PATH_Var{
    Param(
    [parameter(Mandatory=$true)]
    [String]
    $Path)
    $oldpath = (Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH).path
    Write-Host $Path
    $newPath = "$oldpath;$Path"
    Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH -Value $newPath
}
#problem with not updating context
Set_PATH_Var "C:\Users\jeppe\AppData\Local\Postman"
#choco install vscode-arduino

#software to add:
#(clover)http://en.ejie.me/
#(TreeSize)https://www.jam-software.com/treesize_free
#(Ditto)https://ditto-cp.sourceforge.io/ 
#(Quicklook)