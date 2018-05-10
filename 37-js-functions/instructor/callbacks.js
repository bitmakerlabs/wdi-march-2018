// Callbacks


function bigLoop() {
  for (var i = 0; i < 1000000000; i++) {
    i * 2;
  }
}

// bigLoop();

function timeMe(functionToTime, name) {
  console.time(name);
  functionToTime();
  console.timeEnd(name);
}

timeMe(bigLoop, 'big loop');

timeMe(function() {
  for (var i = 0; i < 1000000000; i++) {
    i + 2;
  }
}, 'plus loop');
//
// timeMe(function() {
//   for (var i = 0; i < 1000000000; i++) {
//     i * 2.17;
//   }
// });
//
// function timeBothOfUs(func1, func2) {
//   console.time('loop');
//   func1();
//   func2();
//   console.timeEnd('loop');
// }
//
// timeBothOfUs(bigLoop, function() {
//   for (var i = 0; i < 1000000000; i++) {
//     i / 2.17;
//   }
// })
