import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Importe esta biblioteca

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mapa Interativo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AStarPage(),
    );
  }
}

class AStarPage extends StatefulWidget {
  @override
  _AStarPageState createState() => _AStarPageState();
}

class _AStarPageState extends State<AStarPage> {
  static const int numRows = 30;
  static const int numCols = 60;
  static const int obstacleValue = -1;

  List<List<int>> grid = List.generate(
    numRows,
    (_) => List<int>.filled(numCols, 1),
  );

  List<Point> path = [];

  @override
  void initState() {
    super.initState();
    setObstaclesInRegion();
    findPath(grid, destination);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  void setObstaclesInRegion() {
    for (int i = 28; i <= 29; i++) {
      for (int j = 3; j <= 53; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 22; i <= 25; i++) {
      for (int j = 3; j <= 17; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 22; i <= 25; i++) {
      for (int j = 21; j <= 35; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 22; i <= 25; i++) {
      for (int j = 38; j <= 52; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 16; i <= 19; i++) {
      for (int j = 3; j <= 17; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 16; i <= 19; i++) {
      for (int j = 21; j <= 35; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 16; i <= 19; i++) {
      for (int j = 38; j <= 52; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 10; i <= 13; i++) {
      for (int j = 3; j <= 17; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 10; i <= 13; i++) {
      for (int j = 21; j <= 35; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 10; i <= 13; i++) {
      for (int j = 38; j <= 52; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 4; i <= 7; i++) {
      for (int j = 4; j <= 16; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 4; i <= 7; i++) {
      for (int j = 21; j <= 35; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 4; i <= 7; i++) {
      for (int j = 38; j <= 52; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 0; i <= 1; i++) {
      for (int j = 3; j <= 17; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 0; i <= 1; i++) {
      for (int j = 21; j <= 35; j++) {
        grid[i][j] = obstacleValue;
      }
    }
    for (int i = 0; i <= 1; i++) {
      for (int j = 38; j <= 50; j++) {
        grid[i][j] = obstacleValue;
      }
    }
  }

  Point destination =
      Point(24, 59);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa Interativo'),
      ),
      body: Center(
        child:InteractiveViewer(
            boundaryMargin: EdgeInsets.all(50),
            minScale: 0.5,
            maxScale: 2.5,
            child: Stack(
              children: [ GestureDetector(
              onTapDown: (TapDownDetails details) {
              setState(() {
              final cellWidth = 600 / numCols;
              final cellHeight = 300 / numRows;
              final int x = (details.localPosition.dy / cellHeight).floor();
              final int y = (details.localPosition.dx / cellWidth).floor();
              destination = Point(x, y);
              findPath(grid, destination);
            });
          },
          child: Container(
            width: 600,
            height: 300,
            color: Colors.grey,
            child: CustomPaint(
              painter: GridPainter(grid, path),
            ),
          ),
        ),
      ]),
    )));
  }

  void findPath(List<List<int>> grid, Point destination) {
    final openSet = <Point>[];
    final closedSet = <Point>{};

    final start = Point(24, 59);
    final goal = destination;

    final cameFrom = <Point, Point>{};
    final gScore = <Point, int>{};
    final fScore = <Point, int>{};

    gScore[start] = 0;
    fScore[start] = heuristicCostEstimate(start, goal);

    openSet.add(start);

    while (openSet.isNotEmpty) {
      openSet.sort((a, b) => (fScore[a] ?? double.infinity)
          .compareTo(fScore[b] ?? double.infinity));
      final current = openSet.removeAt(0);

      if (current == goal) {
        reconstructPath(cameFrom, current);
        return;
      }

      closedSet.add(current);

      for (final neighbor in getNeighbors(current, grid)) {
        if (closedSet.contains(neighbor)) continue;

        final tentativeGScore = (gScore[current] ?? 0) + 1;

        if (!openSet.contains(neighbor) ||
            tentativeGScore < (gScore[neighbor] ?? double.infinity)) {
          cameFrom[neighbor] = current;
          gScore[neighbor] = tentativeGScore;
          fScore[neighbor] =
              tentativeGScore + heuristicCostEstimate(neighbor, goal);
          if (!openSet.contains(neighbor)) {
            openSet.add(neighbor);
          }
        }
      }
    }
  }

  List<Point> getNeighbors(Point point, List<List<int>> grid) {
    final neighbors = <Point>[];

    if (point.x > 0 && grid[point.x - 1][point.y] != obstacleValue) {
      neighbors.add(Point(point.x - 1, point.y));
    }
    if (point.x < numRows - 1 && grid[point.x + 1][point.y] != obstacleValue) {
      neighbors.add(Point(point.x + 1, point.y));
    }
    if (point.y > 0 && grid[point.x][point.y - 1] != obstacleValue) {
      neighbors.add(Point(point.x, point.y - 1));
    }
    if (point.y < numCols - 1 && grid[point.x][point.y + 1] != obstacleValue) {
      neighbors.add(Point(point.x, point.y + 1));
    }

    return neighbors;
  }

  int heuristicCostEstimate(Point start, Point goal) {
    return (start.x - goal.x).abs() + (start.y - goal.y).abs();
  }

  void reconstructPath(Map<Point, Point> cameFrom, Point current) {
    final List<Point> totalPath = [current];
    while (cameFrom.containsKey(current)) {
      current = cameFrom[current]!;
      totalPath.add(current);
    }
    setState(() {
      path = totalPath;
    });
  }
}

class Point {
  final int x;
  final int y;

  Point(this.x, this.y);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Point &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y;

  @override
  int get hashCode => x.hashCode ^ y.hashCode;

  @override
  String toString() {
    return '($x, $y)';
  }
}

class GridPainter extends CustomPainter {
  final List<List<int>> grid;
  final List<Point> path;

  GridPainter(this.grid, this.path);

  @override
  void paint(Canvas canvas, Size size) {
    final cellWidth = size.width / _AStarPageState.numCols;
    final cellHeight = size.height / _AStarPageState.numRows;

    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke;

    for (var i = 0; i <= _AStarPageState.numRows; i++) {
      final y = i * cellHeight;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }

    for (var i = 0; i <= _AStarPageState.numCols; i++) {
      final x = i * cellWidth;
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }

    final obstaclePaint = Paint()..color = Colors.black;
    for (var i = 0; i < _AStarPageState.numRows; i++) {
      for (var j = 0; j < _AStarPageState.numCols; j++) {
        if (grid[i][j] == _AStarPageState.obstacleValue) {
          canvas.drawRect(
            Rect.fromLTWH(
              j * cellWidth,
              i * cellHeight,
              cellWidth,
              cellHeight,
            ),
            obstaclePaint,
          );
        }
      }
    }

    final pathPaint = Paint()..color = Colors.blue;
    for (var point in path) {
      canvas.drawRect(
        Rect.fromLTWH(
          point.y * cellWidth,
          point.x * cellHeight,
          cellWidth,
          cellHeight,
        ),
        pathPaint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
