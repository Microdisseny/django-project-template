from django.contrib.auth import get_user_model
from factory import DjangoModelFactory, Faker, LazyAttribute

User = get_user_model()


class UserFactory(DjangoModelFactory):
    class Meta:
        model = User

    username = Faker('email')
    email = LazyAttribute(lambda u: u.username)
