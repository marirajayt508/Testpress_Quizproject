# Generated by Django 3.1.6 on 2021-02-16 10:21

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Course',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('quiz_name', models.CharField(max_length=10000)),
                ('pass_precent', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Qustion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('qustion', models.CharField(max_length=10000)),
                ('option1', models.CharField(max_length=10000)),
                ('option2', models.CharField(max_length=10000)),
                ('option3', models.CharField(max_length=10000)),
                ('option4', models.CharField(max_length=10000)),
                ('answer', models.CharField(max_length=10000)),
                ('explain', models.CharField(max_length=10000)),
                ('course', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='quizapp.course')),
            ],
        ),
    ]
