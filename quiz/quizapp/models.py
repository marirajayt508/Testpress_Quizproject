from django.db import models

class Course(models.Model):

    quiz_name = models.CharField(max_length=10000)
    
    pass_precent=models.IntegerField()
    
    def _str_(self):
        return self.quiz_name
    
class Qustion(models.Model):

    course=models.ForeignKey(Course,on_delete=models.CASCADE)
    qustion = models.CharField(max_length=10000)
    
    option1 = models.CharField(max_length=10000)
    option2 = models.CharField(max_length=10000)
    option3 = models.CharField(max_length=10000)
    option4 = models.CharField(max_length=10000)
    
    answer = models.CharField(max_length=10000)
    explains = models.CharField(max_length=10000)
    
    c_name=Course
    
    def _str_(self):
        return self.qustion
        return self.c_name
        
