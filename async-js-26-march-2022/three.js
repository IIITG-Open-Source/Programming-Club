const addOne = (x) => {
  const promise = new Promise((resolve, reject) => {
    setTimeout(() => {
      if (x < 15) {
        resolve(x + 1);
      } else {
        reject(x + 1);
      }
    }, 2000);
  });
  return promise;
};

// async , await

const main = async () => {
  try {
    const x = await addOne(16);
    console.log(x);
  } catch (error) {
    console.log("error block")
    console.log(error)
  }
};

main();

// addOne(14)
//   .then((answer) => {
//     x = answer;
//   })
//   .catch((error) => {
//     console.log(error);
//   });

// addOne(10)
//   .then((answer) => {
//     console.log(answer);
//     return addOne(answer);
//   })
//   .then((answer2) => {
//     console.log(answer2);
//   });
