class SlotMachine
  ITEMS = ['🍒', '7️⃣', '🛎️', '⭐️', '🤩']

  def score(reels)
    # store all emojis in array in order (from cherry)
    if reels.uniq.length == 1
      (ITEMS.index(reels.first) + 1) * 10
    elsif reels.uniq.length == 2 && reels.include?('🤩')
      (ITEMS.index(reels.sort[1]) + 1) * 5
    else
      0
    end

    # .uniq on array and check the length
    #   if it's only 1, we know theyre all the same
    #   if there is 2 of the same, we know there's a pair
    #   When there is 2, sort the array and determine the number in the middle
    # if all reels are equal to eachother, index + 1 * 10
    # if two are the same and at least one is a joker, index + 1 * 5
    # if nothing matches score is 0
  end
end
