require "torch"
require "nn"
util = require "util"
dofile "avg_word_model.lua"
dofile "readWordVectors.lua"

word_vec_file = "../data/glove/glove.6B.100d.txt"
word_vec_model = "glove"

relations_file = "../data/relations.txt"
train_file = "../data/train/1m/train1m_processed.tsv"
test_file = "../data/test/10k/test_10k_processed.tsv"
output_file = "../data/test/test_10k_temp.txt"

num_words = 400000
word_dim = 100
hidden_dimension = 500
output_dimension = 42

nepochs = 20
batch_size = 25
printevery = 100000
lrate = 0.01
ldecay = 1000000
reg = 0.01

use_cuda = false

wv = load_wordVector(word_vec_file, word_dim, word_vec_model)
rel = util.read_relations(relations_file)
print('Done reading relations and word vectors.')

mod = avg_word_model(wv, rel, num_words, word_dim, hidden_dimension, output_dimension, use_cuda)
mod:autotrain(train_file, lrate, ldecay, reg, nepochs, batch_size, printevery)
mod:autotest(test_file, output_file)
