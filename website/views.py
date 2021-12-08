from django.shortcuts import get_object_or_404, render, redirect
from reportlab.pdfgen import canvas
from django.http import HttpResponse, HttpResponseRedirect
#from utils import render_to_pdf 
from datetime import date, datetime
from django.core.exceptions import ObjectDoesNotExist

from io import BytesIO
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.core.mail import EmailMessage
# from .models import Contacts

def index(request):
	#return render(request, 'index.html')
	return HttpResponse('<h4>Website</h4>')
