const express = require("express");
const http = require("http");
const mongoose = require("mongoose");

const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);

var io = require("socket.io")(server);

// client -> middleware -> server
// middleware
app.use(express.json());

const DB = "mongodb+srv://chanita:1234@cluster0.2ldp4qh.mongodb.net/";

io.on("connection", (socket) => {
    console.log("connected!");
    socket.on("createRoom", async ({ nickname }) => {
        console.log(nickname);
        // try {
        //   // room is created
        //   let room = new Room();
        //   let player = {
        //     socketID: socket.id,
        //     nickname,
        //     playerType: "X",
        //   };
        //   room.players.push(player);
        //   room.turn = player;
        //   room = await room.save();
        //   console.log(room);
        //   const roomId = room._id.toString();
    
        //   socket.join(roomId);
        //   // io -> send data to everyone
        //   // socket -> sending data to yourself
        //   io.to(roomId).emit("createRoomSuccess", room);
        // } catch (e) {
        //   console.log(e);
        // }
      });
});

mongoose.connect(DB).then(() => {
    console.log("Connecttion successful!");
}).catch((e) => {
    console.log(e);
});

server.listen(port, '0.0.0.0', () => {
    console.log(`Server started and running on port ${port}`);
});