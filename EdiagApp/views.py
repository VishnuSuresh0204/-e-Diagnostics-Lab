from django.shortcuts import render,redirect
from .models import *
from django.contrib.auth.models import User
from django.contrib.auth import authenticate
from django.contrib.auth.hashers import make_password, check_password
from django.contrib import messages
from django.db.models import Q
from datetime import date, datetime

# Create your views here.

def Index(request):
    return render(request,'index.html')

def ad(request):
    Login.objects.create(email="admin@gmail.com",password="admin123",userType="Admin")
    return redirect("/")


def login(request):
    if request.method == 'POST':
        email = request.POST.get("email")
        password = request.POST.get("password")

        user = Login.objects.filter(email=email).first()

        if user is None:
            messages.error(request, "Invalid email or password.")
            return redirect('/login/')

        if user.userType == "Admin":
            messages.success(request, "Logged in as Admin")
            return redirect('/admin_home/')

        elif user.userType == "Lab":
            lab = LabReg.objects.filter(user=user,status="labApprove").first()
            if lab:
                request.session['uid'] = lab.id  # Store LabReg ID
                messages.success(request, "Login Successful as Lab")
                return redirect('/lab_home/')
            else:
                messages.error(request, "Lab profile not found.")
                return redirect('/login/')

        elif user.userType == "User":
            user_profile = UserReg.objects.filter(user=user,status="userApprove").first()
            if user_profile:
                request.session['uid'] = user_profile.id  # Store UserReg ID
                messages.success(request, "Login Successful")
                return redirect('/user_home/')
            else:
                messages.error(request, "User profile not found.")
                return redirect('/login/')

        elif user.userType == "Collector":
            collector = Collector.objects.filter(user=user,status="collectorApprove").first()
            if collector:
                request.session['uid'] = collector.id  # Store Collector ID
                messages.success(request, "Login Successful as Collector")
                return redirect('/collector_home/')
            else:
                messages.error(request, "Collector profile not approved.")
                return redirect('/login/')

        else:
            messages.error(request, "Invalid user type.")
            return redirect('/login/')

    return render(request, 'login.html')

def client_reg(request):
    if request.method == 'POST':
        first_name = request.POST["fname"]
        last_name = request.POST["lname"]
        contact = request.POST["phone"]
        email = request.POST["email"]
        address = request.POST["address"]
        password = request.POST["password"]
        health = request.POST.get("health", "")

        image = request.FILES.get("image")

        if Login.objects.filter(email=email).exists():
            messages.error(request, "Email already registered.")
            return redirect('/client_reg')

        user = Login.objects.create(email=email, password=password, userType="User")
        UserReg.objects.create(
            user=user,
            first_name=first_name,
            last_name=last_name,
            contact=contact,
            email=email,
            address=address,
            health=health,password=password,
            image=image,
            status="userApprove"
        )

        messages.success(request, "User Registered Successfully!")
        return redirect("/login")

    return render(request, 'client_reg.html')



def lab_reg(request):
    if request.method == 'POST':
        name = request.POST["fname"]
        location = request.POST["loc"]
        contact = request.POST["phone"]
        email = request.POST["email"]
        password = request.POST["password"]
        address = request.POST["address"]
        image = request.FILES.get("image")

        if Login.objects.filter(email=email).exists():
            messages.error(request, "Email already registered.")
            return redirect('/lab_reg')

        user = Login.objects.create(email=email, password=password, userType="Lab")
        LabReg.objects.create(
            user=user,
            name=name,
            location=location,
            contact=contact,
            email=email,password=password,
            address=address,
            image=image
        )

        messages.success(request, "Lab Registered Successfully!")
        return redirect("/login")

    return render(request, 'lab_reg.html')

# def staff_reg(request):
#     if request.method == 'POST':
#         name = request.POST["fname"]
#         location = request.POST["loc"]
#         contact = request.POST["phone"]
#         email = request.POST["email"]
#         password = request.POST["password"]
#         address = request.POST["address"]

#         if Login.objects.filter(email=email).exists():
#             messages.error(request, "Email already registered.")
#             return redirect('/lab_reg')

#         user = Login.objects.create(email=email, password=password, userType="Staff")
#         Collection_Staff.objects.create(
#             user=user,
#             name=name,
#             location=location,
#             contact=contact,
#             email=email,password=password,
#             address=address
#         )

#         messages.success(request, "Lab Registered Successfully!")
#         return redirect("/login")

#     return render(request, 'staff_reg.html')

def admin_home(request):
    return render(request,'admin_home.html')

def admin_client(request):
    data = UserReg.objects.all()
    return render(request,'admin_client.html',{"data":data})

def admin_lab(request):
    data = LabReg.objects.all()
    return render(request,'admin_lab.html',{"data":data})

def admin_staff(request):
    data = Collection_Staff.objects.all()
    return render(request,'admin_staff.html',{"data":data})

def admin_action(request):
    id = request.GET.get("id")
    action = request.GET.get("action")
    if(action == "userBlock"):
        client = UserReg.objects.get(id = id)
        client.status = "userBlock"
        client.save()
        return redirect("/admin_client")
    elif(action == "userApprove"):
        client = UserReg.objects.get(id = id)
        client.status = "userApprove"
        client.save()
        return redirect("/admin_client")
    elif(action == "labBlock"):
        client = LabReg.objects.get(id = id)
        client.status = "labBlock"
        client.save()
        return redirect("/admin_lab")
    elif(action == "labApprove"):
        client = LabReg.objects.get(id = id)
        client.status = "labApprove"
        client.save()
        return redirect("/admin_lab")
    elif(action == "staffApprove"):
        client = Collection_Staff.objects.get(id = id)
        client.status = "staffApprove"
        client.save()
        return redirect("/admin_staff")
    elif(action == "staffBlock"):
        client = Collection_Staff.objects.get(id = id)
        client.status = "staffBlock"
        client.save()
        return redirect("/admin_staff")
    elif(action == "collectorApprove"):
        client = Collector.objects.get(id=id)
        client.status = "collectorApprove"
        client.save()
        return redirect("/admin_view_collectors")
    elif(action == "collectorBlock"):
        client = Collector.objects.get(id=id)
        client.status = "collectorBlock"
        client.save()
        return redirect("/admin_view_collectors")
    elif(action == "testDel"):
        client = Tests.objects.get(id = id)
        client.delete()
        return redirect("/admin_tests")

def admin_tests(request):
    data = Tests.objects.all()
    return render(request,'admin_tests.html',{"data":data})

def admin_edit_test(request):
    test_id = request.GET.get('id')
    test_obj = Tests.objects.get(id=test_id)
    
    if request.method == "POST":
        test_obj.test = request.POST.get('test')
        test_obj.description = request.POST.get('description')
        test_obj.price = request.POST.get('price')
        test_obj.save()
        return redirect('/admin_tests')
        
    return render(request, 'admin_edit_test.html', {'test_obj': test_obj})

def admin_view_collectors(request):
    data = Collector.objects.all()
    return render(request,'admin_view_collectors.html',{"data":data})

def admin_orders(request):
    bookins = Bookings.objects.all().order_by("-id")
    # data = Slots.objects.all().order_by("-id")
    return render(request,'admin_orders.html',{"data":bookins})

def admin_payments(request):
    data = Payment.objects.all()
    return render(request,'admin_payments.html',{"data":data})

def lab_home(request):
    return render(request,'lab_home.html')

def profile_lab(request):
    uid = request.session.get("uid")
    data = LabReg.objects.get(id = uid)
    return render(request,'lab_profile.html',{'data':data})

def lab_add_collector(request):
    userid = request.session.get("uid")
    lab = LabReg.objects.get(id=userid)
    if request.method == 'POST':
        name = request.POST["name"]
        contact = request.POST["phone"]
        email = request.POST["email"]
        password = request.POST["password"]
        address = request.POST["address"]
        image = request.FILES.get("image")

        if Login.objects.filter(email=email).exists():
            messages.error(request, "Email already registered.")
            return redirect('/lab_add_collector')

        user = Login.objects.create(email=email, password=password, userType="Collector")
        Collector.objects.create(
            user=user,
            lab=lab,
            name=name,
            contact=contact,
            email=email,
            password=password,
            address=address,
            image=image,
            status="collectorApprove"
        )

        messages.success(request, "Collector Added Successfully!")
        return redirect("/lab_view_collectors")

    return render(request, 'lab_add_collector.html')

def lab_view_collectors(request):
    userid = request.session.get("uid")
    data = Collector.objects.filter(lab__id=userid)
    return render(request, 'lab_view_collectors.html', {"data": data})

def lab_assign_collector(request):
    userid = request.session.get("uid")
    book_id = request.GET.get("id")
    booking = Bookings.objects.get(id=book_id)
    collectors = Collector.objects.filter(lab__id=userid, status="collectorApprove")

    if request.method == 'POST':
        collector_id = request.POST.get("collector")
        collector = Collector.objects.get(id=collector_id)
        booking.collector = collector
        booking.save()
        messages.success(request, f"Assigned {collector.name} to this booking.")
        return redirect("/lab_slots")

    return render(request, 'lab_assign_collector.html', {"booking": booking, "collectors": collectors})

def update_lab(request):
    id=request.GET.get("id")
    lab = LabReg.objects.get(id=id)

    if request.method == "POST":
        lab.name = request.POST.get("name")
        lab.location = request.POST.get("location")
        lab.contact = request.POST.get("contact")
        lab.email = request.POST.get("email")
        lab.address = request.POST.get("address")
        
        if request.FILES.get("image"):
            lab.image = request.FILES.get("image")

        lab.save()
        return redirect("/profile_lab/") 

    return render(request, "lab_update.html", {"lab": lab})

def lab_tests(request):
    userid = request.session.get("uid")
    lab = LabReg.objects.get(id=userid)
    data = Tests.objects.filter(lab__id = userid)
    if request.POST:
        test = request.POST["test"]
        description = request.POST["description"]
        price = request.POST["price"]
        if Tests.objects.filter(Q(lab__id = userid) & Q(test = test)).exists():
            messages.info(request,"This test alredy eexists")
        else:
            toTest = Tests.objects.create(lab = lab,
                                        test = test,
                                        description = description,
                                        price = price)
            toTest.save()
    return render(request,'lab_tests.html',{"data":data})

def labDelTest(request):
    id = request.GET.get("id")
    Task = Tests.objects.get(id = id)
    Task.delete()
    return redirect("/lab_tests")

def lab_slots(request):
    userid = request.session["uid"]
    lab = LabReg.objects.get(id=userid)
    today = date.today()

    if request.POST:
        post_date = request.POST["date"]
        post_time = request.POST["time"]
        if Slots.objects.filter(Q(lab__id=userid) & Q(date=post_date) & Q(time=post_time)).exists():
            messages.info(request, "This slot already exists")
        else:
            toTest = Slots.objects.create(lab=lab, date=post_date, time=post_time)
            toTest.save()

    # 1. Automatically delete unbooked slots where the date has passed
    past_unbooked_slots = Slots.objects.filter(
        lab__id=userid,
        date__lt=today,
        user__isnull=True  # Unbooked slots
    )
    past_unbooked_slots.delete()

    # 2. Show the slot according to the date means today & future
    # BUT keep past slots if they are booked (user is not null) 
    # so the lab can upload their reports or see their history.
    slots = Slots.objects.filter(
        Q(lab__id=userid) &
        (Q(date__gte=today) | Q(date__lt=today, user__isnull=False))
    ).order_by("date", "time")

    return render(request, 'lab_slots.html', {"slots": slots})

def lab_delSlot(request):
    id = request.GET.get("id")
    slot = Slots.objects.get(id = id)
    # Only allow deleting unbooked slots
    if not Bookings.objects.filter(slot = slot).exists():
        slot.delete()
        messages.success(request, "Slot Deleted Successfully")
    else:
        messages.error(request, "Cannot delete a booked slot")
    return redirect("/lab_slots")

def lab_completed(request):
    id = request.GET.get("id")
    Task = Slots.objects.get(id = id)
    Task.testStatus = 1
    Task.save()
    messages.info(request,"Test marked as completed.")
    return redirect("/lab_slots")

def lab_addReport(request):
    id = request.GET.get("id")
    Task = Slots.objects.get(id = id)
    if request.POST:
        report = request.FILES["report"]
        Task.report = report
        Task.save()
        messages.success(request, "Result Updated Successfully")
        return redirect("/lab_slots")
    return render(request,"lab_addReport.html")

def profile_user(request):
    userid = request.session.get("uid")
    if not userid:
        return redirect('/login/')
    data = UserReg.objects.get(id=userid)
    return render(request, 'user_profile.html', {"data": data})

def update_user(request):
    userid = request.session.get("uid")
    if not userid:
        return redirect('/login/')
    user_reg = UserReg.objects.get(id=userid)

    if request.method == "POST":
        user_reg.first_name = request.POST.get("fname")
        user_reg.last_name = request.POST.get("lname")
        user_reg.contact = request.POST.get("phone")
        user_reg.email = request.POST.get("email")
        user_reg.address = request.POST.get("address")
        user_reg.health = request.POST.get("health")
        
        if request.FILES.get("image"):
            user_reg.image = request.FILES.get("image")

        user_reg.save()
        messages.success(request, "Profile updated successfully!")
        return redirect("/profile_user/")

    return render(request, "user_update.html", {"data": user_reg})

def user_home(request):
    return render(request,'user_home.html')

def user_labs(request):
    data = LabReg.objects.all()
    return render(request,'user_labs.html',{"data":data})

def user_slots(request):
    labid = request.GET.get("id")
    lab = LabReg.objects.get(id = labid)
    today = date.today()
    data = Slots.objects.filter(Q(lab__id = labid) & Q(date__gt = today))
    return render(request,'user_slots.html',{"data":data,"lab":lab.name})

def user_bookslot(request):
    userid = request.session["uid"]
    user = UserReg.objects.get(id = userid)
    slotid = request.GET.get("id")
    slot = Slots.objects.get(id = slotid)
    data = Tests.objects.filter(lab__id = slot.lab.id)
    if request.POST:
        testid = request.POST['test']
        test = Tests.objects.get(id = testid)
        slot.user = user
        slot.save()
        to_bookin = Bookings.objects.create(slot = slot,
                                            user = user,
                                            test = test)
        to_bookin.save()
        messages.info(request,"Test Booked")
        return redirect(f"/user_slots?id={slot.lab.id}")
    return render(request,'user_bookslot.html',{"data":data})

def user_bookings(request):
    uid = request.session["uid"]
    user = UserReg.objects.get(id = uid)
    bookings = Bookings.objects.filter(slot__user__id = uid)
    slot = Slots.objects.filter(user__id=uid).order_by("-id")
    return render(request,'user_bookings.html',{"data":bookings})

def user_edit_booking(request):
    bid = request.GET.get("id")
    booking = Bookings.objects.get(id = bid)
    tests = Tests.objects.filter(lab = booking.slot.lab)
    if request.method == 'POST':
        testid = request.POST.get("test")
        test = Tests.objects.get(id = testid)
        booking.test = test
        booking.save()
        messages.success(request, "Booking Updated Successfully")
        return redirect('/user_bookings')
    return render(request, 'user_edit_booking.html', {'booking': booking, 'tests': tests})

def user_tests(request):
    data = Tests.objects.all()
    return render(request,'user_tests.html',{"data":data})

def user_pay(request):
    userid = request.session["uid"]
    user = UserReg.objects.get(id = userid)
    bid = request.GET.get("bid")
    bookin = Bookings.objects.get(id = bid)
    amount = bookin.test.price
    if request.POST:
        payment = Payment.objects.create(amount = amount,
                                        booking = bookin)
        payment.save()
        bookin.slot.testStatus = 2
        bookin.slot.save()
        return redirect(f"/user_bookings")
    return render(request,'user_pay.html',{"amt":amount})

def user_payments(request):
    userid = request.session["uid"]
    data = Payment.objects.filter(booking__user__id = userid)
    return render(request,'user_payments.html',{"data":data})


def collector_home(request):
    userid = request.session.get("uid")
    if not userid:
        return redirect('/login/')
    data = Collector.objects.get(id=userid)
    return render(request, 'collector_home.html', {"data": data})

def collector_assignments(request):
    cid = request.session.get("uid")
    # Show bookings assigned to this collector where collection is not done yet or just all for history
    data = Bookings.objects.filter(collector__id=cid).order_by("-id")
    return render(request, 'collector_assignments.html', {"data": data})

def collector_update_status(request):
    bid = request.GET.get("id")
    booking = Bookings.objects.get(id=bid)
    booking.collection_status = "Collected"
    booking.save()
    messages.success(request, "Collection status updated to 'Collected'.")
    return redirect('/collector_assignments/')

def staff_home(request):
    return render(request,'staff_Home.html')

def profile_staff(request):
    uid = request.session.get("uid")
    data = Collection_Staff.objects.get(id = uid)
    return render(request,'staff_profile.html',{'data':data})

def update_staff(request):
    id=request.GET.get("id")
    lab = Collection_Staff.objects.get(id=id)

    if request.method == "POST":
        lab.name = request.POST.get("name")
        lab.location = request.POST.get("location")
        lab.contact = request.POST.get("contact")
        lab.email = request.POST.get("email")
        lab.address = request.POST.get("address")

        lab.save()
        return redirect("/profile_staff/") 

    return render(request, "staff_update.html", {"lab": lab})

def user_tests(request):
    data = Tests.objects.all()
    return render(request,'user_tests.html',{"data":data})


def staff_slots(request):
    userid = request.session["uid"]
    lab = LabReg.objects.get(id = userid)
    data = Slot.objects.filter(test__lab = lab)
    # data = Slots.objects.filter(lab__id=userid).order_by("-id")
    bookins = Bookings.objects.filter(slot__lab__id = userid).order_by("-id")
    return render(request,'staff_test_details.html',{"data":bookins})

def staff_slots(request):
    userid = request.session["uid"]
    lab = LabReg.objects.get(id = userid)
    if request.POST:
        date = request.POST["date"]
        time = request.POST["time"]
        if Slots.objects.filter(Q(lab__id = userid) & Q(date = date) & Q(time = time)).exists():
            messages.info(request,"This slot alredy eexists")
        else:
            toTest = Slots.objects.create(lab = lab,
                                        date = date,
                                        time = time)
            toTest.save()
    # data = Slots.objects.filter(lab__id=userid).order_by("-id")
    bookins = Bookings.objects.filter(slot__lab__id = userid).order_by("-id")
    return render(request,'staff_slote.html',{"data":bookins})