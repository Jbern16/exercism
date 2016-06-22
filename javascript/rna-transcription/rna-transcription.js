var DnaTranscriber = function(){}

DnaTranscriber.prototype.toRna = function(dna){
  var split = dna.split("");
  var transcribed  = split.map(function(letter){
    if(letter == 'G')
      return 'C'
    else if(letter == 'C')
      return 'G'
    else if(letter == 'T')
      return 'A'
    else if(letter == 'A')
      return 'U'
  })

  return transcribed.join("")
}

module.exports = DnaTranscriber
