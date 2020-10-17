public class Gtk4Demo.UnicodeItem : Object {
    public unichar codepoint { get; set; }
    public string name { get; set; }

    string _script;
    public string script {
        get {
            switch (codepoint.get_script ()) {
                case UnicodeScript.ADLAM: _script = "Adlam"; break;
                case UnicodeScript.AHOM: _script = "Ahom, Tai Ahom"; break;
                case UnicodeScript.ANATOLIAN_HIEROGLYPHS: _script = "Anatolian Hieroglyphs"; break;
                case UnicodeScript.ARABIC: _script = "Arabic"; break;
                case UnicodeScript.ARMENIAN: _script = "Armenian"; break;
                case UnicodeScript.AVESTAN: _script = "Avestan"; break;
                case UnicodeScript.BALINESE: _script = "Balinese"; break;
                case UnicodeScript.BAMUM: _script = "Bamum"; break;
                case UnicodeScript.BASSA_VAH: _script = "Bassa Vah"; break;
                case UnicodeScript.BATAK: _script = "Batak"; break;
                case UnicodeScript.BENGALI: _script = "Bengali"; break;
                case UnicodeScript.BHAIKSUKI: _script = "Bhaiksuki"; break;
                case UnicodeScript.BOPOMOFO: _script = "Bopomofo"; break;
                case UnicodeScript.BRAHMI: _script = "Brahmi"; break;
                case UnicodeScript.BRAILLE: _script = "Braille"; break;
                case UnicodeScript.BUGINESE: _script = "Buginese"; break;
                case UnicodeScript.BUHID: _script = "Buhid"; break;
                case UnicodeScript.CANADIAN_ABORIGINAL: _script = "Canadian Aboriginal"; break;
                case UnicodeScript.CARIAN: _script = "Carian"; break;
                case UnicodeScript.CAUCASIAN_ALBANIAN: _script = "Caucasian Albanian"; break;
                case UnicodeScript.CHAKMA: _script = "Chakma"; break;
                case UnicodeScript.CHAM: _script = "Cham"; break;
                case UnicodeScript.CHEROKEE: _script = "Cherokee"; break;
                case UnicodeScript.CHORASMIAN: _script = "Chorasmian"; break;
                case UnicodeScript.COMMON: _script = "Common"; break;
                case UnicodeScript.COPTIC: _script = "Coptic"; break;
                case UnicodeScript.CUNEIFORM: _script = "Cuneiform"; break;
                case UnicodeScript.CYPRIOT: _script = "Cypriot"; break;
                case UnicodeScript.CYRILLIC: _script = "Cyrillic"; break;
                case UnicodeScript.DESERET: _script = "Deseret"; break;
                case UnicodeScript.DEVANAGARI: _script = "Devanagari"; break;
                case UnicodeScript.DIVES_AKURU: _script = "Dives Akuru"; break;
                case UnicodeScript.DOGRA: _script = "Dogra"; break;
                case UnicodeScript.DUPLOYAN: _script = "Duployan"; break;
                case UnicodeScript.EGYPTIAN_HIEROGLYPHS: _script = "Egyptian Hieroglyphs"; break;
                case UnicodeScript.ELBASAN: _script = "Elbasan"; break;
                case UnicodeScript.ELYMAIC: _script = "Elymaic"; break;
                case UnicodeScript.ETHIOPIC: _script = "Ethiopic"; break;
                case UnicodeScript.GEORGIAN: _script = "Georgian"; break;
                case UnicodeScript.GLAGOLITIC: _script = "Glagolitic"; break;
                case UnicodeScript.GOTHIC: _script = "Gothic"; break;
                case UnicodeScript.GRANTHA: _script = "Grantha"; break;
                case UnicodeScript.GREEK: _script = "Greek"; break;
                case UnicodeScript.GUJARATI: _script = "Gujarati"; break;
                case UnicodeScript.GUNJALA_GONDI: _script = "Gunjala Gondi"; break;
                case UnicodeScript.GURMUKHI: _script = "Gurmukhi"; break;
                case UnicodeScript.HAN: _script = "Han"; break;
                case UnicodeScript.HANGUL: _script = "Hangul"; break;
                case UnicodeScript.HANIFI_ROHINGYA: _script = "Hanifi Rohingya"; break;
                case UnicodeScript.HANUNOO: _script = "Hanunoo"; break;
                case UnicodeScript.HATRAN: _script = "Hatran"; break;
                case UnicodeScript.HEBREW: _script = "Hebrew"; break;
                case UnicodeScript.HIRAGANA: _script = "Hiraganavvvvv"; break;
                case UnicodeScript.IMPERIAL_ARAMAIC: _script = "Imperial Aramaic"; break;
                case UnicodeScript.INHERITED: _script = "Inherited"; break;
                case UnicodeScript.INSCRIPTIONAL_PAHLAVI: _script = "Inscriptional Pahlavi"; break;
                case UnicodeScript.INSCRIPTIONAL_PARTHIAN: _script = "Inscriptional Parthian"; break;
                case UnicodeScript.INVALID_CODE: _script = "Invalid Code"; break;
                case UnicodeScript.JAVANESE: _script = "Javanese"; break;
                case UnicodeScript.KAITHI: _script = "Kaithi"; break;
                case UnicodeScript.KANNADA: _script = "Kannada"; break;
                case UnicodeScript.KATAKANA: _script = "Katakana"; break;
                case UnicodeScript.KAYAH_LI: _script = "Kayah Li"; break;
                case UnicodeScript.KHAROSHTHI: _script = "Kharoshthi"; break;
                case UnicodeScript.KHITAN_SMALL_SCRIPT: _script = "Khitan Small Script"; break;
                case UnicodeScript.KHMER: _script = "Khmer"; break;
                case UnicodeScript.KHOJKI: _script = "Khojki"; break;
                case UnicodeScript.KHUDAWADI: _script = "Khudawadi"; break;
                case UnicodeScript.LAO: _script = "Lao"; break;
                case UnicodeScript.LATIN: _script = "Latin"; break;
                case UnicodeScript.LEPCHA: _script = "Lepcha"; break;
                case UnicodeScript.LIMBU: _script = "Limbu"; break;
                case UnicodeScript.LINEAR_A: _script = "Linear A"; break;
                case UnicodeScript.LINEAR_B: _script = "Linear B"; break;
                case UnicodeScript.LISU: _script = "Lisu"; break;
                case UnicodeScript.LYCIAN: _script = "Lycian"; break;
                case UnicodeScript.LYDIAN: _script = "Lydian"; break;
                case UnicodeScript.MAHAJANI: _script = "Mahajani"; break;
                case UnicodeScript.MAKASAR: _script = "Makasar"; break;
                case UnicodeScript.MALAYALAM: _script = "Malayalam"; break;
                case UnicodeScript.MANDAIC: _script = "Mandaic"; break;
                case UnicodeScript.MANICHAEAN: _script = "Manichaean"; break;
                case UnicodeScript.MARCHEN: _script = "Marchen"; break;
                case UnicodeScript.MASARAM_GONDI: _script = "Masaram Gondi"; break;
                case UnicodeScript.MEDEFAIDRIN: _script = "Medefaidrin"; break;
                case UnicodeScript.MEETEI_MAYEK: _script = "Meetei Mayek"; break;
                case UnicodeScript.MENDE_KIKAKUI: _script = "Mende Kikakui"; break;
                case UnicodeScript.MEROITIC_CURSIVE: _script = "Meroitic Cursive"; break;
                case UnicodeScript.MEROITIC_HIEROGLYPHS: _script = "Meroitic Hieroglyphs"; break;
                case UnicodeScript.MIAO: _script = "Miao"; break;
                case UnicodeScript.MODI: _script = "Modi"; break;
                case UnicodeScript.MONGOLIAN: _script = "Mongolian"; break;
                case UnicodeScript.MRO: _script = "Mro"; break;
                case UnicodeScript.MULTANI: _script = "Multani"; break;
                case UnicodeScript.MYANMAR: _script = "Myanmar"; break;
                case UnicodeScript.NABATAEAN: _script = "Nabataean"; break;
                case UnicodeScript.NANDINAGARI: _script = "Nandinagari"; break;
                case UnicodeScript.NEW_TAI_LUE: _script = "New Tai Lue"; break;
                case UnicodeScript.NEWA: _script = "Newa"; break;
                case UnicodeScript.NKO: _script = "Nko"; break;
                case UnicodeScript.NUSHU: _script = "Nushu"; break;
                case UnicodeScript.NYIAKENG_PUACHUE_HMONG: _script = "Nyiakeng Puachue Hmong"; break;
                case UnicodeScript.OGHAM: _script = "Ogham"; break;
                case UnicodeScript.OL_CHIKI: _script = "Ol Chiki"; break;
                case UnicodeScript.OLD_HUNGARIAN: _script = "Old Hungarian"; break;
                case UnicodeScript.OLD_ITALIC: _script = "Old Italic"; break;
                case UnicodeScript.OLD_NORTH_ARABIAN: _script = "Old North Arabian"; break;
                case UnicodeScript.OLD_PERMIC: _script = "Old Permic"; break;
                case UnicodeScript.OLD_PERSIAN: _script = "AdOld Persianlam"; break;
                case UnicodeScript.OLD_SOGDIAN: _script = "Old Sogdian"; break;
                case UnicodeScript.OLD_SOUTH_ARABIAN: _script = "Old South Arabian"; break;
                case UnicodeScript.OLD_TURKIC: _script = "Old Turkic"; break;
                case UnicodeScript.ORIYA: _script = "Oriya"; break;
                case UnicodeScript.OSAGE: _script = "Osage"; break;
                case UnicodeScript.OSMANYA: _script = "Osmanya"; break;
                case UnicodeScript.PAHAWH_HMONG: _script = "Pahawh Hmong"; break;
                case UnicodeScript.PALMYRENE: _script = "Palmyrene"; break;
                case UnicodeScript.PAU_CIN_HAU: _script = "Pau Cin Hau"; break;
                case UnicodeScript.PHAGS_PA: _script = "Phags Pa"; break;
                case UnicodeScript.PHOENICIAN: _script = "Phoenician"; break;
                case UnicodeScript.PSALTER_PAHLAVI: _script = "Psalter Pahlavi"; break;
                case UnicodeScript.REJANG: _script = "Rejang"; break;
                case UnicodeScript.RUNIC: _script = "Runic"; break;
                case UnicodeScript.SAMARITAN: _script = "Samaritan"; break;
                case UnicodeScript.SAURASHTRA: _script = "Saurashtra"; break;
                case UnicodeScript.SHARADA: _script = "Sharada"; break;
                case UnicodeScript.SHAVIAN: _script = "Shavian"; break;
                case UnicodeScript.SIDDHAM: _script = "Siddham"; break;
                case UnicodeScript.SIGNWRITING: _script = "Signwriting"; break;
                case UnicodeScript.SINHALA: _script = "Sinhala"; break;
                case UnicodeScript.SOGDIAN: _script = "Sogdian"; break;
                case UnicodeScript.SORA_SOMPENG: _script = "Sora Sompeng"; break;
                case UnicodeScript.SOYOMBO: _script = "Soyombo"; break;
                case UnicodeScript.SUNDANESE: _script = "Sundanese"; break;
                case UnicodeScript.SYLOTI_NAGRI: _script = "Syloti Nagri"; break;
                case UnicodeScript.SYRIAC: _script = "Syriac"; break;
                case UnicodeScript.TAGALOG: _script = "Tagalog"; break;
                case UnicodeScript.TAGBANWA: _script = "Tagbanwa"; break;
                case UnicodeScript.TAI_LE: _script = "Tai Le"; break;
                case UnicodeScript.TAI_THAM: _script = "Tai Tham"; break;
                case UnicodeScript.TAI_VIET: _script = "Tai Viet"; break;
                case UnicodeScript.TAKRI: _script = "Takri"; break;
                case UnicodeScript.TAMIL: _script = "Tamil"; break;
                case UnicodeScript.TANGUT: _script = "Tangut"; break;
                case UnicodeScript.TELUGU: _script = "Telugu"; break;
                case UnicodeScript.THAANA: _script = "Thaana"; break;
                case UnicodeScript.THAI: _script = "Thai"; break;
                case UnicodeScript.TIBETAN: _script = "Tibetan"; break;
                case UnicodeScript.TIFINAGH: _script = "Tifinagh"; break;
                case UnicodeScript.TIRHUTA: _script = "Tirhuta"; break;
                case UnicodeScript.UGARITIC: _script = "Ugaritic"; break;
                case UnicodeScript.VAI: _script = "Vai"; break;
                case UnicodeScript.WANCHO: _script = "Wancho"; break;
                case UnicodeScript.WARANG_CITI: _script = "Warang Citi"; break;
                case UnicodeScript.YEZIDI: _script = "Yezidi"; break;
                case UnicodeScript.YI: _script = "Yi"; break;
                case UnicodeScript.ZANABAZAR_SQUARE: _script = "Zanabazar Square"; break;
                case UnicodeScript.UNKNOWN: _script = "Unknown"; break;
                default: _script = "Unknown"; break;
            }
            return _script;
        }
    }

    string _type_name;
    public string type_name {
        get {
            switch (codepoint.type ()) {
                case UnicodeType.CLOSE_PUNCTUATION: _type_name = "Punctuation, Close"; break;
                case UnicodeType.COMBINING_MARK: _type_name = "Mark, Combining"; break;
                case UnicodeType.CONNECT_PUNCTUATION: _type_name = "Punctuation, Connector"; break;
                case UnicodeType.CONTROL: _type_name = "Other, Control"; break;
                case UnicodeType.CURRENCY_SYMBOL: _type_name = "Symbol, Currency"; break;
                case UnicodeType.DASH_PUNCTUATION: _type_name = "Punctuation, Dash"; break;
                case UnicodeType.DECIMAL_NUMBER: _type_name = "Number, Decimal Digit"; break;
                case UnicodeType.ENCLOSING_MARK: _type_name = "Mark, Enclosing"; break;
                case UnicodeType.FINAL_PUNCTUATION: _type_name = "Punctuation, Final quote"; break;
                case UnicodeType.FORMAT: _type_name = "Other, Format"; break;
                case UnicodeType.INITIAL_PUNCTUATION: _type_name = "Punctuation, Initial quote"; break;
                case UnicodeType.LETTER_NUMBER: _type_name = "Number, Letter"; break;
                case UnicodeType.LINE_SEPARATOR: _type_name = "Separator, Line"; break;
                case UnicodeType.LOWERCASE_LETTER: _type_name = "Letter, Lowercase"; break;
                case UnicodeType.MATH_SYMBOL: _type_name = "Symbol, Math"; break;
                case UnicodeType.MODIFIER_LETTER: _type_name = "Letter, Modifier"; break;
                case UnicodeType.MODIFIER_SYMBOL: _type_name = "Symbol, Modifier"; break;
                case UnicodeType.NON_SPACING_MARK: _type_name = "Mark, Nonspacing"; break;
                case UnicodeType.OPEN_PUNCTUATION: _type_name = "Punctuation, Open"; break;
                case UnicodeType.OTHER_LETTER: _type_name = "Letter, Other"; break;
                case UnicodeType.OTHER_NUMBER: _type_name = "Number, Other"; break;
                case UnicodeType.OTHER_PUNCTUATION: _type_name = "Punctuation, Other"; break;
                case UnicodeType.OTHER_SYMBOL: _type_name = "Symbol, Other"; break;
                case UnicodeType.PARAGRAPH_SEPARATOR: _type_name = "Separator, Paragraph"; break;
                case UnicodeType.PRIVATE_USE: _type_name = "Other, Private Use"; break;
                case UnicodeType.SPACE_SEPARATOR: _type_name = "Separator, Space"; break;
                case UnicodeType.SURROGATE: _type_name = "Other, Surrogate"; break;
                case UnicodeType.TITLECASE_LETTER: _type_name = "Letter, Titlecase"; break;
                case UnicodeType.UNASSIGNED: _type_name = "Other, Not Assigned"; break;
                case UnicodeType.UPPERCASE_LETTER: _type_name = "Letter, Uppercase"; break;
            }
            return _type_name;
        }
    }

    string _break_type;
    public string break_type {
        get {
            switch (codepoint.break_type ()) {
                case UnicodeBreakType.AFTER: _break_type = "Break Opportunity After"; break;
                case UnicodeBreakType.ALPHABETIC: _break_type = "Ordinary Alphabetic and Symbol Characters"; break;
                case UnicodeBreakType.AMBIGUOUS: _break_type = "Ambiguous ( Alphabetic or Ideographic)"; break;
                case UnicodeBreakType.BEFORE: _break_type = "Break Opportunity Before"; break;
                case UnicodeBreakType.BEFORE_AND_AFTER: _break_type = "Break Opportunity Before and After"; break;
                case UnicodeBreakType.CARRIAGE_RETURN: _break_type = "Carriage Return"; break;
                case UnicodeBreakType.CLOSE_PARANTHESIS: _break_type = "Closing Parenthesis"; break;
                case UnicodeBreakType.CLOSE_PUNCTUATION: _break_type = "Closing Punctuation"; break;
                case UnicodeBreakType.COMBINING_MARK: _break_type = "Attached Characters and Combining Marks"; break;
                case UnicodeBreakType.COMPLEX_CONTEXT: _break_type = "Complex Content Dependent (South East Asian)"; break;
                case UnicodeBreakType.CONDITIONAL_JAPANESE_STARTER: _break_type = "Conditional Japanese Starter"; break;
                case UnicodeBreakType.CONTINGENT: _break_type = "Contingent Break Opportunity"; break;
                case UnicodeBreakType.EMOJI_BASE: _break_type = "Emoji Base"; break;
                case UnicodeBreakType.EMOJI_MODIFIER: _break_type = "Emoji Modifier"; break;
                case UnicodeBreakType.EXCLAMATION: _break_type = "Exclamation/Interrogation"; break;
                case UnicodeBreakType.HANGUL_L_JAMO: _break_type = "Hangul LVT Syllable"; break;
                case UnicodeBreakType.HANGUL_LV_SYLLABLE: _break_type = "Hangul LV Syllable"; break;
                case UnicodeBreakType.HANGUL_LVT_SYLLABLE: _break_type = "Hangul L Jamo"; break;
                case UnicodeBreakType.HANGUL_T_JAMO: _break_type = "Hangul T Jamo"; break;
                case UnicodeBreakType.HANGUL_V_JAMO: _break_type = "Hangul V Jamo"; break;
                case UnicodeBreakType.HEBREW_LETTER: _break_type = "Hebrew Letter"; break;
                case UnicodeBreakType.HYPHEN: _break_type = "Hyphen"; break;
                case UnicodeBreakType.IDEOGRAPHIC: _break_type = "Ideographic"; break;
                case UnicodeBreakType.INFIX_SEPARATOR: _break_type = "Infix Separator (Numeric)"; break;
                case UnicodeBreakType.INSEPARABLE: _break_type = "Inseparable"; break;
                case UnicodeBreakType.LINE_FEED: _break_type = "Line Feed"; break;
                case UnicodeBreakType.MANDATORY: _break_type = "Mandatory Break"; break;
                case UnicodeBreakType.NEXT_LINE: _break_type = "Next Line"; break;
                case UnicodeBreakType.NON_BREAKING_GLUE: _break_type = """Non-breaking ("Glue ")"""; break;
                case UnicodeBreakType.NON_STARTER: _break_type = "Nonstarter"; break;
                case UnicodeBreakType.NUMERIC: _break_type = "Numeric"; break;
                case UnicodeBreakType.OPEN_PUNCTUATION: _break_type = "Opening Punctuation"; break;
                case UnicodeBreakType.POSTFIX: _break_type = "Postfix (Numeric)"; break;
                case UnicodeBreakType.PREFIX: _break_type = "Prefix (Numeric)"; break;
                case UnicodeBreakType.QUOTATION: _break_type = "Ambiguous Quotation"; break;
                case UnicodeBreakType.REGIONAL_INDICATOR: _break_type = "Regional Indicator"; break;
                case UnicodeBreakType.SPACE: _break_type = "Space"; break;
                case UnicodeBreakType.SURROGATE: _break_type = "Surrogates"; break;
                case UnicodeBreakType.SYMBOL: _break_type = "Symbols Allowing Break After"; break;
                case UnicodeBreakType.UNKNOWN: _break_type = "Unknown"; break;
                case UnicodeBreakType.WORD_JOINER: _break_type = "Word Joiner"; break;
                case UnicodeBreakType.ZERO_WIDTH_JOINER: _break_type = " Zero Width Joiner"; break;
                case UnicodeBreakType.ZERO_WIDTH_SPACE: _break_type = "Zero Width Space"; break;
            }
            return _break_type;
        }
    }

    public UnicodeItem (unichar codepoint, string name) {
        this.codepoint = codepoint;
        this.name = name;
    }
}