enum FromWho { mine, hers }

class Message {
  final String message;
  final String? imageurl;
  final FromWho fromwho;

  Message({
    required this.message, 
    this.imageurl, required 
    this.fromwho});
}
