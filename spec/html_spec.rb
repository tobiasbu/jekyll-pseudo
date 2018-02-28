require_relative '../lib/jekyll-pseudocode-b.rb'
require_relative '../lib/jekyll-pseudocode-b/mock_brush.rb'
require 'spec_helper'

include Jekyll::PseudoCodeB

describe HtmlBrush do
  def format(txt)
    g = Grammar.new
    g.format(txt, HtmlBrush.new)
  end

  describe "#format" do
    it "symbol span" do
      format("For").should eql "<span class='symbol'>For</span>"
    end

    it "fn span" do
      format("fn()").should eql "<span class='function'>fn</span><span class='operator'>(</span><span class='operator'>)</span>"
    end

    it "obj fn span" do
      format("obj.fn()").should eql "<span class='variable'>obj</span><span class='operator'>.</span><span class='function'>fn</span><span class='operator'>(</span><span class='operator'>)</span>"
    end

    it "numeric span" do
      format("1234").should eql "<span class='numeric'>1234</span>"
    end

    it "comment span" do
      format("# hi!").should eql "<span class='comment'>/* hi! */</span>"
    end

    it "variable span" do
      format("a_b").should eql "<span class='variable'>a<sub>b</sub></span>"
    end

    it "operator converstions" do
      format("<").should eql "<span class='operator'>&#65308;</span>"
      format("*").should eql "<span class='operator'>&times;</span>"
    end

    it "math symbols" do
      format("$pi").should eql "<span class='math-symbol'>&#x3C0;</span>"
      format("$infinity").should eql "<span class='math-symbol'>&#x221e;</span>"
    end

    it "special vars" do
      format("@null").should eql "<span class='special'>null</span>"
      format("@special").should eql "<span class='special'>special</span>"
    end
  end
end