from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

from . import views


urlpatterns = [
    path("", views.HomeView.as_view(), name="home"),
    path("<int:pk>/", views.ImageView.as_view(), name="image"),
]

# if settings.DEBUG:
#     urlpatterns += static(settings.MEDIA_URL,
#         document_root=settings.MEDIA_ROOT)