# JA5 Invention  

## Whether Bardolph ought to be punished for stealing from a church  

This format is much the same as last week's. I've tried to improve the readability by using `assert();` less: a bare ~~statement?~~ ~~declaration?~~ ~~sentence?~~ assertion is assumed to be wrapped in a `.assert()` method.  

I'm also using an intuitive, albeit syntactically dubious, `?` operator to denote the unknown-ness of a given expression. Read it as, "is in question". The `unknown` keyword means one of tow things: its referent is exactly that, or I was too lazy to look it up. :P  

Finally, a bare dot (`.method();` etc.) _may_ be assumed to belong to the last-mentioned in-scope object (much like the `that` keyword). For example:  

```c++
Fred.draw('duck')->Classroom.blackboard;
.assert(enum(Duck.flipWays) == 8);
```  

means that Fred made such a statement (not the classroom, which was simply referenced in the `Fred.draw` action and thus was scoped to the statement, not the block). And by the way, there are _exactly_ eight ways to flip a (cartoon) duck.  

----------

```c++
Harry.isFriend(Bardolph);
Bardolph.guilt = Bardolph.steal(unknown);
!(Bardolph.guilt?) {
    Fluellen.vouch(this);
    Pistol.vouch(this);
    areFriends(Pistol, Bardolph, Fluellen);
    that.confirm(this);
};
if Harry.pardon(Bardolph.guilt) this.denies(Law.rule);
if !isUpheld(Law.rule) {
    replace(Law.rule, King.rule);
    King.rule
};

```  

I never finished this. I'm not good at staying motivated 🤷  
