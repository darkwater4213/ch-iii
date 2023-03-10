# JA4 Evidence | Whether Cassius convinced Brutus to conspiracy  

This format is much the same as last week's. I've tried to improve the readability by using `assert();` less: a bare ~~statement?~~ ~~declaration?~~ ~~sentence?~~ assertion is assumed to be wrapped in a `.assert()` method.  
I'm also using an intuitive, albeit syntactically dubious, `?` operator to denote the unknown-ness of a given expression. Read it as, "is in question". The `unknown` keyword means one of tow things: its referent is exactly that, or I was too lazy to look it up. :P  
Finally, a bare dot (`.method();` etc.) _may_ be assumed to belong to the last-mentioned in-scope object (much like the `that` keyword). For example:  

```c++
Fred.draw('duck')->Classroom.blackboard;
.assert(enum(Duck.flipWays) == 8);
```  

means that Fred made such a statement (not the classroom, which was simply referenced in the `Fred.draw` action and thus was scoped to the statement, not the block). And by the way, there are _exactly_ eight ways to flip a (cartoon) duck.  

<details title="Last week's stuff">

This concerns whether Cassius is guilty, rather than whether he should be punished. That being said, a large part of the case against his sentencing is his lack of agency in the matter of Brutus's killing of Caesar&mdash;or rather, his inability to have stopped Brutus from killing Caesar (intentions aside).

```c++
Caesar.triumph => assert(crown.offered.\{3x6});
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

</details>

This last bit is a little looser. I'm not going to bother translating the above thought-code (yes, that is, syntax aside, how I think) but this is in plain english.

Cassius is guiltless in that he was not _exclusively_ responsible for Caesar's death. Brutus independently and knowledgeably reached the conclusion killing Caesar. We know this because he was musing in his own garden as to how he might justify killing Caesar. He eventually managed to convince himself that it wasn't wrang if Caesar might become a tyrant, thus making his act of putting a potential King (in the negative Roman sense) down a heroic one, at least in his own mind. (Cassius was very careful with his wording from this point forward) Cassius never once mentions Caesar's fall, much less his death until Brutus announces his murderous intentions. At which point Cassius (acting as if he didn't have the exact same idea...) suggests that if one were to kill Caesar, one ought also kill Mark Antony, or risk being destroyed by the same. But Brutus, in a massive display of arrogance, rejects the mere thought. Brutus has spoken, and that is that&mdash;he won't even listen to what Cassius has to say!  

I honestly don't have much other than all... this. I hope it's enough for a paper.
