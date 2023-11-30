# Hello_Github
## DECAUDIN Lorenzo
### 30-11-2023

[GITHUB_TERRAFORM_DOC_API](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository)


[PROC_WEB](https://medium.com/@vijayalakshmiyvl/how-to-create-github-repository-using-terraform-cd2d4d204605)

Aucune difficulté, j'utilise énormement Github


# Hello_Vultr
[VULTR_DOC_API](https://www.vultr.com/api/)

Pour le deuxième déploiement, avec Vultr et l'API
On peux utiliser des scripts de démarrage sur la plateforme mais on peux également les définir localement

os-id = 387 correspond à Ubuntu Linux Server

[Image Docker pour le Speedtest](https://hub.docker.com/r/jialezi/html5-speedtest)

```
**user_data = file("${path.module}/startup.sh")**
```
*On peux également utiliser des variables d'environnement pour le script mais je ne l'ai pas fait.*
```
```
#!/bin/bash
apt-get update
apt-get install -y docker.io
systemctl start docker
systemctl enable docker
docker run -d -p 80:80 -e node=Server  jialezi/html5-speedtest

```
=======
# Variables PATH, Terraform & CLI
**Terraform.exe & submenu.bat, sont dans le chemin**
![image](https://github.com/Tiriel-Alyptus/TerraformsWS-2/assets/80892763/c0963b45-1cce-4ad6-9dcb-21f01adefaf8)
![image](https://github.com/Tiriel-Alyptus/TerraformsWS-2/assets/80892763/444a6652-36f9-4e19-959f-b4039d0e3a23)



>>>>>>> 00d794554c64a1b85aaa4d8af2f91c3f53797fcc
