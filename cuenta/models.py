from django.db import models

from django.contrib.auth.models import AbstractBaseUser, BaseUserManager
# Create your models here.

#crear un nuevo usuario


class gestionCuentas(BaseUserManager):

	def crear_usuario(self,email,usuario, password=None):
		if not email:
			raise ValueError("Debe proveer un email.")
		if not usuario:
			raise ValueError("Debe ingresar un usuario.")
		user = self.model(
			email = self.normalize_email(email),
			usuario=usuario,
			)
		user.set_password(password)
		user.save(using=self._db)
		return user

	def create_superuser(self,email,usuario,password):
		user = self.crear_usuario(
			email = self.normalize_email(email),
			usuario = usuario,
			password=password,
			)
		user.is_admin=True
		user.is_staff=True
		user.is_superuser=True
		user.save(using=self._db)
		return user




#def getRutaImagen(self):
#	return f'imagenesPerfil/' + str(self.pk) + '/profile_image.png'

def getImagenPerfilEstandar():
	return "imagenes/dummy_image.png"
	

class Cuenta(AbstractBaseUser):

	
	email			= models.EmailField(verbose_name="email", max_length=60,unique=True)
	usuario			= models.CharField(max_length=30, unique=True)
	fecha_registro	= models.DateTimeField(verbose_name="fecha registro", auto_now_add=True)
	ultima_conexion	= models.DateTimeField(verbose_name="ultima conexion", auto_now=True)
	activo			= models.BooleanField(default=True)
	imagen			= models.ImageField(max_length=255,null=True,blank=True,default=getImagenPerfilEstandar)
	is_admin		= models.BooleanField(default=False)
	is_staff		= models.BooleanField(default=False)
	is_superuser	= models.BooleanField(default=False)

	objects = gestionCuentas()

	USERNAME_FIELD = 'email'
	REQUIRED_FIELDS = ['usuario']


	def __str__(self):
		return self.usuario

	def has_perm(self,perm, obj=None):
		return self.is_admin

	def has_module_perms(self, app_label):
		return True

	def getImagenPerfil(self):
		return str(self.imagen)[str(self.imagen).index(f'imagenesPerfil/{self.pk}/'):]
