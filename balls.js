
const drop = document.getElementById("drop");
const ballTable = document.getElementById("balltable");
const sumValue = document.getElementById("sumValue");
const scoreValue = document.getElementById("scoreValue");


var Ball = {
    create: function (background, point) {
        var newBall = Object.create(this);
        newBall.background = background;
        newBall.point = point;
       
        return newBall;
    },
};


drop.addEventListener("click", function(){
    requestData();
    
});


let result = [];
let count = 0;
let pointer = 0;
function requestData(){
   count++;
    if(!count){
        newBall = Ball.create('pink', 1);
    }
    else if (count % 15 === 0){
        newBall = Ball.create('purple', 15);
    }    
    else if (count % 3 === 0){
        newBall = Ball.create('green', 3);
    }      
    else if (count % 5 === 0){
        newBall = Ball.create('blue', 5);
    }      
    
    else {
        newBall = Ball.create('pink', 1);
    }  

    pointer += newBall.point;
    console.log(pointer);
    sumValue.innerText = count;
    scoreValue.innerText = pointer;


    result.unshift(newBall); //data
    const newBalldiv = document.createElement('div');
    newBalldiv.setAttribute('class', 'balls')
    newBalldiv.setAttribute('style', `background:${newBall.background}`);
    ballTable.insertBefore(newBalldiv, ballTable.childNodes[0]);
    console.log(newBall.background);
};
