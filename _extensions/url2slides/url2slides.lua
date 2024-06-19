-- I don't know how to write lua. Please do not take this as a positive example!
local highlight_author_filter = {
  Para = function(el)
    for k,_ in ipairs(el.content) do
      -- Assumption: all links on the presentations page are to slides.          
      if el.content[k].t == "Link" then
        local url = el.content[k].target
        el.content[k] = pandoc.Link("[Slides]", url)
      end
    end
    return el
  end
}

function Div (div)
  if div.identifier:find("^ref-") then
    return pandoc.walk_block(div, highlight_author_filter) 
  end
  return nil
end