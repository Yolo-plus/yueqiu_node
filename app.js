let express = require('express')
let mysql = require('mysql')

let app = express()

// mysql配置
let connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'yueqiu'
})

connection.connect()

app.use(express.static('node_modules'))

app.get('/logistics', (req, res) => {
  let ordernum = req.query.ordernum
  let sql = `SELECT * FROM logistics WHERE ordernum = "${ordernum}"`
  let arr = []

  connection.query(sql, (err, results, fields) => {
    let obj = results[0]

    arr.push(obj)

    let sql1 = `SELECT * FROM buyer WHERE logistics_id = "${obj.id}"`

    connection.query(sql1, (err, results, fields) => {
      arr.push(results[0])

      let sql2 = `SELECT * FROM receiver WHERE logistics_id = "${results[0].id}"`

      connection.query(sql2, (err, results, fields) => {
        arr.push(results[0])

        res.setHeader('content-type', 'text/html;charset=utf-8')
        res.write(JSON.stringify(arr))
        res.end()
      })
    })


  })
})

app.use((req, res) => {
  res.write('404 not found')
  res.end()
})

app.listen(8000, () => {
  console.log('服务器已经启动。')
})
