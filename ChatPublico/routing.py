from channels.auth import AuthMiddlewareStack
from channels.routing import ProtocolTypeRouter, URLRouter
from channels.security.websocket import AllowedHostOriginValidator
from django.urls import path, re_path

application = ProtocolTypeRouter({
	'websocket': AllowedHostOriginValidator(
		AuthMiddlewareStack(
			#URLRouter([]) # vacio aun no hay consumidor
			)
		)
	})