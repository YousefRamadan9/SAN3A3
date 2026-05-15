class Worker {
  final String id;
  final String serviceId;
  final String name;
  final double rating;
  final int jobs;
  final double rate;
  final String imageUrl;
  final bool verified;

  const Worker({
    required this.id,
    required this.serviceId,
    required this.name,
    required this.rating,
    required this.jobs,
    required this.rate,
    required this.imageUrl,
    required this.verified,
  });
}
