from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate

from cuenta.models import Cuenta


class RegistrationForm(UserCreationForm):
	email = forms.EmailField(max_length=254, help_text='Ingrese una direccion valida')

	class Meta:
		model = Cuenta
		fields = ('email', 'usuario', 'password1', 'password2', )

	def clean_email(self):
		email = self.cleaned_data['email'].lower()
		try:
			cuenta = Cuenta.objects.exclude(pk=self.instance.pk).get(email=email)
		except Cuenta.DoesNotExist:
			return email
		raise forms.ValidationError('El correo "%s" ya se encuentra registrado.' % cuenta)

	def clean_username(self):
		usuario = self.cleaned_data['usuario']
		try:
			cuenta = Cuenta.objects.exclude(pk=self.instance.pk).get(usuario=usuario)
		except Cuenta.DoesNotExist:
			return username
		raise forms.ValidationError('Usuario "%s" se encuentra en uso.' % usuario)

class CuentaAuthenticationForm(forms.ModelForm):

	password = forms.CharField(label='Password',widget=forms.PasswordInput)

	class Meta:
		model = Cuenta
		fields = ('email', 'password')

	def clean(self):
		if self.is_valid():
			email = self.cleaned_data['email']
			password = self.cleaned_data['password']
			if not authenticate(email=email, password=password):
				raise forms.ValidationError("Invalid Login")
		