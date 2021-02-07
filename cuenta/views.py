from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth import login, authenticate, logout

from cuenta.forms import RegistrationForm, CuentaAuthenticationForm


def registro_view(request, *args, **kwargs):
	user = request.user
	if user.is_authenticated:
		return HttpResponse(f"ya te encuentras autenticado como {user.email}.")
	context = {}
	
	if request.POST:
		form = RegistrationForm(request.POST)
		if form.is_valid():
			cuenta = form.save()
			email = form.cleaned_data.get('email').lower()
			raw_password = form.cleaned_data.get('password1')
			##cuenta = authenticate(email=email, password = raw_password)
			login(request, cuenta)
			destination = kwargs.get("next")
			if destination:
				return redirect(destination)
			return redirect('principal')
		else:
			context['registration_form'] = form 

	return render(request, 'cuenta/registro.html', context)	



def logout_view(request):
	logout(request)
	return redirect('login')

def login_view(request, *args, **kwargs):
	print("en la vista del login")
	context ={}

	user = request.user
	if user.is_authenticated:
		return redirect('registro')

	destination = get_redirect_if_exists(request)
	print("detination: "+ str(destination))

	if request.POST:
			form = CuentaAuthenticationForm(request.POST)
			if form.is_valid():
				email = request.POST['email']
				password = request.POST['password']
				user = authenticate(email=email, password=password)
				if user:
					login(request,user)
					#destination = get_redirect_if_exists(request)
					if destination:
						return redirect(destination)
					return redirect("principal")
	else:
			form = CuentaAuthenticationForm()
	
	context['login_form'] = form
		
	return render(request, "cuenta/login.html", context)


def get_redirect_if_exists(request):
	redirect = None
	if request.GET:
		if request.GET.get("next"):
			redirect = str(request.GET.get("next"))
	return redirect