class Array
  def insertionSortDesc!
    1.upto(self.length()-1) do | i |
      val = self[i]
      j = i - 1
      while(j >= 0 && self[j] < val) do
          self[j+1] = self[j]
          j = j - 1
      end
      self[j+1] = val
    end
  end
  def insertionSortAsc!
    1.upto(self.length()-1) do | i |
      val = self[i]
      j = i - 1
      while(j >= 0 && self[j] > val) do
          self[j+1] = self[j]
          j = j - 1
      end
      self[j+1] = val
    end
  end
  def selectionSort!
    return if self.length() == 0
    return if self.length() == 1
    0.upto(self.length()-2) do | i |
      smallest = self[i]
      smallest_index = i
      (i+1).upto(self.length()-1) do | j |
        if self[j] < smallest
          smallest = self[j] 
          smallest_index = j
        end
      end
      tmp = self[i]
      self[i] = smallest
      self[smallest_index] = tmp
    end
  end
  def mergeSort
    return true if self.length() == 0
    return true if self.length() == 1
    left = self[0..self.length()/2].mergeSort
    right = self[self.length()/2+1..self.length()-1].mergeSort

  end
  def isSortedDesc?
    return true if self.length() == 1
    0.upto(self.length()-2) do | i |
      return false if self[i] < self[i+1]
    end
    return true
  end
  def isSortedAsc?
    return true if self.length() == 1
    0.upto(self.length()-2) do | i |
      return false if self[i] > self[i+1]
    end
    return true
  end
end
