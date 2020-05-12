from django.urls import reverse


def test_staff_user(app, staff_user):
    url = reverse('admin:index')
    response = app.get(url, user=staff_user)

    assert response.status_code == 200
