from django.http import HttpResponse, HttpResponseForbidden


def is_authenticated(request):
    if request.user.is_authenticated:
        return HttpResponse("OK")

    return HttpResponseForbidden()
