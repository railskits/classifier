# coding:utf-8
require File.dirname(__FILE__) + '/test_helper'
require 'tempfile'

class StopWordsTest < Test::Unit::TestCase
  def test_en
    assert_equal 80, Classifier::StopWords.for('en').size
  end

  def test_ru
    assert_equal 159, Classifier::StopWords.for('ru').size
  end

  def test_stopword_es
    list = Classifier::StopWords.for('es')
    assert list.include?('más')
  end

  def test_unknown
    assert_equal [], Classifier::StopWords.for('_unknown_')
  end

  def setup
    @tmp = nil
  end
  def teardown
    Classifier::StopWords.reset
    File.delete(@tmp) unless @tmp.nil?
  end

  def test_custom_lang_file
    lang = 'xxyyzz'
    @tmp = File.join(File.dirname(__FILE__), lang)
    File.open(@tmp, 'w') { |f| f.puts "str1\nstr2" }
    assert_equal ["str1", "str2"], Classifier::StopWords.for(lang,
      File.dirname(@tmp))
  end
end
