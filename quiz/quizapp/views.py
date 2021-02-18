from django.shortcuts import render
from .models import Course
from .models import Qustion
def quiz(request):
     obj=Course.objects.all()
     return render(request,"index.html",{'obj':obj})
     
def quiz1(request,id):
     obj=Qustion.objects.all().filter(course_id=id)
     mark=Course.objects.all().filter(id=id) 
     return render(request,"quiz.html",{'obj':obj,'id':mark})
     
