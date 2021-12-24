import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget{
  final int rate;
  const RatingBox({Key? key, required this.rate,}) : super(key: key);

  @override
  _RatingBoxState createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox>{
  static const int _ratingMax = 5;
  static const double _size = 20;
  final List<int> _ratings = [];
  int _rating = 0;

  _RatingBoxState({int ratingMax = _ratingMax}) : super(){
    for(int i = 0; i < ratingMax; i++){
      _ratings.add(i+1);
    }
  }

  @override
  void initState() {
    _setRating(widget.rate);
    super.initState();
  }

  void _setRating(int rating){
    if(_ratings.contains(rating)){
      setState(() {
        _rating = rating;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: _ratings.map((rate) => Container(
      padding: const EdgeInsets.all(0),
      child: IconButton(
        onPressed: () => _setRating(rate),
        icon: _rating >= rate ? const Icon(Icons.star, size: _size,) : const Icon(Icons.star_border, size: _size,),
        padding: const EdgeInsets.all(0),
        constraints: const BoxConstraints(),
        color: Colors.blue,
      ),
    )).toList(),
  );
}