class BatchModel {
  final String batchName, imagePath;
  final int amount;

  BatchModel(
      {required this.batchName, required this.imagePath, required this.amount});
}

List batchs = [
  BatchModel(
      amount: 68, batchName: "LOTE 303", imagePath: "assets/images/gados.png"),
  BatchModel(
      amount: 68, batchName: "LOTE 175", imagePath: "assets/images/gados2.png"),
  BatchModel(
      amount: 68, batchName: "LOTE 176", imagePath: "assets/images/gados3.png"),
  BatchModel(
      amount: 68, batchName: "LOTE 253", imagePath: "assets/images/gados4.png"),
];
