#-----------------------------------------------------------------
#
#   Author :jacques-andré       e-mail: sidjack972@gmail.com
#   
#   Version: 1.0
#
#   Name file: GUI.ps1
#
#   Description: Graphic Users Interface is writing in POWERSHELL
#               Interface Graphique Utilisateur ecrit en POWERSHELL
#
#-----------------------------------------------------------------


#-----------------------------------------------------------------
#                       Import Modules
#-----------------------------------------------------------------

#[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
#[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Notification")
# EQUIVALENT
Add-Type -AssemblyName System.windows.Forms
Add-Type -AssemblyName System.Drawing


#-----------------------------------------------------------------
#                       PROGRAM
#-----------------------------------------------------------------


# Creat
# Creation de la form principale
$form = New-Object Windows.Forms.Form
# Pour bloquer le resize de fenetre et supprimer les icones Minimize and Maximize
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
$form.MaximizeBox = $False # Icone Maximize Desactive
$form.MinimizeBox = $False # Icone Minimize Desactive
$form.ControlBox = $true # Icone Control Desactive

# Titre de fenetre 
$form.Text = "GUI Test Version 0.1" 
# Taille de la fenetre 
$form.Size = New-Object System.Drawing.Size(600,400)
$form.ShowInTaskbar = $False # desactive l'affichage sur bare de tache

# Bouton OK 
$bouton_ok = New-Object System.Windows.Forms.Button
$bouton_ok.Text = "OK" 
#$bouton_ok.Size = New-Object System.Drawing.Size(60,25) # Taille du bouton OK
$bouton_ok.Location = New-Object System.Drawing.Point(300,320) # Position du bouton OK=
# Afficher le dans fenetre 
$form.Controls.Add($bouton_ok)

# Bouton Annuler
$bouton_annuler = New-Object System.Windows.Forms.Button
$bouton_annuler.Text= "Annuler"
#$bouton_annuler.Size = New-Object System.Drawing.Size(60,25)
$bouton_annuler.Location = New-Object System.Drawing.Point(400,320)

$form.Controls.Add($bouton_annuler)

# Bouton Fermer 
$bouton_fermer = New-Object System.Windows.Forms.Button
$bouton_fermer.Text = "Fermer"
$bouton_fermer.add_Click({$form.Close()})# action effectuer en cliquant sur bouton 
$bouton_fermer.Location = New-Object System.Drawing.Point(500,320)

$form.Controls.Add($bouton_fermer)

#Liste de vue
$liste_vue = New-Object System.Windows.Forms.ListView
$liste_vue.Location = New-Object System.Drawing.Point(100,200)
$form.Controls.Add($liste_vue)

# Notification 
$notication = New-Object System.Windows.Forms.NotifyIcon
$notication.Text = "notification GUI test V0.1"
$notication.Visible = $true



# Affichage de la fenetre
$form.ShowDialog()