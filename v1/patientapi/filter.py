from django.db.models import Q
from apimaster.models import UserProfiles
from .sitefunction import get_ip_or_location


def FilterDoctorProfile(request):
    data = {}
    geo_data = get_ip_or_location(request)

    pincode = ''
    if geo_data['status'] == 200:
        geo_data = geo_data['geo_data']
        pincode = int(geo_data['zip'])
        
    q_obj = {
        'doctor_id' : request.GET.get('doctor_id', ''),
        'query' : request.GET.get('query', ''),
        'address' : request.GET.get('address', ''),
        'zip_code' : request.GET.get('zip_code', pincode),
        'page_no' : request.GET.get('page_no', '1'),
        'doctor_type': request.GET.get('doctor_type', ''),
        }

    

    doctors = UserProfiles.objects.filter(occupation='doctor')


    if q_obj['doctor_id']:
        doctors = doctors.filter(user__username=q_obj['doctor_id'])

    if q_obj['zip_code']:
        try:
            doctors = doctors.filter(pincode=int(q_obj['zip_code']))
        except:
            pass    

    if q_obj['address']:
        doctors = doctors.filter(
            Q(locality__icontains=q_obj['address']) | Q(address__icontains=q_obj['address'])
            |Q(address2__icontains=q_obj['address']) | Q(city__icontains=q_obj['address'])
            |Q(state__icontains=q_obj['address']) 
            )

    if q_obj['query']:
        doctors = doctors.filter(
             Q(locality__icontains=q_obj['query']) | Q(address__icontains=q_obj['query'])
            |Q(address2__icontains=q_obj['query']) | Q(city__icontains=q_obj['query'])
            |Q(state__icontains=q_obj['query']) | Q(pincode__icontains=q_obj['query'])
            |Q(user__username__icontains=q_obj['query']) | Q(name__icontains=q_obj['query'])

            |Q(about=q_obj['query']) | Q(description=q_obj['query'])
            |Q(specialties=q_obj['query'])

            )  

    if q_obj['doctor_type']:
        doctors = doctors.filter(specialties=q_obj['doctor_type'])


    total_data = (doctors.count())   

    try:
        page_no = int(q_obj['page_no'])
        s = 30*(page_no-1)
        e = 30*(page_no)
        doctors = doctors[s:e]
    except:    
        doctors = doctors[0:30] 

    if e >total_data:
        e = total_data    

    data['data'] = doctors
    data['arregement'] = {'total':total_data, 'start_by':s+1, 'end_by':e}
    data['q_obj'] = q_obj

    
    
    return data





