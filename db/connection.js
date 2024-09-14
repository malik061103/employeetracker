const {Pool}=require("pg")
const pool = new Pool({
    host:"localhost",
    user:"postgres",
    password:"Goku@1120",
    database:"db_employee",
    port:5432
})
module.exports=pool;