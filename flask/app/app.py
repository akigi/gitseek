from flask import Flask, jsonify, request, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/repo', methods=['POST'])
def get_repo():
    url = request.json['url']
    # URLの処理を実装する
    return jsonify({'status': 'success'})

if __name__ == '__main__':
    app.run(debug=True)
