// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final xml = Mode(
    refs: {
      '~contains~6~contains~0':
          Mode(endsWithParent: true, illegal: "<", relevance: 0, contains: [
        Mode(className: "xml-attr", begin: "[A-Za-z0-9\\._:-]+", relevance: 0),
        Mode(begin: "=\\s*", relevance: 0, contains: [
          Mode(className: "xml-string", endsParent: true, variants: [
            Mode(begin: "\"", end: "\"", contains: [Mode(ref: '~contains~3')]),
            Mode(begin: "'", end: "'", contains: [Mode(ref: '~contains~3')]),
            Mode(begin: "[^\\s\"'=<>`]+")
          ])
        ])
      ]),
      '~contains~3':
          Mode(className: "xml-symbol", begin: "&[a-z]+;|&#[0-9]+;|&#x[a-f0-9]+;"),
      '~contains~0~contains~3': Mode(
          begin: "\\(",
          contains: [Mode(ref: '~contains~0~contains~0~contains~0')],
          end: "\\)"),
      '~contains~0~contains~2': Mode(
          className: "xml-meta-string",
          begin: "'",
          end: "'",
          illegal: "\\n",
          contains: [BACKSLASH_ESCAPE]),
      '~contains~0~contains~1': Mode(
          className: "xml-meta-string",
          begin: "\"",
          end: "\"",
          illegal: "\\n",
          contains: [BACKSLASH_ESCAPE]),
      '~contains~0~contains~0~contains~0': Mode(
          className: "xml-meta-keyword",
          begin: "#?[a-z_][a-z1-9_-]+",
          illegal: "\\n"),
      '~contains~0~contains~0': Mode(
          begin: "\\s",
          contains: [Mode(ref: '~contains~0~contains~0~contains~0')]),
    },
    aliases: [
      "html",
      "xhtml",
      "rss",
      "atom",
      "xjb",
      "xsd",
      "xsl",
      "plist",
      "wsf",
      "svg"
    ],
    case_insensitive: true,
    contains: [
      Mode(
          className: "xml-meta",
          begin: "<![a-z]",
          end: ">",
          relevance: 10,
          contains: [
            Mode(ref: '~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~1'),
            Mode(ref: '~contains~0~contains~2'),
            Mode(ref: '~contains~0~contains~3'),
            Mode(begin: "\\[", end: "\\]", contains: [
              Mode(className: "xml-meta", begin: "<![a-z]", end: ">", contains: [
                Mode(ref: '~contains~0~contains~0'),
                Mode(ref: '~contains~0~contains~3'),
                Mode(ref: '~contains~0~contains~1'),
                Mode(ref: '~contains~0~contains~2')
              ])
            ])
          ]),
      Mode(
          className: "xml-comment",
          begin: "<!--",
          end: "-->",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "xml-doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          relevance: 10),
      Mode(begin: "<\\!\\[CDATA\\[", end: "\\]\\]>", relevance: 10),
      Mode(ref: '~contains~3'),
      Mode(className: "xml-meta", begin: "<\\?xml", end: "\\?>", relevance: 10),
      Mode(begin: "<\\?(php)?", end: "\\?>", subLanguage: [
        "php"
      ], contains: [
        Mode(begin: "/\\*", end: "\\*/", skip: true),
        Mode(begin: "b\"", end: "\"", skip: true),
        Mode(begin: "b'", end: "'", skip: true),
        Mode(
            className: null,
            begin: "'",
            end: "'",
            illegal: null,
            contains: null,
            skip: true),
        Mode(
            className: null,
            begin: "\"",
            end: "\"",
            illegal: null,
            contains: null,
            skip: true)
      ]),
      Mode(
          className: "xml-tag",
          begin: "<style(?=\\s|>)",
          end: ">",
          keywords: {"name": "style"},
          contains: [Mode(ref: '~contains~6~contains~0')],
          starts: Mode(
              end: "</style>", returnEnd: true, subLanguage: ["css", "xml"])),
      Mode(
          className: "xml-tag",
          begin: "<script(?=\\s|>)",
          end: ">",
          keywords: {"name": "script"},
          contains: [Mode(ref: '~contains~6~contains~0')],
          starts: Mode(end: "</script>", returnEnd: true, subLanguage: [
            "actionscript",
            "javascript",
            "handlebars",
            "xml"
          ])),
      Mode(className: "xml-tag", begin: "</?", end: "/?>", contains: [
        Mode(className: "xml-name", begin: "[^\\/><\\s]+", relevance: 0),
        Mode(ref: '~contains~6~contains~0')
      ])
    ]);
