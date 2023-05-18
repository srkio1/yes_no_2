enum FromWho { mine, hers }

class Message {
  final String text;
  final String? imageurl;
  final FromWho fromwho;

  Message({
    required this.text, 
    this.imageurl, required 
    this.fromwho});

  
}
