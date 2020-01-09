import Html
import XCTest

/// https://github.com/h5bp/html5-boilerplate
final class HTML5BoilerPlateTests: XCTestCase {
    func testHTML5BoilerPlate() {
        /// https://github.com/h5bp/html5-boilerplate/blob/master/dist/index.html
        let html: Node = [
            .document(
                .html(
                    attributes: [
                        .class("no-js"),
                        .lang(.en)
                    ],
                    .head(
                        .meta(attributes: [.charset(.utf8)]),
                        .title("title"),
                        .meta(description: "description"),
                        .meta(viewport: .width(.deviceWidth), .initialScale(1)),

                        .link(attributes: [.rel(.manifest), .href("site.webmanifest")]),
                        .link(attributes: [.rel(.appleTouchIcon), .href("apple-touch-icon.png"),
                                           .init("sizes", "180x180")]),
                        .comment("Place favicon.ico in the root directory"),

                        .link(attributes: [.rel(.stylesheet), .href("css/normalize.css")]),
                        .link(attributes: [.rel(.stylesheet), .href("css/main.css")]),

                        .meta(name: "theme-color", content: "#000000"),
                        .meta(generator: "HTML5 Boiler Plate")
                    ),
                    .body(
                        attributes: [
                            .class("body")
                        ],
                        .comment("--[if IE]"),
                        .p(
                            attributes: [.class("browserupgrade")],
                            "You are using an ",
                            .strong("outdated"),
                            " browser. Please ",
                            .a(
                                attributes: [.href("https://browsehappy.com/")],
                                "upgrade your browser"
                            ),
                            " to improve your experience and security."
                        ),
                        .comment("[endif]"),

                        .comment("Add your site or application content here"),
                        .p("Hello world! This is HTML5 Boilerplate."),
                        .script(attributes: [.src("js/vendor/modernizr-3.8.0.min.js")]),
                        .script(
                            attributes: [
                                .src("https://code.jquery.com/jquery-3.4.1.min.js"),
                                .integrity("sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="),
                                .crossorigin(.anonymous)
                            ]
                        ),
                        .script(unsafe: #"window.jQuery || document.write('<script src="js/vendor/jquery-3.4.1.min.js"><\/script>')"#),
                        .script(attributes: [.src("js/plugins.js")]),
                        .script(attributes: [.src("js/main.js")]),

                        .comment("Google Analytics: change UA-XXXXX-Y to be your site's ID."),
                        .script(
                            unsafe:
"""
window.ga = function () { ga.q.push(arguments) }; ga.q = []; ga.l = +new Date; ga('create', 'UA-XXXXX-Y', 'auto'); ga('set','transport','beacon'); ga('send', 'pageview')
"""
                        ),
                        .script(attributes: [.src("https://www.google-analytics.com/analytics.js"), .async(true)])
                    )
                )
            )
        ]

        XCTAssertEqual(render(html), ##"<!DOCTYPE html><html class="no-js" lang="en"><head><meta charset="utf-8"><title>title</title><meta name="description" content="description"><meta name="viewport" content="width=device-width,initial-scale=1.0"><link rel="manifest" href="site.webmanifest"><link rel="apple-touch-icon" href="apple-touch-icon.png" sizes="180x180"><!--Place favicon.ico in the root directory--><link rel="stylesheet" href="css/normalize.css"><link rel="stylesheet" href="css/main.css"><meta name="theme-color" content="#000000"><meta name="generator" content="HTML5 Boiler Plate"></head><body class="body"><!----[if IE]--><p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p><!--[endif]--><!--Add your site or application content here--><p>Hello world! This is HTML5 Boilerplate.</p><script src="js/vendor/modernizr-3.8.0.min.js"></script><script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script><script>window.jQuery || document.write('<script src="js/vendor/jquery-3.4.1.min.js"><\/script>')</script><script src="js/plugins.js"></script><script src="js/main.js"></script><!--Google Analytics: change UA-XXXXX-Y to be your site's ID.--><script>window.ga = function () { ga.q.push(arguments) }; ga.q = []; ga.l = +new Date; ga('create', 'UA-XXXXX-Y', 'auto'); ga('set','transport','beacon'); ga('send', 'pageview')</script><script src="https://www.google-analytics.com/analytics.js" async></script></body></html>"##)
    }
}
