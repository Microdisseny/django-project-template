from django.core.management.base import BaseCommand
from django.core.management.utils import get_random_secret_key


class Command(BaseCommand):
    help = (
        "Generate and output a new rand secret key using Django function"
    )

    def handle(self, *args, **options):
        # Create a random SECRET_KEY to put it in the main settings.
        print(get_random_secret_key())
