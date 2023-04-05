class MatrixGraph {
  final List<List<bool>> graph;

  MatrixGraph.fromRaw(this.graph);

  factory MatrixGraph.empty(int vertexCount) {
    final graph = List.generate(
      vertexCount,
      (index) => List.filled(vertexCount, false),
    );

    return MatrixGraph.fromRaw(graph);
  }
}

class MatrixGraphBuilder {
  final List<List<bool>> graph;

  MatrixGraphBuilder(int vertexCount)
      : graph = List.generate(
            vertexCount, (index) => List.filled(vertexCount, false));


  void addVertex(int from, int to) {
    graph[from][to] = true;
  }

  MatrixGraph build() {
    return MatrixGraph.fromRaw(graph);
  }
}
