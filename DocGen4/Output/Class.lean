import DocGen4.Output.Template
import DocGen4.Output.Structure
import DocGen4.Process

namespace DocGen4
namespace Output

open scoped DocGen4.Jsx
open Lean

--def classInstanceToHtml (name : Name) : HtmlM Html := do
--  pure <li>{←declNameToHtmlLink name}</li>

def classInstancesToHtml (className : Name) : HtmlM Html := do
  pure
    <details «class»="instances">
        <summary>Instances</summary>
        <ul id={s!"instances-list-{className}"}></ul>
    </details>

def classToHtml (i : Process.ClassInfo) : HtmlM (Array Html) := do
  structureToHtml i

end Output
end DocGen4
