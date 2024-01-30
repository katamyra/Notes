# Vocabulary 

We continue with the basics of graph theory.
# More special graphs 2.1

> [!info] Definition 2.1.1 - Clique
> A *clique* of a graph $G$ is a set of vertices $X \subseteq V$ where every pair of vertices in $X$ is joined by an edge if $G$.
> 
> A clique is an induced subgraph of $G$ that is complete.

> [!info] Definition 2.1.2 - Independent set
> 
> An *independent set* of a $Y \subseteq G$ such that every pair of vertices in $Y$ is not joined by an edge in $G$
> 
> An independent set is an induced subgraph of $G$ that is edgeless.

## More terms 2.2

> [!info] Definition 2.2.1 - Girth
> 
> The *girth* of a graph is the length of the shortest cycle in the graph. 
> 
> If the graph is a *forest*, we define girth to be infinity.
> 

> [!info] Definition 2.2.2 - Forest
> 
> A *forest* is a graph that contains no cycles.

^9f3747

> [!info] Definition 2.2.2 - Degree of a vertex
> 
> Given a vertex $v$ and a graph $G$, the *degree* of $V$ is the number of edges incident to $v$. It is denoted $\text{deg}_G(v)$, or $\text{d}_G(v)$

> [!info] Definition 2.2.3 - Decomposition
> 
> A *decomposition* of a graph $G$ is a list of subgraphs $G$ such that every edge of $G$ appears in exactly one of the graphs in the list.
> 
> Every graph has a decomposition (itself).

> [!info] Definition 2.2.4 - Walk
> 
> A *walk* in a graph is a sequence $v_0 e_1 v_2 e_2 \ldots v_k$ that is a sequence of alternating vertices and edges in a graph where all $v_n \in V$, and for $\forall i \in [1, k], e_i = v_{i-1} v_1$.
> 
> Notably, this is different from a [[0821 - 1#^e23e1b | path]] as it is not a graph but a sequence and may contain repeat vertices.

> [!info] Definition 2.2.5 - Cut-edge / Cut-vertex
> 
> Given a graph $G$, we say an edge $e \in E$ is a *cut-edge* if $G-e$ has more components than $G$.
> 
>Similarly, we use the same terminology for vertices.




