require_relative "../lib/turn.rb"

describe './lib/turn.rb' do

  describe '#display_board' do
    it 'prints arbitrary arrangements of the board' do
      board = ["X", "X", "X", "X", "O", "O", "X", "O", "O"]

      output = capture_puts{ display_board(board) }

      expect(output).to include(" X | X | X ")
      expect(output).to include("-----------")
      expect(output).to include(" X | O | O ")
      expect(output).to include("-----------")
      expect(output).to include(" X | O | O ")


      board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]

      output = capture_puts{ display_board(board) }

      expect(output).to include(" X | O | X ")
      expect(output).to include("-----------")
      expect(output).to include(" O | X | X ")
      expect(output).to include("-----------")
      expect(output).to include(" O | X | O ")
    end

  end
end
