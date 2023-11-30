import subprocess
import sys

# Créer le repo, check si le terraform est initalisé, l'ignorer si c'est le cas, et créer le repo
def apply_terraform(repo_name):
    subprocess.run(["terraform", "init"], check=True)
    subprocess.run(["terraform", "apply", "-auto-approve", f"-var=repo_name={repo_name}"], check=True)

# Détruire le repo
def destroy_terraform():
    subprocess.run(["terraform", "destroy", "-auto-approve"], check=True)

# Menu principal
def main_menu():
    while True:
        print("\nMenu:")
        print("1. Créer un repo GitHub")
        print("2. Supr le repo GitHub crée")
        print("3. Quitter")
        choice = input("Entrez votre choix (1/2/3): ")

        if choice == '1':
            repo_name = input("Entrez le nom du repo à créer: ")
            apply_terraform(repo_name)
        elif choice == '2':
            destroy_terraform()
        elif choice == '3':
            print("Exit")
            sys.exit(0)
        else:
            print("Veuillez réessayer")

if __name__ == "__main__":
    main_menu()
