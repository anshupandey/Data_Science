from flask import Flask, render_template, request
import joblib

le1 = joblib.load("gender_encoder.pkl")
encoder = joblib.load("encoder.pkl")
model = joblib.load("churn_prediction.pkl")

#creating an app using Flask
app = Flask(__name__)

#trigger a function when we receive request on home url

@app.route('/')
def main():
    return render_template("index.html")

@app.route('/predict',methods=["POST","GET"])
def main2():
    data = request.form
    data = dict(data)
    print(data)
    data['gender'] = le1.transform([data['gender']])[0]
    data = [int(data['creditscore']),data['geo'],data['gender'],int(data['age']),int(data['bal']),int(data['prods']),
            int(data['active'])]
    print(data)
    data = encoder.transform([data])
    output = model.predict(data)
    print(data)
    return "For this customers Exited = "+str(output[0])



if __name__=="__main__":
    app.run(port=5000,debug=True)
    