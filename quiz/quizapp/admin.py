from django.contrib import admin

from .models import *

class CourseAdmin(admin.ModelAdmin):
    
     list_display = ["quiz_name"]
     
class QustionAdmin(admin.ModelAdmin):

     list_display = ["qustion","answer"]
     

admin.site.register(Course,CourseAdmin)

admin.site.register(Qustion,QustionAdmin)
