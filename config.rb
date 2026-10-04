$options = {
  m: "search",
}
$compounds = []
$to_index = []

def skip?(source)
  ($options[:s] || []).include?(source)
end
