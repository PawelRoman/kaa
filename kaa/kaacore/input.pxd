from libcpp.vector cimport vector

from .vectors cimport CVec2


cdef extern from "kaacore/input.h" nogil:
    cdef enum CKeycode "kaacore::Keycode":
        unknown "kaacore::Keycode::unknown",
        return_ "kaacore::Keycode::return_",
        escape "kaacore::Keycode::escape",
        backspace "kaacore::Keycode::backspace",
        tab "kaacore::Keycode::tab",
        space "kaacore::Keycode::space",
        exclaim "kaacore::Keycode::exclaim",
        quotedbl "kaacore::Keycode::quotedbl",
        hash "kaacore::Keycode::hash",
        percent "kaacore::Keycode::percent",
        dollar "kaacore::Keycode::dollar",
        ampersand "kaacore::Keycode::ampersand",
        quote "kaacore::Keycode::quote",
        leftparen "kaacore::Keycode::leftparen",
        rightparen "kaacore::Keycode::rightparen",
        asterisk "kaacore::Keycode::asterisk",
        plus "kaacore::Keycode::plus",
        comma "kaacore::Keycode::comma",
        minus "kaacore::Keycode::minus",
        period "kaacore::Keycode::period",
        slash "kaacore::Keycode::slash",
        num_0 "kaacore::Keycode::num_0",
        num_1 "kaacore::Keycode::num_1",
        num_2 "kaacore::Keycode::num_2",
        num_3 "kaacore::Keycode::num_3",
        num_4 "kaacore::Keycode::num_4",
        num_5 "kaacore::Keycode::num_5",
        num_6 "kaacore::Keycode::num_6",
        num_7 "kaacore::Keycode::num_7",
        num_8 "kaacore::Keycode::num_8",
        num_9 "kaacore::Keycode::num_9",
        colon "kaacore::Keycode::colon",
        semicolon "kaacore::Keycode::semicolon",
        less "kaacore::Keycode::less",
        equals "kaacore::Keycode::equals",
        greater "kaacore::Keycode::greater",
        question "kaacore::Keycode::question",
        at "kaacore::Keycode::at",
        leftbracket "kaacore::Keycode::leftbracket",
        backslash "kaacore::Keycode::backslash",
        rightbracket "kaacore::Keycode::rightbracket",
        caret "kaacore::Keycode::caret",
        underscore "kaacore::Keycode::underscore",
        backquote "kaacore::Keycode::backquote",
        a "kaacore::Keycode::a",
        b "kaacore::Keycode::b",
        c "kaacore::Keycode::c",
        d "kaacore::Keycode::d",
        e "kaacore::Keycode::e",
        f "kaacore::Keycode::f",
        g "kaacore::Keycode::g",
        h "kaacore::Keycode::h",
        i "kaacore::Keycode::i",
        j "kaacore::Keycode::j",
        k "kaacore::Keycode::k",
        l "kaacore::Keycode::l",
        m "kaacore::Keycode::m",
        n "kaacore::Keycode::n",
        o "kaacore::Keycode::o",
        p "kaacore::Keycode::p",
        q "kaacore::Keycode::q",
        r "kaacore::Keycode::r",
        s "kaacore::Keycode::s",
        t "kaacore::Keycode::t",
        u "kaacore::Keycode::u",
        v "kaacore::Keycode::v",
        w "kaacore::Keycode::w",
        x "kaacore::Keycode::x",
        y "kaacore::Keycode::y",
        z "kaacore::Keycode::z",
        A "kaacore::Keycode::A",
        B "kaacore::Keycode::B",
        C "kaacore::Keycode::C",
        D "kaacore::Keycode::D",
        E "kaacore::Keycode::E",
        F "kaacore::Keycode::F",
        G "kaacore::Keycode::G",
        H "kaacore::Keycode::H",
        I "kaacore::Keycode::I",
        J "kaacore::Keycode::J",
        K "kaacore::Keycode::K",
        L "kaacore::Keycode::L",
        M "kaacore::Keycode::M",
        N "kaacore::Keycode::N",
        O "kaacore::Keycode::O",
        P "kaacore::Keycode::P",
        Q "kaacore::Keycode::Q",
        R "kaacore::Keycode::R",
        S "kaacore::Keycode::S",
        T "kaacore::Keycode::T",
        U "kaacore::Keycode::U",
        V "kaacore::Keycode::V",
        W "kaacore::Keycode::W",
        X "kaacore::Keycode::X",
        Y "kaacore::Keycode::Y",
        Z "kaacore::Keycode::Z",
        capslock "kaacore::Keycode::capslock",
        F1 "kaacore::Keycode::F1",
        F2 "kaacore::Keycode::F2",
        F3 "kaacore::Keycode::F3",
        F4 "kaacore::Keycode::F4",
        F5 "kaacore::Keycode::F5",
        F6 "kaacore::Keycode::F6",
        F7 "kaacore::Keycode::F7",
        F8 "kaacore::Keycode::F8",
        F9 "kaacore::Keycode::F9",
        F10 "kaacore::Keycode::F10",
        F11 "kaacore::Keycode::F11",
        F12 "kaacore::Keycode::F12",
        printscreen "kaacore::Keycode::printscreen",
        scrolllock "kaacore::Keycode::scrolllock",
        pause "kaacore::Keycode::pause",
        insert "kaacore::Keycode::insert",
        home "kaacore::Keycode::home",
        pageup "kaacore::Keycode::pageup",
        delete_ "kaacore::Keycode::delete_",
        end "kaacore::Keycode::end",
        pagedown "kaacore::Keycode::pagedown",
        right "kaacore::Keycode::right",
        left "kaacore::Keycode::left",
        down "kaacore::Keycode::down",
        up "kaacore::Keycode::up",
        numlockclear "kaacore::Keycode::numlockclear",
        kp_divide "kaacore::Keycode::kp_divide",
        kp_multiply "kaacore::Keycode::kp_multiply",
        kp_minus "kaacore::Keycode::kp_minus",
        kp_plus "kaacore::Keycode::kp_plus",
        kp_enter "kaacore::Keycode::kp_enter",
        kp_1 "kaacore::Keycode::kp_1",
        kp_2 "kaacore::Keycode::kp_2",
        kp_3 "kaacore::Keycode::kp_3",
        kp_4 "kaacore::Keycode::kp_4",
        kp_5 "kaacore::Keycode::kp_5",
        kp_6 "kaacore::Keycode::kp_6",
        kp_7 "kaacore::Keycode::kp_7",
        kp_8 "kaacore::Keycode::kp_8",
        kp_9 "kaacore::Keycode::kp_9",
        kp_0 "kaacore::Keycode::kp_0",
        kp_period "kaacore::Keycode::kp_period",
        application "kaacore::Keycode::application",
        power "kaacore::Keycode::power",
        kp_equals "kaacore::Keycode::kp_equals",
        F13 "kaacore::Keycode::F13",
        F14 "kaacore::Keycode::F14",
        F15 "kaacore::Keycode::F15",
        F16 "kaacore::Keycode::F16",
        F17 "kaacore::Keycode::F17",
        F18 "kaacore::Keycode::F18",
        F19 "kaacore::Keycode::F19",
        F20 "kaacore::Keycode::F20",
        F21 "kaacore::Keycode::F21",
        F22 "kaacore::Keycode::F22",
        F23 "kaacore::Keycode::F23",
        F24 "kaacore::Keycode::F24",
        execute "kaacore::Keycode::execute",
        help "kaacore::Keycode::help",
        menu "kaacore::Keycode::menu",
        select "kaacore::Keycode::select",
        stop "kaacore::Keycode::stop",
        again "kaacore::Keycode::again",
        undo "kaacore::Keycode::undo",
        cut "kaacore::Keycode::cut",
        copy "kaacore::Keycode::copy",
        paste "kaacore::Keycode::paste",
        find "kaacore::Keycode::find",
        mute "kaacore::Keycode::mute",
        volumeup "kaacore::Keycode::volumeup",
        volumedown "kaacore::Keycode::volumedown",
        kp_comma "kaacore::Keycode::kp_comma",
        kp_equalsas400 "kaacore::Keycode::kp_equalsas400",
        alterase "kaacore::Keycode::alterase",
        sysreq "kaacore::Keycode::sysreq",
        cancel "kaacore::Keycode::cancel",
        clear "kaacore::Keycode::clear",
        prior "kaacore::Keycode::prior",
        return2 "kaacore::Keycode::return2",
        separator "kaacore::Keycode::separator",
        out "kaacore::Keycode::out",
        oper "kaacore::Keycode::oper",
        clearagain "kaacore::Keycode::clearagain",
        crsel "kaacore::Keycode::crsel",
        exsel "kaacore::Keycode::exsel",
        kp_00 "kaacore::Keycode::kp_00",
        kp_000 "kaacore::Keycode::kp_000",
        thousandsseparator "kaacore::Keycode::thousandsseparator",
        decimalseparator "kaacore::Keycode::decimalseparator",
        currencyunit "kaacore::Keycode::currencyunit",
        currencysubunit "kaacore::Keycode::currencysubunit",
        kp_leftparen "kaacore::Keycode::kp_leftparen",
        kp_rightparen "kaacore::Keycode::kp_rightparen",
        kp_leftbrace "kaacore::Keycode::kp_leftbrace",
        kp_rightbrace "kaacore::Keycode::kp_rightbrace",
        kp_tab "kaacore::Keycode::kp_tab",
        kp_backspace "kaacore::Keycode::kp_backspace",
        kp_a "kaacore::Keycode::kp_a",
        kp_b "kaacore::Keycode::kp_b",
        kp_c "kaacore::Keycode::kp_c",
        kp_d "kaacore::Keycode::kp_d",
        kp_e "kaacore::Keycode::kp_e",
        kp_f "kaacore::Keycode::kp_f",
        kp_xor "kaacore::Keycode::kp_xor",
        kp_power "kaacore::Keycode::kp_power",
        kp_percent "kaacore::Keycode::kp_percent",
        kp_less "kaacore::Keycode::kp_less",
        kp_greater "kaacore::Keycode::kp_greater",
        kp_ampersand "kaacore::Keycode::kp_ampersand",
        kp_dblampersand "kaacore::Keycode::kp_dblampersand",
        kp_verticalbar "kaacore::Keycode::kp_verticalbar",
        kp_dblverticalbar "kaacore::Keycode::kp_dblverticalbar",
        kp_colon "kaacore::Keycode::kp_colon",
        kp_hash "kaacore::Keycode::kp_hash",
        kp_space "kaacore::Keycode::kp_space",
        kp_at "kaacore::Keycode::kp_at",
        kp_exclam "kaacore::Keycode::kp_exclam",
        kp_memstore "kaacore::Keycode::kp_memstore",
        kp_memrecall "kaacore::Keycode::kp_memrecall",
        kp_memclear "kaacore::Keycode::kp_memclear",
        kp_memadd "kaacore::Keycode::kp_memadd",
        kp_memsubtract "kaacore::Keycode::kp_memsubtract",
        kp_memmultiply "kaacore::Keycode::kp_memmultiply",
        kp_memdivide "kaacore::Keycode::kp_memdivide",
        kp_plusminus "kaacore::Keycode::kp_plusminus",
        kp_clear "kaacore::Keycode::kp_clear",
        kp_clearentry "kaacore::Keycode::kp_clearentry",
        kp_binary "kaacore::Keycode::kp_binary",
        kp_octal "kaacore::Keycode::kp_octal",
        kp_decimal "kaacore::Keycode::kp_decimal",
        kp_hexadecimal "kaacore::Keycode::kp_hexadecimal",
        lctrl "kaacore::Keycode::lctrl",
        lshift "kaacore::Keycode::lshift",
        lalt "kaacore::Keycode::lalt",
        lgui "kaacore::Keycode::lgui",
        rctrl "kaacore::Keycode::rctrl",
        rshift "kaacore::Keycode::rshift",
        ralt "kaacore::Keycode::ralt",
        rgui "kaacore::Keycode::rgui",
        mode "kaacore::Keycode::mode",
        audionext "kaacore::Keycode::audionext",
        audioprev "kaacore::Keycode::audioprev",
        audiostop "kaacore::Keycode::audiostop",
        audioplay "kaacore::Keycode::audioplay",
        audiomute "kaacore::Keycode::audiomute",
        mediaselect "kaacore::Keycode::mediaselect",
        www "kaacore::Keycode::www",
        mail "kaacore::Keycode::mail",
        calculator "kaacore::Keycode::calculator",
        computer "kaacore::Keycode::computer",
        ac_search "kaacore::Keycode::ac_search",
        ac_home "kaacore::Keycode::ac_home",
        ac_back "kaacore::Keycode::ac_back",
        ac_forward "kaacore::Keycode::ac_forward",
        ac_stop "kaacore::Keycode::ac_stop",
        ac_refresh "kaacore::Keycode::ac_refresh",
        ac_bookmarks "kaacore::Keycode::ac_bookmarks",
        brightnessdown "kaacore::Keycode::brightnessdown",
        brightnessup "kaacore::Keycode::brightnessup",
        displayswitch "kaacore::Keycode::displayswitch",
        kbdillumtoggle "kaacore::Keycode::kbdillumtoggle",
        kbdillumdown "kaacore::Keycode::kbdillumdown",
        kbdillumup "kaacore::Keycode::kbdillumup",
        eject "kaacore::Keycode::eject",
        sleep "kaacore::Keycode::sleep",

    cdef enum CMousecode "kaacore::Mousecode":
        left "kaacore::Mousecode::left",
        right "kaacore::Mousecode::right",

    cdef cppclass CEvent "kaacore::Event":
        bint is_quit() const
        bint is_keyboard_event() const;
        bint is_mouse_event() const;
        bint is_pressing(CKeycode kc) const;
        bint is_pressing(CMousecode mc) const;
        bint is_releasing(CKeycode kc) const;
        bint is_releasing(CMousecode kc) const;
        CVec2 get_mouse_position() const;

    cdef cppclass CInputManager "kaacore::InputManager":
        vector[CEvent] events_queue

        bint is_pressed(CKeycode kc) const;
        bint is_pressed(CMousecode kc) const;
        bint is_released(CKeycode kc) const;
        bint is_released(CMousecode kc) const;
        CVec2 get_mouse_position() const;