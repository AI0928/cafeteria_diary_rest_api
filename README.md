# 社食日記アプリのrest_api

## 使用方法

#### データはJson形式
#### *注意：localhostなので、cloneして個人のPCで立ち上げないとつながらない*
### 料理の一覧取得

#### GETリクエスト URL:http://localhost:4040/food

### 料理の一品取得

#### GETリクエスト URL:http://localhost:4040/food/[food_id]

### 料理の更新

#### PUTリクエスト　URL:http://localhost:4040/food/[food_id]

### 料理の挿入

#### POSTリクエスト　URL:http://localhost:4040/food

### 料理の削除

#### DELETEリクエスト　URL:http://localhost:4040/food/[food_id]

### 社員の一覧取得

#### GETリクエスト　URL:http://localhost:4040/employee

### 任意の社員が食べた料理一覧取得

#### GETリクエスト　URL:http://localhost:4040/employeefood/[employee_id]

### 任意の社員が食べた料理の挿入

#### POSTリクエスト　URL:http://localhost:4040/employeefood

### 任意の社員の健康診断結果一覧取得

#### GETリクエスト　URL:http://localhost:4040/employeehealths/[employee_id]
