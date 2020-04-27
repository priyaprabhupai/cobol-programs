from flask import Flask, render_template

app = Flask(__name__)


@app.route('/success/<user>+<pwd>')
def success(user, pwd):
    return "Username {}, Password {}".format(user, pwd)


@app.route('/login', methods=["POST", "GET"])
def login():
   if request.method == 'POST':
      user = request.form['name']
      pd = request.form['p']
      return redirect(url_for('success',user=un, pwd=pd))
   else:
      user = request.args.get('nm')
      pd = request.args.get('p')
      return redirect(url_for('success',user=un, pwd=pd))


@app.route('/')
def index():
    return render_template("index.html")


if __name__ == "__main__":
    app.run(debug=True)