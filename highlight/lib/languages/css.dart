// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final css = Mode(
    refs: {},
    case_insensitive: true,
    illegal: "[=\\/|'\\\$]",
    contains: [
      C_BLOCK_COMMENT_MODE,
      Mode(className: "css-selector-id", begin: "#[A-Za-z0-9_-]+"),
      Mode(className: "css-selector-class", begin: "\\.[A-Za-z0-9_-]+"),
      Mode(
          className: "css-selector-attr",
          begin: "\\[",
          end: "\\]",
          illegal: "\$",
          contains: [APOS_STRING_MODE, QUOTE_STRING_MODE]),
      Mode(
          className: "css-selector-pseudo",
          begin: ":(:)?[a-zA-Z0-9\\_\\-\\+\\(\\)\"'.]+"),
      Mode(
          begin: "@(page|font-face)",
          lexemes: "@[a-z-]+",
          keywords: "@page @font-face"),
      Mode(begin: "@", end: "[{;]", illegal: ":", returnBegin: true, contains: [
        Mode(className: "css-keyword", begin: "@\\-?\\w[\\w]*(\\-\\w+)*"),
        Mode(
            begin: "\\s",
            endsWithParent: true,
            excludeEnd: true,
            relevance: 0,
            keywords: "and or not only",
            contains: [
              Mode(begin: "[a-z-]+:", className: "css-attribute"),
              APOS_STRING_MODE,
              QUOTE_STRING_MODE,
              CSS_NUMBER_MODE
            ])
      ]),
      Mode(
          className: "css-selector-tag",
          begin: "[a-zA-Z-][a-zA-Z0-9_-]*",
          relevance: 0),
      Mode(begin: "{", end: "}", illegal: "\\S", contains: [
        C_BLOCK_COMMENT_MODE,
        Mode(
            begin: "(?:[A-Z\\_\\.\\-]+|--[a-zA-Z0-9_-]+)\\s*:",
            returnBegin: true,
            end: ";",
            endsWithParent: true,
            contains: [
              Mode(
                  className: "css-attribute",
                  begin: "\\S",
                  end: ":",
                  excludeEnd: true,
                  starts:
                      Mode(endsWithParent: true, excludeEnd: true, contains: [
                    Mode(begin: "[\\w-]+\\(", returnBegin: true, contains: [
                      Mode(className: "css-built_in", begin: "[\\w-]+"),
                      Mode(begin: "\\(", end: "\\)", contains: [
                        APOS_STRING_MODE,
                        QUOTE_STRING_MODE,
                        CSS_NUMBER_MODE
                      ])
                    ]),
                    CSS_NUMBER_MODE,
                    QUOTE_STRING_MODE,
                    APOS_STRING_MODE,
                    C_BLOCK_COMMENT_MODE,
                    Mode(className: "css-number", begin: "#[0-9A-Fa-f]+"),
                    Mode(className: "css-meta", begin: "!important")
                  ]))
            ])
      ])
    ]);
