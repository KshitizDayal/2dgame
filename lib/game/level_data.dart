// import 'package:flame/components.dart';

// enum ObstacleType { earth, rock, mounatin, stone }

// class ObstacleData {
//   final Vector2 position;
//   final ObstacleType type;

//   ObstacleData({required this.position, required this.type});
// }

// class LevelData {
//   List<ObstacleData> level1() {
//     List<ObstacleData> level = [];

//     level.addAll(iterable)
//   }

//   List<ObstacleData> obstacleRow({
//     required int row,
//     ObstacleType? item1,
//     ObstacleType? item2,
//     ObstacleType? item3,
//     ObstacleType? item4,
//     ObstacleType? item5,
//   }) {
//     List<ObstacleData> content = [];
//     final yPosition = obstacleSpacing * row;

//     if (row < 0 || row > 14) {
//       if (item1 != null) {
//         content.add(
//           ObstacleData(
//             position: Vector2(leftside, yPosition),
//             type: item1,
//           ),
//         );
//       }
//     }
//   }
// }
