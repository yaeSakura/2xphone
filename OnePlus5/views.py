from django.shortcuts import render

# Create your views here.
def oneplus5(request):
    return render(request, 'star-phone.html',locals())