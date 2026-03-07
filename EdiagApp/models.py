from django.db import models

# Create your models here.
class Login(models.Model):
    email = models.EmailField(max_length=100, null=True)
    password = models.CharField(max_length=100, null=True)
    userType = models.CharField(max_length=100, null=True)

class UserReg(models.Model):
    user = models.ForeignKey(Login,on_delete=models.CASCADE,null = True)
    first_name = models.CharField(max_length = 20)
    last_name = models.CharField(max_length = 20)
    contact = models.CharField(max_length = 20)
    email = models.EmailField()
    address = models.CharField(max_length = 50)
    password = models.CharField(max_length=100, null=True)
    health = models.CharField(max_length = 500,null= True)
    status = models.CharField(max_length=50, null=True, default='pending')
    image = models.FileField(null=True)

class LabReg(models.Model):
    name = models.CharField(max_length = 20)
    location = models.CharField(max_length = 20)
    contact = models.CharField(max_length = 20)
    email = models.EmailField()
    password = models.CharField(max_length=100, null=True)
    address = models.CharField(max_length = 50)
    user = models.ForeignKey(Login,on_delete=models.CASCADE,null = True)
    status = models.CharField(max_length=50, null=True, default='pending')
    image = models.FileField(null=True)

class Collector(models.Model):
    lab = models.ForeignKey(LabReg, on_delete=models.CASCADE, null=True)
    name = models.CharField(max_length=50)
    contact = models.CharField(max_length=20)
    email = models.EmailField()
    password = models.CharField(max_length=100, null=True)
    address = models.CharField(max_length=100)
    user = models.ForeignKey(Login, on_delete=models.CASCADE, null=True)
    status = models.CharField(max_length=50, null=True, default='pending')
    image = models.FileField(null=True)

class Tests(models.Model):
    lab = models.ForeignKey(LabReg, on_delete=models.CASCADE)
    test = models.CharField(max_length = 50)
    description = models.CharField(max_length = 50)
    price = models.IntegerField()

class Slots(models.Model):
    lab = models.ForeignKey(LabReg,on_delete = models.CASCADE)
    date = models.DateField()
    time = models.TimeField()
    user = models.ForeignKey(UserReg,on_delete = models.CASCADE,null = True)
    report = models.FileField(null = True)
    prescription = models.FileField(max_length = 200,null = True)
    testStatus = models.IntegerField(default=0)#value 2 stands for paid, 1 for test completed

class Bookings(models.Model):
    slot = models.ForeignKey(Slots,on_delete = models.CASCADE)
    test = models.ForeignKey(Tests,on_delete = models.CASCADE,null = True)
    date = models.DateField(auto_now_add = True)
    user = models.ForeignKey(UserReg,on_delete = models.CASCADE,null = True)
    collector = models.ForeignKey(Collector, on_delete=models.SET_NULL, null=True, blank=True)
    collection_status = models.CharField(max_length=50, default="Pending")

class Payment(models.Model):
    date = models.DateField(auto_now_add = True)
    time = models.TimeField(auto_now = True)
    amount = models.DecimalField(decimal_places = 2,max_digits = 6)
    status = models.CharField(max_length=20,default="Succesfull")
    booking = models.ForeignKey(Bookings,on_delete = models.CASCADE,null=True)

