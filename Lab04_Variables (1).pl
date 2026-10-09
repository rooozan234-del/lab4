% ARTI 303 - Lab 4: Variables in Prolog
% Load this file separately from the other labs.
% Family facts are the ones supplied in the Lab 4 slides.

male(ali).
male(ahmad).
male(muhammad).
male(faisal).
male(hassan).
male(khan).

female(sara).
female(nora).

parent(ali, ahmad).
parent(ali, muhammad).
parent(ahmad, sara).
parent(ahmad, nora).
parent(ahmad, khan).
parent(muhammad, faisal).
parent(faisal, hassan).

/*
TASK 1 - UNIFICATION QUERIES, RESULTS AND EXPLANATIONS

1. ?- house = house.
   true.
   Both terms are the same atom.

2. ?- house = abc.
   false.
   Different atoms cannot unify.

3. ?- edge(a,b) = edge(C,b).
   C = a.
   The functor and arity match; C unifies with a and b with b.

4. ?- edge(a,d) = edge(C,B).
   C = a, B = d.
   Both corresponding arguments unify.

5. ?- edge(C,B) = edge(a,d).
   C = a, B = d.
   Unification works in either direction.

6. ?- edge(A,f(g,h)) = edge(a,B).
   A = a, B = f(g,h).
   A unifies with a; B unifies with the whole compound term f(g,h).

7. ?- edge(A,A) = edge(b,c).
   false.
   The same A would have to be both b and c, which are different atoms.

8. ?- edge(A,A) = edge(b,b).
   A = b.
   Both occurrences of A consistently unify with b.

9. ?- A = B, B = f.
   A = B, B = f.
   A and B share one value, which becomes the atom f.
   Equivalently: A = f, B = f.

10. ?- A = B, B = f, A = e.
    false.
    A and B already share f; f cannot unify with e.

TASK 2 - FAMILY QUERIES AND ANSWERS

1. Show the names of all females.
   ?- female(X).
   X = sara ;
   X = nora.

2. Show whether there is any male.
   ?- once(male(_)).
   true.

3. Show the grandparent of Faisal.
   ?- parent(Grandparent, Parent), parent(Parent, faisal).
   Grandparent = ali, Parent = muhammad.

4. Show all daughters of Ahmad.
   ?- parent(ahmad, Daughter), female(Daughter).
   Daughter = sara ;
   Daughter = nora ;
   false.

5. Show whether Ahmad and Muhammad have a common parent.
   ?- parent(P, ahmad), parent(P, muhammad).
   P = ali.

6. Show whether Khan is the brother of Nora.
   ?- male(khan), parent(P, khan), parent(P, nora), khan \= nora.
   P = ahmad ;
   false.
   The query succeeds: Khan is male and shares Ahmad as a parent with Nora.

Note: variable display order and a final false after requesting more answers
can vary. The bindings and success/failure shown above are the logical results.
*/
