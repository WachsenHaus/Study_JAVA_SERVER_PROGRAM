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

function Car() {
  this.wheel = 4;
  this.beep = "beep";
}
Car.prototype.go = function () {
  console.log("출발");
};

function Person(name, blog) {
  this.name = name;
  this.blog = blog;
}
Person.prototype.getName = function () {
  return this.name;
};
Person.prototype.getBlog = function () {
  return this.blog;
};

var unikys = new Person("unikys", "unikys.tistory.com");
var prop;

for (prop in unikys) {
  console.log("unikys[" + prop + "] = " + unikys[prop]);
}

function Person(name, blog) {
  this.name = name;
  this.blog = blog;
  this.getName = function () {
    return this.name;
  };
  this.getBlog = function () {
    return this.blog;
  };
}

class Phone {
  kind = "smart";
  constructor() {
    this.name = "Polygon";
  }
}
var test = new Phone();

Person.prototype.getName = function () {
  return this.name;
};
Person.prototype.getBlog = function () {
  return this.blog;
};
