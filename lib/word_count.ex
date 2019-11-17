defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> String.replace(~r/[!@#$%^&*_(),.?":{}|<>]/u," ")
    |> String.downcase()
    |> String.split()
    |> Enum.reduce(%{}, fn word, count -> count
    #no entendi muy bien lo que hace la line ade abajo creo que es como un push de js pero en un indice especifico
    |> Map.put_new(word,0)
    #esta la entendi menos
    |> Map.update(word, 1, &(&1+1)) end)
  end
end
