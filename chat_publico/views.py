from django.shortcuts import render


def principal_view(request):
	context ={}
	return render(request,"chat_publico/index.html",context)

# Create your views here.
