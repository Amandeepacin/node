const express = require('express');
const axios = require('axios');
const cors = require('cors');
const mysql = require('mysql');
const app = express();
const port = 3000;

app.use(cors());

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'amandeep',
  });

  connection.connect((err) => {
    if (err) {
      console.error('Error connecting to MySQL:', err);
    } else {
      console.log('Connected to MySQL');
    }
  });


app.get('/fetch-and-store', async (req, res) => {
  try {
    const response = await axios.get('https://api.wazirx.com/api/v2/tickers');
    const top10Results = Object.values(response.data).slice(0, 10);

    top10Results.forEach(async (ticker) => {
        const { name, last, buy, sell, volume, base_unit } = ticker;
        const insertQuery = 'INSERT INTO ticker_data (name, last, buy, sell, volume, base_unit) VALUES (?, ?, ?, ?, ?, ?)';
        await connection.query(insertQuery, [name, last, buy, sell, volume, base_unit]);
      });

    res.status(200).json({ success: true, message: 'Data fetched and stored successfully.' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, message: 'Internal Server Error' });
  }
});

app.get('/test', function(request, response){
    connection.query('select * from ticker_data', function(error, results){
        if ( error ){
            response.status(400).send('Error in database operation');
        } else {

            console.log(results)
            response.send(results);
        }
    });
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
