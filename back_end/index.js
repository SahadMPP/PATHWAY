const express = require("express");

const mongoose = require("mongoose");

const app = express();

app.use(express.json());

app.use(express.urlencoded({
    extended: true
}));



const Student = require("./user_student");

const Teacher = require("./user_teacher");


//  connecting to mongodb
const uri = "mongodb+srv://muhdsahad4916:kxvAcV0xZ5MePTKI@testmongo.se5zzhy.mongodb.net/flutter";

mongoose.set("strictQuery", true);

mongoose.connect(uri);

const db = mongoose.connection;
db.on("error", () => {
    console.log("connection error")
})

db.once("open", () => {


    console.log("connected in mongodb")

    app.post("/api/add_student", async (req, res) => {
        

        const userEmail = req.body.email;

        // not add student if already in here
        const existingUser = await Student.findOne({ email: userEmail });

        if (existingUser) {
        console.log("user already exist");

          return res.status(404).json({
                "status": "User with this email already exists"
            })
        }

        // adding student if not added
        console.log("result", req.body);
        let data = Student(req.body);

        try {
            let dataToStore = await data.save();
            res.status(200).json(dataToStore);
        } catch (error) {

            res.status(400).json({
                "status": error.massage
            })

        }

    })

    app.post("/api/add_teacher", async (req, res) => {

        const userEmail = req.body.email;

        // not add teacher if already in here
        const existingUser = await Teacher.findOne({ email: userEmail });

        if (existingUser) {
         console.log("user already exist");

          return res.status(404).json({
                "status": "User with this email already exists"
            })
        }
       

        // add teacher is not existe

        console.log("result", req.body);

        let data = Teacher(req.body);

        try {
            let dataToStore = await data.save();
            res.status(200).json(dataToStore);
        } catch (error) {

            res.status(400).json({
                "status": error.massage
            })

        }

    })


});



// stating server

app.listen(5000, () => {
    console.log("connected to 5000 port");
})