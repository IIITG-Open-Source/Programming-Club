const fetchData = () => {
  const promise = new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve('xyz');
    }, 2000);
  });
  return promise;
};

fetchData()
  .then((text) => {
    console.log(text);
    return fetchData();
  })
  .then((text2) => {
    console.log(text2);
    return fetchData();
  })
  .then((text3) => {
    console.log(text3);
    return fetchData();
  });

// fetchData((text) => {
//   console.log(text);
//   fetchData((text2) => {
//     console.log(text2);
//     fetchData((text3) => {
//       console.log(text3);
//       fetchData((text4) => {
//         console.log(text4);
//       });
//     });
//   });
// });
