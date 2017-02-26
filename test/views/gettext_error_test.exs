defmodule GettextErrorApp.GettextErrorTest do

  use ExUnit.Case

  test "crashes on the call to 'validate_length' with min: 8" do
    msg = "should be at least %{count} character(s)"
    opts = [count: 8, min: 8, validation: :length]
    count = opts[:count]
    assert Gettext.get_locale(GettextErrorApp.Gettext) == "ru"
    translated = Gettext.dngettext(GettextErrorApp.Gettext, "errors", msg, msg, count, opts)
    assert translated == "Требуется минимум 8 символов"
  end
end