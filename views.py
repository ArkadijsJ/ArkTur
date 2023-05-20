"""
Routes and views for the flask application.
"""

from datetime import datetime
from flask import render_template
from TurSIA import app
import mysql.connector
from mysql.connector import connect, Error

@app.route('/')
@app.route('/home')
def home():
    """Renders the home page."""
    """Connect to MySQL Database"""
    try:
        with connect(
            host="localhost",
            user="ark_tur",
            password="rR*+4b7aV$&?D/s",
            database="ark_tur"
        ) as connection:
            select_query = "SELECT * FROM `tures` WHERE 1"
            contents=""
            with connection.cursor() as cursor:
                cursor.execute(select_query)    
                result=cursor.fetchall()
                
            return render_template(
                'index.html',
                title='Galvana lapa',
                year=datetime.now().year,
                result=result
            )
    except Error as e:
        error404(e)

@app.route('/contact')
def contact():
    """Renders the contact page."""
    return render_template(
        'contact.html',
        title='Kontakti',
        year=datetime.now().year,
        message='Mes gaidam tevi!'
    )

@app.route('/about')
def about():
    """Renders the about page."""
    return render_template(
        'about.html',
        title='Par mums',
        year=datetime.now().year,
        message='Vis kas par mums!'
    )

@app.route('/admin')
def admin():
    """Renders the home page."""
    return "<center>Admin page is under constaction!</center>"

@app.route('/error')
def error404(errorText):
   return (errorText)