let food = "";
switch (food) {
    case "melon":
        console.log("fruit melon");
        break;
    case "apple":
        console.log("fruit apple");
        break;
    case "banana":
        console.log("fruit banana");
        break;
    case "carrot":
        console.log("vegetable carrot");
        break;
    default:
        console.log("It's not fruits and vegetables.")
        break;
}

console.log("")
console.log("------------------------------------------------------------------")
console.log("")

let food2 = "melon";
switch(food2) {
    case "melon":
    case "apple":
    case "banana":
        console.log("fruit");
        break;
    case "carrot":
        console.log("vegetable")
        break;
    default:
        console.log("It's not fruits and vegetables.")
        break;
}