import '../models/trip_model.dart';

final List<Trip> dummyTrips = [
  Trip(
    id: '1',
    title: 'Shakti Hotel Bandung',
    location: 'Bandung, Indonesia',
    locationName: 'Shakti Hotel',
    coordinates: {'latitude': -6.9373893, 'longitude': 107.6945686},
    photos: [
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/t_htl-mobile/tix-hotel/images-web/2020/10/28/81f34b60-a3b2-4f49-9a29-f2dc0148b6db-1603891856653-c4451a01f4f9478e29e6c4a2cf9bcfc0.jpg',
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit720360gsm/tix-hotel/images-web/2021/06/24/b1d59a59-1b6e-4fc7-ae00-c08147b89bbe-1624506916052-0670276d667c9d7bdba2f1305ef3a7d4.jpg',
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit720360gsm/tix-hotel/images-web/2020/10/28/eff1553b-671a-4fd7-bd61-eca5774cd741-1603891857849-34f620aed85fddf1aba082abae8f27d9.jpg'
    ],
    rating: 4.5,
    reviewsCount: 120,
    summary:
        'Hotel nyaman di pusat kota Bandung. Cocok untuk bisnis maupun liburan.',
    include: ['Sarapan', 'WiFi Gratis'],
    exclude: ['Transportasi'],
    termsAndConditions: 'Tidak bisa refund, check-in jam 14:00',
    price: 100.0,
    discountPrice: 70.0,
    pax: 2,
  ),
  Trip(
    id: '2',
    title: 'Labuan Bajo Adventure',
    location: 'NTT, Indonesia',
    locationName: 'Labuan Bajo',
    coordinates: {'latitude': -6.2665162, 'longitude': 106.7116201},
    photos: [
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/t_htl-mobile/tix-hotel/images-web/2023/08/24/285415a0-fd25-4eeb-9065-71c0bd7835d0-1692858166637-de9a9786d278c0372455b3e194018e5b.jpg',
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/t_htl-mobile/tix-hotel/images-web/2023/08/24/8acf43b0-f657-44c6-b7d4-15bbc09e1602-1692858172167-cb9e41adbad528bee44e22f1a1094004.jpg'
    ],
    rating: 4.8,
    reviewsCount: 95,
    summary: 'Open trip Labuan Bajo dengan kapal phinisi terbaik!',
    include: ['Kapal Phinisi', 'Makan 3x sehari', 'Tour Guide'],
    exclude: ['Tiket Pesawat'],
    termsAndConditions: 'Minimal 4 orang, DP 50% sebelum H-7',
    price: 500.0,
    discountPrice: 450.0,
    pax: 4,
  ),
  Trip(
    id: '3',
    title: 'Bali Island Hopping',
    location: 'Bali, Indonesia',
    locationName: 'Nusa Penida',
    coordinates: {'latitude': 11.957843, 'longitude': 120.2234537},
    photos: [
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/t_htl-mobile/tix-hotel/images-web/2024/07/31/fbd10136-a842-4a58-bec1-c16145e228e1-1722415524371-f700a46d7f58ee9e0caf64295ab4cc72.jpg',
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/t_htl-mobile/tix-hotel/images-web/2024/07/31/482bacb5-9dcb-41dd-8cbc-5ac66f87695f-1722415518976-a43e702b54a417b1425ddeb6122eabd1.jpg'
    ],
    rating: 4.9,
    reviewsCount: 250,
    summary: 'Jelajahi pulau-pulau terindah di Bali dengan kapal mewah',
    include: [
      'Kapal Speedboat',
      'Snorkeling Gear',
      'Makan Siang',
      'Tour Guide'
    ],
    exclude: ['Hotel', 'Transportasi dari Hotel'],
    termsAndConditions: 'Minimal 2 orang, pembayaran full sebelum H-3',
    price: 300.0,
    discountPrice: 250.0,
    pax: 2,
  ),
  Trip(
    id: '4',
    title: 'Bromo Sunrise Tour',
    location: 'Malang, Indonesia',
    locationName: 'Gunung Bromo',
    coordinates: {'latitude': -7.9369798, 'longitude': 112.5975061},
    photos: [
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/t_htl-mobile/tix-hotel/images-web/2024/08/26/a6e152fd-a429-4d77-ad03-afb139b1b8fc-1724687717983-1c3f227909aa04c520f1e9938304b5f6.jpg',
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/t_htl-mobile/tix-hotel/images-web/2024/08/26/046a62f6-0a9a-49c3-bf51-06642ed8600c-1724687717364-167f3d819bed62c49c42b9693f01c492.jpg'
    ],
    rating: 4.7,
    reviewsCount: 180,
    summary: 'Nikmati keindahan sunrise di Gunung Bromo dengan Jeep 4x4',
    include: ['Jeep 4x4', 'Guide Lokal', 'Sarapan', 'Air Mineral'],
    exclude: ['Hotel', 'Transportasi dari Malang'],
    termsAndConditions: 'Minimal 4 orang, pembayaran full sebelum H-2',
    price: 150.0,
    discountPrice: 120.0,
    pax: 4,
  ),
  Trip(
    id: '5',
    title: 'Raja Ampat Liveaboard',
    location: 'Papua, Indonesia',
    locationName: 'Raja Ampat',
    coordinates: {'latitude': -1.0290245, 'longitude': 129.1855846},
    photos: [
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/t_htl-mobile/tix-hotel/images-web/2024/08/26/7918817b-5d91-458f-a1ce-18cad5d0823d-1724686515992-2c943b5822065d20613a08ab6c1f6159.jpg',
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/t_htl-mobile/tix-hotel/images-web/2024/08/26/24da12be-486d-4c7a-8c7b-9617ca62c13e-1724686513740-97fdc27741cfffd4adad18736d6516c1.jpg'
    ],
    rating: 4.9,
    reviewsCount: 75,
    summary:
        'Ekspedisi 4 hari 3 malam di Raja Ampat dengan kapal phinisi mewah',
    include: [
      'Kapal Phinisi',
      'Makan 3x sehari',
      'Snorkeling Gear',
      'Tour Guide'
    ],
    exclude: ['Tiket Pesawat', 'Transportasi dari Bandara'],
    termsAndConditions: 'Minimal 6 orang, DP 50% sebelum H-14',
    price: 800.0,
    discountPrice: 700.0,
    pax: 6,
  ),
];
