import Html
import XCTest

final class ElementsTests: XCTestCase {
  func testElementsSnapshot() {
    let doc = [
      a(["foo1"]),
      abbr([]),
      abbr([], []),
      address([]),
      address([], []),
      map(name: "foo2", [
        area([])
        ]),
      article([]),
      article([], []),
      aside([]),
      aside([], []),
      audio([]),
      audio([], []),
      audio([], [track(src: "track1")], ["Fallback"]),
      b([]),
      b([], []),
      bdi([]),
      bdi([], []),
      bdo(dir: .ltr, []),
      bdo(dir: .ltr, [], []),
      blockquote([]),
      button([]),
      canvas([]),
      canvas([], []),
      cite([]),
      cite([], []),
      code([]),
      code([], []),
      del([]),
      del([], []),
      details([
        // todo: `summary` returns ChildOf<FieldSet> but `details` only wants Node. is that correct?
//        summary([]),
//        summary([], []),
        ]),
      dfn([]),
      dfn([], []),
      div([]),
      dl([
        dd([]),
        dd([], []),
        dt([]),
        dt([], [])
        ]),
      dl([], []),
      em([]),
      em([], []),
      embed([]),
      fieldset([
        // todo: `legend` returns ChildOf<FieldSet> but `fieldset` only wants Node. is that correct?
//        legend([]),
//        legend([], []),
        ]),
      fieldset([], []),
      figure([
        figcaption([]),
        figcaption([], [])
        ]),
      figure([], []),
      footer([]),
      footer([], []),
      form([]),
      h1([]),
      h1([], []),
      h2([]),
      h2([], []),
      h3([]),
      h3([], []),
      h4([]),
      h4([], []),
      h5([]),
      h5([], []),
      h6([]),
      h6([], []),
      header([]),
      header([], []),
      hr([]),
      html([
        head([
          base([]),
          meta(contentType: .html),
          meta(defaultStyle: "foo"),
          meta(refresh: 1),
          meta(applicationName: "foo"),
          meta(author: "Blob"),
          meta(description: "Functional programming."),
          meta(generator: "foo"),
          meta(keywords: ["math"]),
          meta(name: "foo", content: "bar"),
          meta(property: "foo", content: "bar"),
          meta(viewport: Viewport.height(.deviceHeight)),
          // todo: more of these ^
          script(""),
          script([]),
          script([], ""),
          style(""),
          style([], ""),
          ]),
        body([])
        ]),
      i([]),
      i([], []),
      img(base64: "deadbeef", type: .image(.svg), alt: "", []),
      ins([]),
      ins([], []),
      kbd([]),
      kbd([], []),
      label([]),
      label([], []),
      main([]),
      main([], []),
      mark([]),
      mark([], []),
      meter(value: 1, []),
      meter(value: 2, [], []),
      nav([]),
      nav([], []),
      object([], [param(name: "foo", value: "bar")]),
      ol([
        li([]),
        li([], []),
        ]),
      ol([], []),
      optgroup([
        option("foo"),
        option([], "foo"),
        ]),
      optgroup([], []),
      output([]),
      output([], []),
      p([]),
      p([], []),
      pre([]),
      pre([], []),
      q([]),
      q([], []),
      s([]),
      s([], []),
      samp([]),
      samp([], []),
      script(""),
      script([]),
      script([], ""),
      section([]),
      section([], []),
      select([]),
      select([], []),
      small([]),
      small([], []),
      span([]),
      span([], []),
      strong([]),
      strong([], []),
      sub([]),
      sub([], []),
      sup([]),
      sup([], []),
      svg(""),
      svg([], ""),
      table([
        caption([]),
        caption([], []),
        colgroup([
          col([])
          ]),
        colgroup([], []),
        tbody([]),
        tbody([], []),
        tfoot([]),
        tfoot([], []),
        thead([]),
        thead([], []),
        tr([
          th([]),
          th([], []),
          td([]),
          td([], [])
          ]),
        tr([], [])
        ]),
      textarea(""),
      time([]),
      u([]),
      u([], []),
      ul([
        li([]),
        li([], []),
        ]),
      ul([], []),
      `var`([]),
      `var`([], []),
      video([], []),
    ]

    XCTAssertEqual(
      """
<a>foo1</a><abbr/><abbr/><address/><address/><map name="foo2"><area></map><article/><article/><aside/><aside/><audio/><audio/><audio><track src="track1">Fallback</audio><b/><b/><bdi/><bdi/><bdo dir="ltr"/><bdo dir="ltr"/><blockquote/><button/><canvas/><canvas/><cite/><cite/><code/><code/><del/><del/><details/><dfn/><dfn/><div/><dl><dd/><dd/><dt/><dt/></dl><dl/><em/><em/><embed><fieldset/><fieldset/><figure><figcaption/><figcaption/></figure><figure/><footer/><footer/><form/><h1/><h1/><h2/><h2/><h3/><h3/><h4/><h4/><h5/><h5/><h6/><h6/><header/><header/><hr><html><head><base><meta http-equiv="content-type" content="text/html; charset=utf-8"><meta http-equiv="default-stype" content="foo"><meta http-equiv="refresh" content="1"><meta name="application-name" content="foo"><meta name="author" content="Blob"><meta name="description" content="Functional programming."><meta name="generator" content="foo"><meta name="keywords" content="math"><meta name="foo" content="bar"><meta property="foo" content="bar"><meta name="viewport" content="height=device-height"><script></script><script></script><script></script><style></style><style></style></head><body/></html><i/><i/><img src="data:image/svg+xml;base64,deadbeef" alt><ins/><ins/><kbd/><kbd/><label/><label/><main/><main/><mark/><mark/><meter value="1.0"/><meter value="2.0"/><nav/><nav/><object><param name="foo" value="bar"></object><ol><li/><li/></ol><ol/><optgroup><option>foo</option><option>foo</option></optgroup><optgroup/><output/><output/><p/><p/><pre/><pre/><q/><q/><s/><s/><samp/><samp/><script></script><script></script><script></script><section/><section/><select/><select/><small/><small/><span/><span/><strong/><strong/><sub/><sub/><sup/><sup/><svg></svg><svg></svg><table><caption/><caption/><colgroup><col></colgroup><colgroup/><tbody/><tbody/><tfoot/><tfoot/><thead/><thead/><tr><th/><th/><td/><td/></tr><tr/></table><textarea></textarea><time/><u/><u/><ul><li/><li/></ul><ul/><var/><var/><video/>
""",
      render(doc)
    )

    XCTAssertEqual(
      """
<img src="data:image/png;base64,ZnVuY3Rpb25z" alt class="fun">
""",
      render(img(base64: "ZnVuY3Rpb25z", type: .image(.png), alt: "", [Html.class("fun")]))
    )
  }
}
