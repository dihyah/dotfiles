from flask import Flask, render_template, request, redirect
import sqlite3

app = Flask(__name__)

db = sqlite3.connect("lecture.db", check_same_thread=False)
cur = db.cursor()

@app.route("/")
def index():
    rows = cur.execute("SELECT * FROM registrants")
    return render_template("index.php", rows=rows)

@app.route("/register", methods=["GET", "POST"])
def register():
    if request.method == "GET":
        return render_template("register.php")
    else:
        name = request.form.get("name")
        if not name:
            return render_template("apology.php", message="You must provide a name.")
        email = request.form.get("email")
        if not email:
            return render_template("apology.php", message="You must provide an email.")
        cur.execute("INSERT INTO registrants (name, email) VALUES (:name, :email)", [name, email])
        db.commit()
        return redirect("/")
