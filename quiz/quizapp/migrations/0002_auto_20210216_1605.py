# Generated by Django 3.1.6 on 2021-02-16 10:35

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('quizapp', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='qustion',
            old_name='explain',
            new_name='explains',
        ),
    ]