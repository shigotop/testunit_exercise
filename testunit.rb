require 'test/unit'
require "./nameinspecter.rb"

# テスト用クラス（Test::Unit::TestCaseを継承）
class TC_NameInspecter < Test::Unit::TestCase

　# setup：test_メソッドの直前に毎回呼び出されるメソッド
  def setup
    obj = NameInspecter.new
  end

  def test_is_shigotop
	# assert：第一引数が偽であればテスト失敗としてメッセージ表示
    assert(!obj.is_shigotop('shigoto', "shigotoがshigotopとして検出されました"))
    assert(obj.is_shigotop('shigotop', "shigotopがshigotopとして検出されませんでした"))
    assert(!obj.is_shigotop('shigotopo', "shigotopoがshigotopとして検出されました"))
  end
end
