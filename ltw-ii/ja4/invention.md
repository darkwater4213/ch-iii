# JA4 Evidence | Whether Cassius convinced Brutus to conspiracy  

I"ve included the evidence in a sort of object-oriented C++-like pseudocode. It"s very readable and explicit, and thus rather difficult to misinterpret. Almost all syntactical meaning can be inferred from context, but a few things aren't quite clear.
<details title="Disambiguation">
- Citations have been included as comments, `// like this`
- Bangs indicate negation, so `!true == false`
- I"ve used the `=>`, `==!=>`, and `<<` tokens to indicate various things, including movement, interruptions, insertion, and definitions (of lambdas)
- `&&` means "and". We don"t use a single ampersand because we already use it for two other things: addressing/referencing and bitwise AND (not the same as a logical and). Similarly, `==` is used to denote equality (because `=` denotes var assignment).
- The inconsistency with semicolons... isn"t. The end of a block (demarcated by `{braces}`) implies a semicolon. Before or after, it hardly matters. Most real-world languages have fairly loose syntax nowadays, anyway. Just look at Swift.
- The `this` and `that` keywords refer to whatever the statement being made is and the previous statement, respectively.
- `try {} catch {}` blocks are here used to facetiously denote deception. `try` refers to what is said, and `catch` to the reality. (This is a very loose interpretation of its actual use: a form of error handling using a concept known as "exceptions". Ever got a popup saying something along the lines of "uncaught exception"? Now you know.)
- The `std::iterator` is a joke. So is the `eval()` function.
- The dot operator `.` refers to a member, method, property, etc. of an object. Objects are usually capitalized. It"s an abstraction, nothing more.
- I use type annotations (`var: type;`) to add meaning where necessary. For instance, marking an ironic sentence as such.
- The `assert()` function and `claim()` method are about making statements. It"s hard to explain, but you"ll figure it out. The difference between the two is justification (or lack thereof).
- The `has()` `want()` `goal()` and `purpose()` methods are fairly self-explanatory.
- The `ego` and `self` object members are also straightforward. `own` refers to ownership (not like Rust), so `Brutus.own` would contain Brutus"s garden as one of its members.
- `alias` is a directive to essentially create a shorthand. Because they usually involve methods, I prepend them with a `.`
</details>.

```c++
Caesar.triumph() => assert(crown.offered.\{3x6});
Cassius.butter(Brutus) {
  this.purpose = {
    Cassius.want(Caesar.depose())
    // I.ii.135-38
  };
  std::iterator(Cassius.claim({
    {
      try {
        Brutus.has(Virtues.modesty);
        // I.ii.3-38
      } catch {
        assert(
          !this
          && Brutus.Vices.vanity("much")
          // Plutarch && history
        );
      };
    }, // I.ii.308-10
    {
      try {
        assert(
          eval(Caesar.PhysicalAttrib.all) == "unfit"
          // I.ii.135-38
          && Brutus.Virtues.Honor == "much";
          // I.ii.308-10
        );
      } catch {
        assert(Brutus.Virtues.Honor("none"));
        Cassius.goal(
          Psych.Inception(Cassius.plot => Brutus.ego)
          && Brutus.alliance
          // I.ii.313 I.iii.140-41 I.iii.157-60
        );
        that.purpose() => {!Brutus.ego(Psych.Trace(this))};
      }
    }
  }));
};

Brutus => self.own.garden: Place;
std::iterator(Brutus.assert({
  {
    eval(!Brutus.know(Caesar.faults.any));
  }, // II.i.11-13
  {
    try {
      {inFuture(Caesar.rule == "tyrannical");}
      =|
      {must(Brutus.kill(Caesar.self));}
    } catch {
      that.purpose = !Brutus.admit("vanity")
      && Brutus.rationalizing(that);
    }
  } // II.i.32-34
}) => Brutus.self);

Conspirators => Brutus.own.garden;
alias .bs(_ARG) Brutus.veto(Cassius.suggest(_ARG));
.bs(Cicero.add()); // II.i.141-42 II.i.150
Brutus.condemn(Cicero): Str.Irony; // II.i.151-52
.bs(Conspirators.kill(MarkAntony)): Str.Irony;
Cassius.condemn(that) << // II.i.183-84
  Brutus.veto(): Str.Irony; // II.i.162-66

Conspirators => Senate;
Conspirators.butcher(Caesar) {
  self.stab(Caesar)->manner == "bloodlust";
  /* This is where things get gruesome. According to Plutarch, Brutus struck Caesar "in the privities", at which point Caesar no longer tries to avoid the blows and falls down, dead. Not a pretty sight. // Plutarch III.i.76SD */
  self.bathe(Caesar.blood);
  // III.i.105-10
  self.mock(Caesar.death); // III.i.114-16
};
```
