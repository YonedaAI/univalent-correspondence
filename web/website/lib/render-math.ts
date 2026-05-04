import katex from 'katex';

// Custom macros extracted from all paper LaTeX preambles
const BASE_MACROS: Record<string, string> = {
  // Number sets
  '\\N': '\\mathbb{N}',
  '\\NN': '\\mathbb{N}',
  '\\Z': '\\mathbb{Z}',
  '\\ZZ': '\\mathbb{Z}',
  '\\Q': '\\mathbb{Q}',
  '\\QQ': '\\mathbb{Q}',
  '\\R': '\\mathbb{R}',
  '\\RR': '\\mathbb{R}',
  '\\C': '\\mathbb{C}',
  '\\CC': '\\mathbb{C}',
  // Categories
  '\\Set': '\\mathbf{Set}',
  '\\Cat': '\\mathbf{Cat}',
  '\\Grpd': '\\mathbf{Gpd}',
  '\\Top': '\\mathbf{Top}',
  '\\Ring': '\\mathbf{Ring}',
  '\\Field': '\\mathbf{Field}',
  '\\PtEndo': '\\mathbf{PtEndo}',
  // Category theory
  '\\Hom': '\\mathrm{Hom}',
  '\\Nat': '\\mathrm{Nat}',
  '\\NNO': '\\mathrm{NNO}',
  '\\Ob': '\\mathrm{Ob}',
  '\\Mor': '\\mathrm{Mor}',
  '\\id': '\\mathrm{id}',
  '\\op': '^{\\mathrm{op}}',
  // Type theory / HoTT
  '\\Type': '\\mathsf{Type}',
  '\\U': '\\mathcal{U}',
  '\\Id': '\\mathsf{Id}',
  '\\refl': '\\mathsf{refl}',
  '\\transport': '\\mathsf{transport}',
  '\\ua': '\\mathsf{ua}',
  '\\idtoeqv': '\\mathsf{idtoeqv}',
  '\\eqv': '\\simeq',
  '\\iso': '\\cong',
  '\\eq': '\\simeq',
  '\\isContr': '\\mathsf{isContr}',
  '\\isProp': '\\mathsf{isProp}',
  '\\isSet': '\\mathsf{isSet}',
  '\\zero': '\\mathsf{zero}',
  '\\suc': '\\mathsf{succ}',
  '\\zeroop': '\\mathrm{z}',
  '\\succop': '\\mathrm{s}',
  '\\Path': '\\mathsf{Path}',
  '\\fst': '\\mathsf{fst}',
  '\\snd': '\\mathsf{snd}',
  '\\inl': '\\mathsf{inl}',
  '\\inr': '\\mathsf{inr}',
  '\\base': '\\mathsf{base}',
  '\\looppath': '\\mathsf{loop}',
  '\\Sone': 'S^1',
  '\\defeq': '\\coloneqq',
  // Calligraphic
  '\\D': '\\mathcal{D}',
  '\\E': '\\mathcal{E}',
  '\\T': '\\mathcal{T}',
};

function renderMathFragment(tex: string, displayMode: boolean): string {
  try {
    return katex.renderToString(tex, {
      displayMode,
      throwOnError: false,
      trust: true,
      macros: { ...BASE_MACROS },
      strict: false,
    });
  } catch {
    return displayMode
      ? `<div class="math-display">${tex}</div>`
      : `<span class="math-inline">${tex}</span>`;
  }
}

export function renderMath(html: string): string {
  let result = html;

  // Display math: \[...\]
  result = result.replace(/\\\[([\s\S]*?)\\\]/g, (_, tex) => {
    return renderMathFragment(tex.trim(), true);
  });

  // Display math: $$...$$
  result = result.replace(/\$\$([\s\S]*?)\$\$/g, (_, tex) => {
    return renderMathFragment(tex.trim(), true);
  });

  // Inline math: \(...\)
  result = result.replace(/\\\(([\s\S]*?)\\\)/g, (_, tex) => {
    return renderMathFragment(tex.trim(), false);
  });

  // Inline math: $...$  (avoid $$...$$, already handled)
  result = result.replace(/(?<!\$)\$(?!\$)((?:[^$]|\\.)+?)(?<!\$)\$(?!\$)/g, (_, tex) => {
    return renderMathFragment(tex.trim(), false);
  });

  return result;
}
