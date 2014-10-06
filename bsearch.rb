module Bsearch
  def self.bsearch(arr, num, start = 0, fin = arr.length - 1)
    if arr[(start + fin)/2] == num
      return (start + fin)/2 - start
    elsif fin - start < 1
      return not_found(arr, num, (start + fin)/2) - start
    elsif arr[(start + fin)/2] > num
      return bsearch(arr, num, start, (start + fin)/2 - 1)
    elsif arr[(start + fin)/2] < num
      return ((start + fin)/2 - start + 1) + bsearch(arr, num, (start + fin)/2 + 1, fin)
    end
  end

  def self.iterative_bsearch(arr, num, start = 0, fin = arr.length)
    while fin - start > 1 do
      if arr[(start + fin)/2] == num
        return (start + fin)/2
      elsif arr[(start + fin)/2] > num
        fin = (start + fin)/2 - 1
      elsif arr[(start + fin)/2] < num
        start = (start + fin)/2
      end
    end
    return not_found(arr, num, (start + fin)/2)
  end

  def self.not_found(arr, num, index)
    if arr[index] > num
      return index
    else
      return index + 1
    end
  end
end