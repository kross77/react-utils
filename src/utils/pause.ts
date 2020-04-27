const pause = (sec: number) =>
  new Promise(res => {
    setTimeout(res, sec * 1000);
  });

export default pause;
