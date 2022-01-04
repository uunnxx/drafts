class Point {
  constructor(x, y) {
    this.x = x;
    this.y = y;
  }

  distance() {
    return Math.sqrt(
      this.x * this.x +
      this.y * this.y
    );
  }
}

let p = new Point(1, 1);
let r = new Point(2, 1);
console.log(p.distance())
console.log(r.distance())
