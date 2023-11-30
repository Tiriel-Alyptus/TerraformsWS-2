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


**user_data = file("${path.module}/startup.sh")**


```
On peux également utiliser des variables d'environnement pour le script mais je ne l'ai pas fait.
```
```
#!/bin/bash
apt-get update
apt-get install -y docker.io
systemctl start docker
systemctl enable docker
docker run -d -p 80:80 -e node=Server  jialezi/html5-speedtest
```
# Hello_Wordpress

Bon, c'est typiquement la même chose que le Speedtest...
On change juste d'image Docker.io

[Wordpress_image](https://hub.docker.com/_/wordpress)

et on modifie le script.sh en fonction

# Hello_Multiclonage

*J'ai encore repris le corps de projet de "Hello_Vultr"*

La seul différence c'est l'ajout du fichier tfvars qui va nous servir de fichier vacant pour définir les variables ""mouvantes""
On pourrait l'utiliser pour modifier le count CPU, RAM, etc..

Le CLI à son utilité pour modifier le count du fichier de variables du fichier tfvars

Pour ça, on peux utiliser Py, avec le module Click qui rend simple l'utilisation des CLI py.

[CLI_PY](https://click.palletsprojects.com/en/7.x/)


