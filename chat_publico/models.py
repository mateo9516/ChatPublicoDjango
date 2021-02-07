from django.db import models
from django.conf import settings


# Create your models here.


class salaChatPublico(models.Model):

	titulo		= models.CharField(max_length=255, unique=True, blank=False)
	usuarios	= models.ManyToManyField(settings.AUTH_USER_MODEL, blank = True, help_text="usuarios conectados")





	def __str__(self):
		return self.titulo

	def connect_user(self, user):

		is_user_added = False
		if not user in self.usuarios.all():
			self.usuarios.add(user)
			self.save()
			is_user_added = True
		elif user in self.usuarios.all():
			is_user_added = True
		return is_user_added

	def disconnect_user(self, user):
		is_user_removed = False
		if user in self.usuarios.all():
			self.usuarios.add(user)
			self.save()
			is_user_removed = True
		return is_user_removed


	@property
	def group_name(self):
		return f"salaChatPublico-{self.id}"


class GestorMensajesChatPublico(models.Manager):
	def by_room(self, room):
		qs=MensajeChatPublico.object.filter(room=room).order_by("-timestap")
		return qs


class MensajeChatPublico(models.Model):

	user 		= models.ForeignKey(settings.AUTH_USER_MODEL, on_delete = models.CASCADE)
	room		= models.ForeignKey(salaChatPublico, on_delete=models.CASCADE)
	timestap	= models.DateTimeField(auto_now_add=True)
	content		= models.TextField(unique=False, blank=False)

	objects = GestorMensajesChatPublico()


	def __str__(self):
		return self.content


	

