from factory import Faker, LazyAttribute
from factory.django import DjangoModelFactory

from django.contrib.auth import get_user_model

User = get_user_model()


class UserFactory(DjangoModelFactory):
    class Meta:
        model = User

    username = Faker('email')
    email = LazyAttribute(lambda u: u.username)
