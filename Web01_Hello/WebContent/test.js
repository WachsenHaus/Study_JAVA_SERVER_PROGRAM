console.log("안녕");
console.log("잘가");
console.log("안녕");
console.log("안녕2");

var client = {
  _name: "amumu",
  get name() {
    return this._name;
  },
  set name(value) {
    this._name = value;
  },
};
// Object.defineProperty();
function Pen() {
  this._color = 0;
} // Add the property to the Pen type itself, can also// be set on the instance individually

Object.defineProperties(Pen.prototype, {
  color: {
    get: function () {
      return this._color;
    },
    set: function (value) {
      this._color = value;
    },
  },
});

var foo = { _name: "amumu" };
Object.defineProperty(foo, "name", {
  get: function () {
    return this._name;
  },
  set: function (value) {
    this._name = value;
  },
});
