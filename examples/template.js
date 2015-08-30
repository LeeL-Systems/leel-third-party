/// <reference path="../typings/tsd.d.ts" />

var thirdParty = require("../leel_third_party");
var T = thirdParty.T;

console.log(T);
console.log(T.p1);
console.log(T.f1(10));
console.log(new T.o1());
console.log(new T.o1().p1);

