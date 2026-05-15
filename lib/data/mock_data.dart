import 'package:flutter/material.dart';
import '../models/service.dart';
import '../models/worker.dart';

final List<Service> services = [
  Service(
    id: "s1",
    name: "سباكة",
    icon: "🔧",
    color: Colors.blue.shade50,
    iconColor: Colors.blue,
    description: "إصلاح التسريبات، تركيب الأنابيب، والصيانة العامة.",
  ),
  Service(
    id: "s2",
    name: "كهرباء",
    icon: "⚡",
    color: Colors.amber.shade50,
    iconColor: Colors.amber.shade700,
    description: "توصيلات كهربائية، تركيبات، وإصلاح الأعطال.",
  ),
  Service(
    id: "s3",
    name: "نظافة",
    icon: "✨",
    color: Colors.green.shade50,
    iconColor: Colors.green,
    description: "تنظيف عميق للمنازل والمكاتب.",
  ),
  Service(
    id: "s4",
    name: "نجارة",
    icon: "🪚",
    color: Colors.orange.shade50,
    iconColor: Colors.orange.shade800,
    description: "إصلاح الأثاث والأعمال الخشبية المخصصة.",
  ),
  Service(
    id: "s5",
    name: "نقاشة",
    icon: "🎨",
    color: Colors.purple.shade50,
    iconColor: Colors.purple,
    description: "دهانات داخلية وخارجية وتجديد الديكور.",
  ),
  Service(
    id: "s6",
    name: "تكييف",
    icon: "❄️",
    color: Colors.cyan.shade50,
    iconColor: Colors.cyan,
    description: "صيانة وتنظيف أجهزة التكييف.",
  ),
];

const List<Worker> workers = [
  Worker(
    id: "w1",
    serviceId: "s1",
    name: "أحمد حسن",
    rating: 4.8,
    jobs: 120,
    rate: 50,
    imageUrl:
        "https://images.unsplash.com/photo-1560250097-0b93528c311a?auto=format&fit=crop&q=80&w=200",
    verified: true,
  ),
  Worker(
    id: "w2",
    serviceId: "s1",
    name: "محمود علي",
    rating: 4.5,
    jobs: 85,
    rate: 45,
    imageUrl:
        "https://images.unsplash.com/photo-1540569014015-19a7be504e3a?auto=format&fit=crop&q=80&w=200",
    verified: true,
  ),
  Worker(
    id: "w3",
    serviceId: "s2",
    name: "سارة عثمان",
    rating: 4.9,
    jobs: 200,
    rate: 60,
    imageUrl:
        "https://images.unsplash.com/photo-1573496359-136d475583dc?auto=format&fit=crop&q=80&w=200",
    verified: true,
  ),
  Worker(
    id: "w4",
    serviceId: "s3",
    name: "فريق كلين كو",
    rating: 4.7,
    jobs: 340,
    rate: 35,
    imageUrl:
        "https://images.unsplash.com/photo-1581578731117-1045293d2f2d?auto=format&fit=crop&q=80&w=200",
    verified: true,
  ),
];
