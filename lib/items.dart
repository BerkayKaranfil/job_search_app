import 'package:flutter/cupertino.dart';

class items with ChangeNotifier{
  List jobList = [
    {
      "photo" : "assets/homeassets/list1.svg",
      "company" : "altasian",
      "job" : "Product Designer",
      "location" : "Dublin, Ireland"
    },
    {
      "photo" : "assets/homeassets/list2.svg",
      "company" : "One Pro",
      "job" : "Data Analytics",
      "location" : "Florida, USA"
    },
    {
      "photo" : "assets/homeassets/list3.svg",
      "company" : "Shopify",
      "job" : "Streamer",
      "location" : "Ottowa, Canada"
    },
    {
      "photo" : "assets/homeassets/list1.svg",
      "company" : "altasian",
      "job" : "Product Designer",
      "location" : "Dublin, Ireland"
    },
  ];

  List jobType = [
    {
      "jobtype" : "Freelance",
    },
    {
      "jobtype" : "Part time",
    },
    {
      "jobtype" : "Remote",
    },
  ];
  
}