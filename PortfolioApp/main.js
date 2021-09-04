client
  .login('xyz')
  .then(() => {
    console.log('hue hue started');
  })
  .catch((err) => {
    console.error(err);
  });
