var Hamming = function(){};

Hamming.prototype.compute = function(pair1, pair2){
  var splitPair1 = pair1.split("");
  var splitPair2 = pair2.split("");
  var mutations = [];

  if (splitPair1.length !== splitPair2.length)
    throw new Error ('DNA strands must be of equal length.')
  else
    for (var i = 0; i < splitPair1.length; i++) {
      if (splitPair1[i] !== splitPair2[i])
        mutations.push(splitPair1[i]);
    }
    return mutations.length;
};

module.exports = Hamming;
