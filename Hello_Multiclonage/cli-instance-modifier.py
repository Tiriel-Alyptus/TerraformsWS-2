import click

@click.command()
@click.argument("instance_count", type=int)
def main(instance_count):
    # Mettre à jour terraform.tfvars
    with open("terraform.tfvars", "w") as f:
        f.write(f"instance_count = {instance_count}")
    
    # Afficher un message pour indiquer que le fichier a été mis à jour
    print(f"Le fichier terraform.tfvars a été mis à jour avec {instance_count} instances.")

if __name__ == "__main__":
    main()
