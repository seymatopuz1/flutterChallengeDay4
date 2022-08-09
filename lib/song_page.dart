import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'new_box.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              // geri butonu  ve menü butonu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NewBox(child: Icon(Icons.arrow_back)),
                  ),
                  Text('P L A Y L I S T'),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NewBox(child: Icon(Icons.menu)),
                  ),
                ],
              ),

              const SizedBox(height: 10),
              // Müzik  kapağı , artist ismi ve müzik ismi
              NewBox(
                child: Column(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(8), child: Image.asset('lib/images/Stay_Alive.png')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jung Kook (정국) ‘(Prod. SUGA of BTS)’',
                                style:
                                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey.shade700),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                ' Stay Alive',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.purple,
                            size: 32,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              // başlatma, karıştır butonu , tekrar butonu , bitirme
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('00.00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('03.29'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              // doğrusal çubuk
              NewBox(
                child: LinearPercentIndicator(
                  lineHeight: 5,
                  percent: 0.5,
                  progressColor: Colors.purple[600],
                  backgroundColor: Colors.purple[200],
                  barRadius: const Radius.circular(8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                child: Row(
                  children: const [
                    Expanded(
                        child: NewBox(
                            child: Icon(
                      Icons.skip_previous,
                      size: 32,
                    ))),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: NewBox(
                            child: Icon(
                              Icons.play_arrow,
                              size: 32,
                            ),
                          ),
                        )),
                    Expanded(
                      child: NewBox(
                        child: Icon(
                          Icons.skip_next,
                          size: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              )

              //önceki şarkı ,durdur , oynat , sıradaki şarkıya geç
            ],
          ),
        ),
      ),
    );
  }
}

/* 
Center(
          child: SizedBox(
        height: 100,
        width: 100,
        child: NewBox(
          child: Icon(Icons.menu),
        ),
      )
      ),*/
