require 'spec_helper.rb'

module SubtitleProcessor
  describe "Subtitle" do

    let(:file) do
      Subtitle.new('subt.srt')
    end

    describe "read_file" do
      it "return a boolean if readable" do
        expect(file.is_readable?).to eq(true)
      end
    end

    describe "not readable file" do
      it "return a boolean if readable" do
        expect(Subtitle.new('subst.srt').is_readable?).to eq(false)
      end
    end
  end

end
#describe Subtitle do
#
  #  let(:file) do
  #    Subtitle.new('f.srt')
  #  end
#
  #  describe "read_file" do
  #    it "show if file is different empty" do
  #      expect(file.length).not_to eq(0)
  #    end
  #  end
#
  #  describe "fragment content" do
  #    it "show if array_content is splited" do
  #      expect(file.split_content).not_to eq(file.length)
  #    end
  #  end
#
  #  describe "fragment  as array the array content" do
  #    it "take the array content and split and remove shit" do
  #      expect(file.get_dialog(4)).to eq(["5","00:00:08,805","00:00:10,306","I was with her for a while."])
  #    end
  #  end
  #  # describe "fragment  as array the array content" do
  #  #   it "take the array content and split and remove shit" do
  #  #     expect(file.array_content[4]).to eq('["5", "00:00:08,805", "00:00:10,306", "I was with her for a while."]')
  #  #   end
  #  # end
  #end