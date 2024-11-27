from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

class Register(models.Model):
    Name = models.CharField(max_length=100, null=True)
    email = models.EmailField(max_length=100, null=True)
    phone = models.CharField(max_length=100, null=True)
    password=models.CharField(max_length=100, null=True)
    address = models.CharField(max_length=100, null=True)
    user=models.ForeignKey('Login',on_delete=models.CASCADE,null=True)

class Login(models.Model):
    password=models.CharField(max_length=100, null=True)
    type = models.CharField(max_length=100, null=True)

class Shop(models.Model):
    Name = models.CharField(max_length=100, null=True)
    email = models.EmailField(max_length=100, null=True)
    phone = models.CharField(max_length=100, null=True)
    password=models.CharField(max_length=100, null=True)
    address = models.CharField(max_length=100, null=True)
    user=models.ForeignKey('Login',on_delete=models.CASCADE,null=True)

class Category(models.Model):
    CategoryName=models.CharField(max_length=40,null=True)

class Product(models.Model):
    name=models.CharField(max_length=100,null=True)
    image=models.ImageField(upload_to='media',null=True)
    price=models.FloatField(null=True)
    description=models.TextField(null=True)
    stock=models.IntegerField(null=True)
    category=models.ForeignKey('Category',on_delete=models.CASCADE,null=True)
    shop=models.ForeignKey("Shop", on_delete=models.CASCADE, null=True)

class Order(models.Model):
    customer=models.ForeignKey(Register,on_delete=models.CASCADE,null=True)
    date=models.DateField(auto_now_add=True)
    amount=models.IntegerField(null=True)
    status=models.CharField(max_length=40,default='Pending',null=True)

class Cart(models.Model):
    order=models.ForeignKey(Order,on_delete=models.CASCADE,null=True)
    product=models.ForeignKey(Product,on_delete=models.CASCADE,null=True)
    qty=models.IntegerField(null=True)
    amt=models.IntegerField(null=True)
    date=models.DateField(auto_now_add=True,null=True)
    status=models.CharField(max_length=40,default='pending',null=True)