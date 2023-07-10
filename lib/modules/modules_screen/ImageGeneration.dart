import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';






Future<String> getJsonFromGithubGist() async {
  final response = await http.get(Uri.parse('https://gist.githubusercontent.com/HusseinElwakeel/5f866c3f8229e4b18f9ce9e9a8561c7e/raw'));

  if (response.statusCode == 200) {
    // If the server returns a 200 OK response, parse the JSON.
    Map<String, dynamic> json = jsonDecode(response.body);
    return await json['image_generation_url'];
    // You can now use these variables in your app.
  } else {
    // If the server did not return a 200 OK response, throw an exception.
    throw Exception('Failed to load JSON from GitHub Gist');
  }
}

// var defual_value = "ٍSorry, we can't simplify this text";
// var api_url = "https://13d7-34-105-55-38.ngrok.io/text_to_image/";
var defual_value = "/9j/4AAQSkZJRgABAQAAAQABAAD/4gIcSUNDX1BST0ZJTEUAAQEAAAIMbGNtcwIQAABtbnRyUkdCIFhZWiAH3AABABkAAwApADlhY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApkZXNjAAAA/AAAAF5jcHJ0AAABXAAAAAt3dHB0AAABaAAAABRia3B0AAABfAAAABRyWFlaAAABkAAAABRnWFlaAAABpAAAABRiWFlaAAABuAAAABRyVFJDAAABzAAAAEBnVFJDAAABzAAAAEBiVFJDAAABzAAAAEBkZXNjAAAAAAAAAANjMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0ZXh0AAAAAEZCAABYWVogAAAAAAAA9tYAAQAAAADTLVhZWiAAAAAAAAADFgAAAzMAAAKkWFlaIAAAAAAAAG+iAAA49QAAA5BYWVogAAAAAAAAYpkAALeFAAAY2lhZWiAAAAAAAAAkoAAAD4QAALbPY3VydgAAAAAAAAAaAAAAywHJA2MFkghrC/YQPxVRGzQh8SmQMhg7kkYFUXdd7WtwegWJsZp8rGm/fdPD6TD////bAIQAAgICAgICAwMDAwQEAwQEBQUEBAUFCAYGBgYGCAwHCQcHCQcMCw0KCgoNCxMPDQ0PExYSERIWGhgYGiEgISwsOwECAgICAgIDAwMDBAQDBAQFBQQEBQUIBgYGBgYIDAcJBwcJBwwLDQoKCg0LEw8NDQ8TFhIREhYaGBgaISAhLCw7/8IAEQgBoQJyAwEiAAIRAQMRAf/EAC0AAQADAQEBAQAAAAAAAAAAAAABAgMEBQYJAQEAAAAAAAAAAAAAAAAAAAAA/9oADAMBAAIQAxAAAAD95AFammYAEVLViheKCYC1aQTAANM5FYqWiAAAAAAAAmBaaDRSSwAJtSS6JF6SaUpc2tnqWvnY2IC1SsyKV1oUUuJCMtILOcaIACs0EwBQQAqTWAAIJrUTfPQpGgzAAAAAAAAAAAtUaM7EzWwtUaVpcA225ti+lLGmmWhMaQUXFKbUOXWaEwEJHOkWAicwAUEAKE1AAihMAAmBdQAAAAAAAAAAAJtJVYUuqWQIJLWy2Jsk10w3La0uXvSxKtiuetTOmlDONKEwGQBBWAFRUBUVABVUAAAAAAAAAAAAAAAXrcAAFjJfMtEWF6WNpy2L3pc3vTQteLBYVpepXLbIzpNSxBmCKAQJznMsoLUipec7FqqEokAAAAAAAAAAAAAAElpAABelyKajmm1TSc9RZB02x2NtM5Oi+ehIIppQrnpmYxIompUGdJqCCsAiaEAROYBN8xozGjMaM9AAAgSpBozGitgihozsWAAAtW5IAAFkGkBmvmKzJpbHYdGQ65pcvtzaHQyksrBFL5FK2oTAZshUClqAFagIKwAAAAAAFogAAAWtWxmABpmNFLgDSlwABMWISF6WKr5lc9sy4Nr5bE7YybzWS9s5NIzqaUQRWAmJMlRmQVgFbZgDO1QAAAAAAAAAAC1q2MwAATelwCdM7l6oAJmALiIC8ZEaMyu9KmutIN1Re+OpNoEokmkQRM1LTWTBYYVmCiApNS1qQFRZUWVqWiBeaiyskgAAAAATAurJUAE3zsWBa1bAAFiSJCaxoVo1KZTcUp0lb83QTeo0raC1sbGk0sK2qWtSSayM1xy5WgVSZAUtQAAAAATAtbOxZWwiKlppJdSxIAAAAAJRBvatgACb12KRpUrTXMtnpUtjrUpXTE3ztmdNK6k35NzSlg25ti8BnpS5cFAceU0L0nE0qqWrAkAAglAlAkAC1RMAAtUWVF5pJYAAAkgGts7FwAW6MOgU3g5piTHWciN65ld4ocvSzM+uuJ0YbwXtzdRRtQvNdTNpQma3M0jzFqlayIrahQF1BdQAAAaMxoz0AAAAAANAAATelisSLWrqAAabYbHXS1jiz1qTm0M6xuZ0toZ5z0GcU6DHelzHa2R0KyU1rU0mBW9RZqPGzUL1ZAFLZjQAAAAADTPUhAlSDQAAAGjMaAAAvOcG16XAANLUsdmvJ1nJTXIV0yNM71LYbZGmemZrlpU2ytoRbLUprSDStoFqyTEi6o8PWtjPOZGV6ik2KJgAaZ3JQJuAEVuKLiEyWquUTAAAAA0z0AAJ0zuaKWJBeYkv28HYVx2zKzncy1ihGk4FeiuZXpjIjrzg0rpmaK6FUSTS8lZWIB4+Ebkc1tCucwWRJC9SJmC1a2ESJityLJBcpMVJSJiJJmtyFqgAADTOS6tgBpnsRcAGmdjTq5Ny+euIx1EVjYrjOhWlOopXPqItz9RS+dzPatTSlwtlqE1DUfPU2griktTSgRUlEkgWqLznJakyZToM50DSklsqaFbsy94qXmsgAAAE3pJYE3zk3RIAmNC+tLlsr1IlURfI0w3xNc70NaWqawk0xvJMZ6kWrItEloCAeBbXnNq4wM+upy32GUbDnjpHM6RzOmDG81JrNzK2tjC21CWMkdFYLIkiUFpCEwAAAXmJEwNLUktbPQa1uWRJpOepTO0lbZaGWzEz6q5FOyMivXnUasi1pgvSwi+epWUAHha89Tp5puY066nK6RzOkczpHM6RzOkczpHM6RzOmph0c+h01wsVvtmWpnuWpTczmJLzElFhWY0KWkAAWtTUjaLE2gTEWNazUSqWra5XJsVpTpK5V6SK59BWKalNsdSl0EykRYSgeLTKhfHa5yOkczpHM6RzOkczpg53QOd0jmdORnao6Z5R0Z33OXVkdPM6jIoaXgTKCwCYJtWwTATci+epeZqTVYm2djWYqWqFdsxNNMjXLXI1z0yNq3oXzuLwsSiQiS0gB42WNzCO2DgdsHG7BxuocroHO3GDWpRMDXIdLmHTzx0nM6sy23FJrTeSmvKL6LBWh0kC0CLWkraakwF6yNGPSK1uRdBeUhEGjO5ltSDPprkV6a1J2ipGkVI1rJKakguADxOadTlp20OR21ORvmVtWC85jWcRvPOOueMdjjHZhluYO0cWsZnVllqUtvidFcLFXTA0xqdM8o6KRqZNg1wodLHUzvahpbPQuBZBpMCZpYimtS+NegjOnQVrToIimwjPYma2CJIvW5MxcA+Yy7Bx07oOFvkXvzjpnjg73DY7HGOueMdjjHXhn0HO7BxurlOnTiHRz69Jw9VcjqxpsYukLYVOlgOi3LobsBuwg687WM9a5lt4oaa0qTabCc7l62FLMC9dsDfK9Dat6lq2oWsGkSESJtWxN6WCR8u7R5zt5jPbnqdjjHZXlqdc8I758+52xx2NMt9Tjdg43ZzEdXGO3HDYxdtTHp4R280dhyOuCk5UOtgN7cw6nNc2ZbFW8ExjsZdWQaxUujQWzF62kmuWxh00zKddKk7VoRrFSdIgvKBIXBN6SWVHzlO7M5tM8zsryVO1wDvnzx15ZWK59Whw37Bxu6TgdvKV6OYdc8Y1y6NDjt08p2OIaNdjknqgi2GZ3OUdTlHVfj2NcN5MtpxN8balZx6ApsMm5E5CNr5mnPfUjOnQVnPYhlqLZ7kRFyWeotW4AAB85fbmOqeIdU8dTrz55Jz6dDhj0IPNelU896EHHN8Dbq4x3uAdvI7Dhd9Tj6+Wp2U5rlNOmxyT1Cl8szsco6nNY3iJMnRJW/PY0bUNOedycq9YwjYi9KEdE4mmekF8raE89rk0jUtlYWmLEzImwAAAeLtxjrrxDsww2Mc/QseW9Iea9KDzq9+JyTah0dHnj03AO7lp1HI9CDgt1cp124B28sdRx6dY5J65OfRU3ZyWppY5a9knH0X5Ttrz9Zh0uY3rrQ1zXLUkNa4kddcCdrZFlsyyalrWyJuqW1rIvFgAAADyeUIoFIACKBGgfRbhT5YMwaAAA9XpDwQAAT2B7OwAcXkhAEB7PIGXWFMA9LgDv4Q7ecL6BTYMNQx6gyBcGgLyAAAAH//EAEAQAAIBAgIGBwUGBgICAwEAAAECAAMRITEEEjJBUXEQEyAiYYGRFDNCUqEjMFNisdEFQEOCksEkchVQVGOi4f/aAAgBAQABPwD7om0J6CYTfoBsIWhN+wOhpcCFpc/yAJEDQEHtgkQG/YBwEOQhOMye/jEvr25z4Ytiw8RN3isG14GKLMREzgFmjizGPsiDIxc4c4chALgwYERu6xgcWHST2ry/QTfsk9u5jfy1zA3aBgIPSdkQk4coTf0l++YuFTzim958N+BmBbmJ8PisOFmjYPHwMfdDikTeIucOcOzFPRUFzMZcy/YJ6LnpJv2CbS/aJgJ6G/mQ3T8XSD0Nu5Rt3KEkGH3h5xdvzlPFyOcU3UiX7ingYMG8DBcoRvBhFwIw1rQjuiAdwwDGNgxj7pfuwZ9D5S57JPZJ7BPaJ6R02H80Ggz7BYiMbtDi0zfzl71ObSm1285T2xEOY8DE2DMwDBtc4Be4gAKGDFTFxlrmOovHOUGUGcOZh2Zq9gm3ZJ7BPaJ7OsYDeE2/mLGasKzI9hc78MYmcU3N4gxvwlLAyntiUmBYRM/WJk3KL7snxgxAMyaAC5EXeIoAaYh/OPnGAKxRa4mUbOfD9yTfsE37JP8A6AC3ZxWA3hymQ5wYKfHCA2Uxdg+kXBWMT4j4Sjg0p5+RlLM8jFFg0Gx5y91BhPeEyaHAxsGlXCDFOgxodnsHsE9g9kn/ANAB2yLS5JAjG5w8o36CHcIe6FHmZcag8YMKZ8TEGDHgJSOJ5GUczyMTG/KKNZTPg84dhY+QMeVN0YXUTIGA3hNjDPgPST2CewT2Sf8A0A7duhu7zP6RDa5MHE5CKNZwJjUfmYzXbwGAnyjwvMqZPEgSngCfCUt58ImR5RMjFF1MtdM98I+zEOKCPbVEzSHKJtCOMYclnzcujWXx7B6Liay+MJG6XE1l8ekn/wBCBbt5iBY6lj4xgbgDIS9hqmDuoeLfpKeALeQiLrMBNcs7GNgijzibB8TEwVuUpnPlF38omRgyM3Q7Bh2TFxQ9C7QlTMxtkRM25di4lxCZfpJ6QRCwlxLj+fH3C4y8bAQC2J8oqa7eGZMJLN9AI1hZRui91Cd5wEQXa3GM12PCZIvrBhTPiYhwMU5xMjBkYMjAQVaDEGJvHRk3nKkOwImZ5dJ6T0k27BNulc5hxmHGYcZhxmHGYcfusOMw49nDj9yv3F9wmUMbvQnUXV3/ABftB3FL78llK7G0qEE2GS4CU+6C3kPOAXMbMjhhCTqKPODCmecQixMVopzisMYuRi5kRMzL2aHbMqGH3YiZnlLxukm3YJv99cS4lx03EuIT2F6CekS47Yy7Z7vODjugJYxsoO4LnPd+8C6zcBmTHOsfDdE+yp6/xNgv+zAbxxqhV8zKW1rcBeIYxs1uEY9xYPdnnEPdMBgOcp5xDjMiYT3/ADjYNHnwRMzylj2D0k9gn74S/bXoO0eyAbdodoYY+kAJh+k2cPWKBmcobs3iY+A1R5mImvngozMqPrtfIbhKIGLHJYTckwYUwOOMo7fgBeXuYxxA4CHBFgNqZ5xD3Wim4MpmKYG70O35yocTH3T4POJmeUv0k9sn+XXoO0e0M+wO1nGIPIQ93D1gwF/SKpYwtjYZZCN3B4n6CAFjYRyFGop5niYLkyqdWybhnzlMazARjrMTu3RbBPEymLuJr3aOcQOAhI6sRSBTJ8Yrd1pTa14hu0G3GI15Uzj5LP6fnKe15Q9J6W/m16DtHtDPsDODOWEOfSMiYvHhBiYTcxu6NX1gAA1j5S9857tfzn6CGJ9muv8AEdn9+gdyn4t+kUa1gM4571hkIpshO84CILuIW1mMqsRqjgIWtTXxMB+zJibLGUszAcYdvzlU2MqZLB7qJnCR0N2yf5heg7R7Qz7AzmU1m49j4RzmQHjjMhzid0FuGXOKusf1MZtY+AyigBdc+Q4mFiTjnFUHFtkR3LtcymgZsdkYmO2u15S7qlzyHRUwsvCIbKx8LRMXAjHWYmPayi2UOFMCKQEMQjGJi0v9p5ypnK3wxcKY5xMzymqYdYQnCXMuYSbS5ikm/wBwTLmD+RuZYSw7Iz7C9o7K+cOduQhxa0ci4UZLhG7qgbziYi67W9THbWPgMoELtYZx3GyNkQAsQBmZUIUag3ZniYqlmAGZlVhgoyWUMSSclxhNyTG7qKvmZSw1m4CJ3jaObuZUwCiZUvEmIe6xlLaMXGpGxcyoASI2FISngG5S7QEiGzeEIt0E9ANozTWmtNaa01uwGtNaa0Bv9+Gmse1rQYjoXtfCOc/qHnKe1fgLxAGbHIYmEliSY3cTV3nFv26D9mNX4jnCJ7pL/Gww8BLiL9lT1vibLl0OeqQJvzMpjWYA5R212Jh7tIDeZRwYngIpLMOcqt3zKhsijfBhR5ylhrSli8uC55yoe9G2FibLHowPOG94CMjlx4Qix7B+8BtNbsk2mtAb/fg2ELRe0MjLHWPL/UAtTbxIE2aZ8Tb0lMC5Y5LjCSxJOZiDVGufLoQAd45D6mPrNcnMyiga7NsLnKlQu5aUQMXbZWM5diTAxp0rnNsuUQB3CgStUBc2OAwmtqUb72Mod5r7hLl3yzMr62v4CMLUlEQBaRMom5MXGp5xz34/wwbB6DlMWw39BN1t0nL7/W8IG6CekG01vCA3++OUXtKbMIAbjzEsRT/ulQYLyjWSmo3tiYilmAlRgxsNkYCKpZrR2ubDZGUVS5sJWYABF2V+piozkACVmUAU12VzPEymhqOFEquHqYZDASj3Eap5CAFjbeZpBAYKMlEp9ygTxylC5qQ9+rzMrnvgeEbCiPGUsEYyjtw5nnHznwDn0MdYX3jOa0JvjxmvZh4RiAfDMTWEJv8AyOsITfsg2msJrCA3+7MBl+ysGyIRZCPGOLuB4ASrjUNsshMadPxb9Ohu4mr8R2v26D9klviYY+E1RB9kl/jYYcpa09zS/O/0EUEkAZyuQNVBkufOaOBcuclEJLNfeTK9lCIN0pd2mzeQlFbuDKt2qmVvhWAWo23mUksSYmJA8Y20Y2yB0XtCLGLjcceg3KA8MOi81h2tYTWE1hNYS4+/BtNYfcapmXQNkQZ9lcomJImodU8gfSW+1BgBY2GZlXF8MhgJTXVuxyGXiYSSSTEAUa53Zc4SWNzKajFzkI7F2JMpIDdm2VlQmoxYygvVq1Vt2zzlyxJOZj/Z0lTecTNHQNU8BjKj67lpVutNFlEaqExFu4lSxePgAIMEJlMd6HMxgbzVMYzNeUJIxjizeBxi4hh4X9OwDLiXEJ7QlxLiXH3w7Qz6Gz6FOEGfZGUTjM5bEf8AWU8Cx4A9D4WXhnzioXe0qMCbDIZRFLtYSo2QGyIqliAJVIFkXZH1MRGdgBK7ZIuysoJrPc5DOOddiYB1dA8WlGndxwlRrvG7tMCUhmYO845xzcw4IBEwBMUXIl7k9FUANcZHERM7ccI0OKDwwiGzCHDn/OjtCXEOcsYgx7QiZRThAMfUQjVRvEgRMCW3KL9DDUp/mbPwEsZbq0t8Rzhynuk/O30HQPsqf526H+zphd5ziLrkD1lVtZvARO5TLRBrMBKpu1uE2aXiZS2iYDrE+Jj52nwRM4ucuOE2qR4qfoeiptc8YMmHheE3lXO/HGL/ADg7dhFwHQM+0MhBKZygzHOVNgc4cKQ/Mf0lNdZvAYmMxZiYgsNY5DLnCSTcxQFGuchGYsxJzMoqLlm2RHcuxJlJQLu2yIzF2JMp/Z0y285QC5A4yqQLKMhKIsCxEHfMqnIRe7TJ4ykLtGxJj4ACDZJi7QmuJSID2ORwPnCLEiHGnyP0MU6pBjDVYiHvLbeMekfe6r2yMKseHqJ1b8PqIQRmCPu94+4MGfaXKA2MQ4wYEStgn9xlTAgcAJsURxaKCxAEqEXsMhFUsbSo2tgMhlEQu1pVYX1V2RFUuwUSq42BkJTTXcCVH1nsMhlKQAuxyEbvHnKncQLKIxJ4Qks0q4ACU8FJi7Qjm7Q7IETf01LtqvxGPMQEDPI4GEEGxm0viv6S5DAiMBmMv0+71G34c5ZBvJ5TWAyUeeMLvx7AZhkTNYHMeYwmrfEYj70dkQdlegGA3ErcPzmVAWqkDjKxu9twwidxC284DoPcW3xHPoNqSW+M9BtRT87dB+xpW+MxAS1pUNgFlMXa/CObsZsU/ExBcxjcx8FURMLmYmPnBgnM9FRQrYZHEcpT710+bLnGwm2PED1EUlTcRhe7DLeOEVipwllbLA8DCpXMW7AmrU4euEwGbDyxmsoyBPOKzsMPoJqNvsOZlkG8nkJdBkvqZrncFHlNduP0E134/QTWG9R+ksh3kH1moQL7oCRLhs8DxhBB+7HZHRcwdK7+jIxY+7/uIovWJ4EmAF28SZVI1rDJRaUwL6xyEJLEmUwB3jkIzFmJMpqANdshHYuxJlFABrnIR2LsTKShFLnyhJMP2aW3mIusZUa7couCRRciPi0ySAC95YGNkB0D7RdT4hivjxExj3rLrDbG0OPjASCCDjMHOGB4ftASp4Gdxs8D9JqNux5QMybyJ1hJ+E+U1x8q+kDtuA/xn2x4j6QpxYfrPs/E/SawGSj9Zeq/zETVIzIHnLKM39BFKfmMunyn1l0+U+s7h4iaoOTA/SEMuYIgZlyMuG8Dx3QhhA5yOX6SxH3Q7YF4OyII+a/9xFvaqZRwJb5RM5U7tk4ZxFLMBKjA2UbIiIXawlVwe6NkRELtaVnGwuyJSTXMqveyjISmtz4CO2s0QaiFjACxjndEwBMGJjnGDZgEJ6Lm5hAqgsNsbS/7EJKkEGx4iWStiLK/DceXCEMjWIsROtJ2hf8AWAI2TeRmo+4X5S9YfNNetfAH/GX0jgfSHr959WtCOLL+s7g3ky6/L6ma7bsOUuWOZMFGqckb0nUVd4tzIE6ph8Sf5CdW3zU/8hOpqnIA8iDGVkzBHPoDMuRw4TunwP0hUiKxGGY4QrhcYiI1hY5Rlt9zeA9lRh2hFzi5Q7Q8H/1P6T+JE2aP/Y/pKQFyxyWE3JM93TJ+Jug/Ypb4m+g6PcU/zmAXnuaeG0ZnGOooUZxRcgSqQSAN0pi12MBvjGwAEQb4cYcLCDovKtM024g5HjASDcYGNqVc7K/Hcf2jo6GzCxgqtazAMvA/6MtQbIlDwOIgoOdhkbk37w0a4zpt6Tq6/wAr+hnVV/lf0M6iufgbzE9nqDPVHNhOqUZ1U8rmfYDNmPJbfrBUo7qZPNv2nXW2UQeV/wBYa9b5yOWELs2ZJmHTeLWqrkxAnWK20g5jAzUVthseBwMYFDZhY8IHYcuEFn2c/lgJU4TddfMQPuOUII+5GfYBtFN+0IuEGXO31MBuV/7sZlQHi0qYBBwWN3KSje2JlNQzY5DEx212JlMAXc5LHYuxJlFAAXOQhbXYkykoF3OQjsXYkymoUa5yjNrMTFGohbfBcnxMqHVUKJTEY3JMOCxc+g2Ag6Fqat0YayE5cPER6NhrKdZOPDnGi1HQWzX5TiJeg2YZD4YiGiCe7UQ+dj9YdGrfITyxnV1l+Fh5Gfbj5/rLVzuqfWdTXb+m/pPZqozUDmQJ1Ns6lMf3X/SdXSGdX0Umf8dd7nyAnWURlTJ5t+065BlSTzuZ1/5E/wARPaH8P8RBXqHeP8ROuO9UP9omvSOdP0JEC0Tk5Hgw/wBiNTdRe114jEQtFqsBZgGXgf8AU6tXxpn+05+XGLnLhs8G4/vASjcDCAwuvmIHGRy48IRYkfcCawgx6VwM1h2QQT4QAkwHvA7gC37RcNXwVjD7umJVGtVsPASqbueAwh7lLxaKCxAlQgWUZCIhd7Ss42VyEprrtaVagvqjZEprrnwlZvhGQiLrGVGubbhKYAuxjG5Jmylt5ii5jm7QYIfGDGHOYW6GziO9NrqbGFqFXaBRuK4j0h0ara62deKm8IIzEIsTMoKlQZM3rOtq/O3qZ1lT529ZcnsXEAJygSoclb0go1j/AE29DOorfht6GFXTNSOYmt0qzKbqSD4TrVfbX+5cDDRJF0OsPqPLoWoKmD57n3+fGOhQ88juMBvg3keEIKMOO6EBsR5iKwtY+R4Qgg/crl0jPoBl+kC0GXMZ/l4+cLdwne5sOQjYa/goEt9pTHgIh+1LcLmKNd5Ua7mKNRC+84DoNqNPDbbov1NO3xmZme5p/mPQfs0tvMAJMqHVUKIi3aMbmDuqTALmNnaDAdB6Ho3BamdZeG8c+hoCQbg2MGlVsiQw4MLw1qRPeorzBKzW0Q/A45MDLaHxq+gltD+ar6CW0PjV9BL6IPhqHzE6zRRlRJ5vOuo7qC+ZJntJGzSpD+289rrjIqOSiHS9JP8AUaHSdIOdRvWGtWPxt6mdbV+dvUwaTpC5VG9Z7XVO1qv/ANlBgraO23SseKn94KdB9irY8HFo9GrT2lNuO7oBINxnNdHwcY/OM/PjGQ0+9gVOTDKJVCgg4qcxGTDWXFOPDwMDYWOX6QgoQQeREFmy2uH7QMMjlCthfMbj9wMuwDcdA6AAOf6QAb8ABjy4Q6zHVG01r+A3CCzVR8qD6CbSf9ml/tmO5Vi4UnPISn3VZoi6xAlW5awyGUpKL6zZCVCzuTKKWu5yEYs7EmUkAGsY7a7XlFRtGMxYxAFGsYSSbzYTxMUXIEc7ouFzMzDB0hyrXUkGddSq+8XvfOufmIdHLD7Ng/hkfQxkdDZlI5job+RGcSrVp7LEeE6yjV211T8yf7EagwGspDpxH++hKjU72yOYORnVrVxp570/aU6hpnCWWoCUzGaftFa3iDuhWwuMRLh8z3uPHnAWTCaobZz4dixljLdlegZwC3P9IMwBnu/cy6qoOY3eJ4y+olztt+kF0p+L/oIBZ0XgLmX7lRuJjYUlHE3jHVpKOOJlMaqlvITOVSFUKPOIpdgBKrDZGQiLrtKr/AMhEXXa0qMMFGQirrGVGubDdKa6x8BHbWMXuqW6GwAEQXMMyEGcwhFosNrZxdJrJgHNuBxEOkI23TpnxHd/SF9Eb+m45N+8toh+KoPIGdXov4rf4TqtH/H/APwZ1ei/jH/CamiD+o/+EtofzVD5CX0Mbqp9Jr6J+G/+U6zRfwT/AJzrdH/A/wD2Z11EZaOv+RnXUDnQXyYzrNFOdFhyef8ADbfUX0M6ik2xWU+DArG0auovqEjiMR9IM5hx6Fd0N1JBmvSrbY1W+dR+olSi9LPZOTDIwEiayVtvB/n3HnGV6TY3BGIl0rZkK/oD+0IZGIOBllbLA8P2ikrgcpq32cfDfNYHaF/HfNS+Rv8Ar0C1s5h2gbGBCfAQCwwy+pgzt9P9mYAfl+I8TwEXvHXbZGQ/1ADVcknxJ8IPtavBR+giNhUfy9Y2FJBxuZVHfC8ABKuL2lQhdVRulMAAsd0Y3N57pL/Eeg2op+Y9HuU/MYuc92viehrIurvOcVSxjndwiLjcwhmN7QXCwSxMAImq3CCvri1VdfxyadRTf3dQE/K2Bj0atPaQiN/JKzIbqSD4Ge1O3vFV/Eix9RNTRqmy5Q8GxHqI1CpSHeGHEYjpp1np+KnNTkYaSVcaWe9Dn5cehKthqsNZPqORjUrLrKdZOPDnEqXGq4uoy4jlDTwJU6yj1HMQOLAHGat9k38N81r4ML/rNUHI+RwhLLgw9Z3DxECjcwmo3CarcDNVuBmofCWUZn0gvuFhxMSxF8/EwAnH1YwWscbJv4mD7Q8EEZtcgAYDIRrIuoM/i/abCW3t+kcEKlMZnEwgNXA3L/qU+9ULczE71S/nCdd+Zj4AKJTUM9zsjOO5dpRXNjkI7a7XlJRtnIR2LteUlFixjMWMpiwLGEljcxe6l4ucOVoBCbmDAXi5dg5xK1WnsuRG0gti9NG8rH6TX0U502Xk37zV0Q/1Kg5qDOqoHKuPNTOop/j0/rPZ1/Gpes9mH41L/Kezj8al/lOoT8an6mdRT/Hp/WdRT/HT6zqaX46ehnU0vx09DOoT8en9Z7NfKrSP90Oh6RuUNyYGNRrJtIw8uzRq1KWySBvG6XoVdodW3EDu+YlSi9MAnFTkwxHQMDedalbCrg26oP8AcqUnpHHEHJhkYrshuDYwGnUOPcbj8P8A/IVqUiDlwImuj7YsfmX/AGJ1ROKkMPDP0mud+POWQ+EAqDZxHhjL8VH6QaniIQnH6TVX5pZOP0gCnIEzFeC/rBZj3QWMUAHvHWbgIfzY8FGQgBclmwXef2jNfAYKMhB9mLnaOXh4xACSzZDOJ9pV1jkMTFYM7Od2MU2V28oO7SJ3mL3abHjgJRGJPCEkmVO4gXjnEUu1pWf4REXXa3rKrjZGQiKXYCVCB3RFUsY5vgMhES8c3MToyHQex1ej1dh9Q8GlXRa6C+rccRj0HL+QSvWTZdh5z2pm20R+a2PqJfRX3Oh8O8J7Kze7ZX5Gx9DGVkNmBB4Hpp1XpG6nmNxmrRr7Nkfgdk8uEem9NrMCD0U6z08MCpzU5GdXSre7Nm+Qn9DNVkYqwIPAxXdMjhwzEvSf8h9ROqcYriBvWdcW2gG55z7E/Mp9ROqvssp87frNSuoya3rLsDivqIW8BAcNkTVqtklvKarfE4Hhf9oOrGQLGNcDvHVHyia9sFFv1gphBd/Jd8Zi3LcIFFMBmz3CANUfxMdge6uQjfZqF3nFo3dQLvOJj3AVJVzVRuEqm1l4Q9ymBvMpgXuchHbWYmAdUhPxHowpU/zHo90n5jBNlfE9Bsotv6MhaCGCDsrUqU8VYie2OcHVH5idZobZ0mXxVp1egtlVZeawaLSbZ0hD9J7DU3PTP909h0ngDyYQ6FpQ+Az2LS/wmnselfhNPZNK/Cb0nsuk/hN6Q6NpA/pt6TqK4/pv6GdVVHwN6GFWGYI8u2ulVLarWdeDYzV0WrkxptwbFfWVKFSliR3TkwxEuYsSuQuo4104HMcjGohhrUjrDevxDpXSGC6rAOvA/wCjOrpVdh9U/K/+jHpVKe0pEBswInWsdoBuYl6RzVhyN5qUycKg8wROqbIMvk0tpAGDH/Kf8rifUT7fe/8A+oQPif8AUy9IbiT4m0NRshgOAgova7d1eJnWJT92MfmP+opLHiZYU88X4cJ3nbiTCQgKr5mIAi658hKY1nLHIYmL33LHIYmJ33LHnKfeqFjzi3qVJVYs5lQ6tML6yiuu1zkJUfXbwEpLa7HIR2LteUkt3zkMoWLm8QDPdCbmKBmYTcxRv6Mh0GDPsNolYC4s44rCCDYw4TWPZ1m4n1gdx8R9Z1lT529TOuq/O3qYK9Yf1G9TPaK/4jes9q0n8VvWDS9KH9VoNO0ofHfmBPbap2lRuawaRQba0deam0toNTJnQ+IuJ7HrC9Oqj+djHoVqW2hHYp1qlLZOG8bjL6PWz+zf1U/tKlKpSI1hgcmGIPIzWbjFZgbg2PGdbTq+9Fm+dc/Mb4+juo1ls6fMvTTq1KYAVjbhmJ1tJtqnY8VNpq022atvBhBo9Y5WbkQYaVUZo3pLEdFolOowNlPpPZ6g2rLzM1aK5uW/6j951oXYUDxzMZixuTcxKbPjku9jlNdaZtT82OcQM5wzhYILL5mU0DYtgojE1XwHIRyFsgPPnG7iBd5zh7lMDe0xSj4tE7iFpSXWa+4Yx2LMT6RvsqYXeYilmtKr/AMhEQu1pVf4RkIiljaO24ZCLrMbRiMhkIBcz9BALw5wdAgAMUTDhFZ0N1JBg0ytazBXHBhDU0Rx3qRX/qYKWiNlWK+DLPYy2xVpt/dDoOlD4L8iIdF0lc6TekNOqM0b0ljwPRcfd09Kr08nNuBxE9ooVfe0hf5kwM9mpVPc1QT8rYGVKVSibOpXpp16lLAYqc1OIMKUa+KHUf5GOB5GNTembMCD0I7I11JBnXJU96mPzrgZ1Ae/VureBwP1jI6YMpHPpygq1Vycjzg0iv8AOZ7TX+b6Ce0V/nMNWoc2PrCx6FouRe1l4mXpU8u+3oI7u5xPIRKRYXvZRmTNcDBMBvO8xE1sTgozMd9ewGCjIT3S/nP0EpKNo5CIDUe5y3w/a1PCOdd7DkJVNrLuEPcpeJlFbtfcI7lmJ3bp7mnc7RmJhtRS3xGDEz3a+J6Pdp4mXM2F8TAMIcBboMGfQBfpZWU2IIPSegEjKCvWXKo3rBpelD+q09v0ofH9INP0g56h/tE9tqHNKZ/tntnGjS/xntVPfo9Oe0aOc9GXyYzrtEOdA+TQtoJ+CoOTQLoJ+OovMAz2ai2xpCeYIh0LSPhAb/qQY9Kqm0jDmOzT0utTFr6y/K2In/Er/wD1P6rKujVaWJF13MMR009IdV1WAdPlb/U6ulV929m+Rv8ARjo9M2ZSD0pXqoLa1xwOInW0m2qQ5qbTV0ZsnZeYv+k6hTs1UPnb9Z7NV3WPJhBo1e2wZ7NX+QwaPV8BzInUqNqog5Yy2jLvZvpOu1dhQvjmYzMxuSTFVnNlBJmrTp7Xeb5RlGqM5FzgMhuESlhrPgv1MaoXwyAyEUCmNY7XwiKrVX/Uyo4JCrsjLxjnqkC7ziYvcp629spSAALmIDUqXPMyq2s/6Sp9nTC7zKKa7XOQlV9dvAZSiLDXbKM5diZSUW1jluhJJvEGbHKM2sYgzJyEJuYuV+jIdA6F6MYNKrAWYhh+YXhqaK+1SKnipnU6K+zWt4MIdCqtslG5NG0XSVzptCrLmCOY6WgmtB2xhlE0vSKeTm3A4z2pH95RRvEYGamh1dl2Q8GFxH0OuouoDjipvCCDY9NKvVom6Nbw3TW0SvtDqn4jZlXRqtIXtdNzDERehK9RBbNflbES+jPmGQ+GInsrtsMr8jj6GMHTBlI5zW7Ay7Bi0qjY2sOJwE1aKZkseAwEeszCw7q8BFVmIAFzAlOjtd5/l3DnGZna5xMCrRF229ywFqreJjkINRf7jKaimuu39oiKar3OWZhY1Xwy3SqQAEG6e7peLSitzrbhHY1Hv6RyKVIKMzEQu1pXcHujISkhdrSo1zYZCKpYx23DIQC5tDwBwEAJ6AL9Ag6FmfaFWqmTsPODTtKHx35gGe3VTtJTbms9qpHa0emfpDW0Q56P6MYW0D8OoOTS38PPxVR5AwU9COVdhzSdRoxy0hfNSJ7Im6vT9Z7FVOy1M/3Q6DpQ+C/IgxqFdNqmw8u0rMhupIPhBpjsLVVWoPEYzq9ErbDmm3ytl6yro1eiLsvd+YYjppV6tE3RreG6dbotbbXq2+Zco+i1ANZbOnFTfsLpNdRbWuOBxH1nXIx71FDy7s/4rbnX0M1KByqkc1nVU91ZfQzql/FT6zq6X4y+hmrQGbseSzW0cZIx5n9oa7LshV5CMzNmSYASbAXMFAKL1G1fDfGr2BVBqr9TERnayi5l0o5d5+O4QB6jcSYWWiNVcW+JpSTX7zbIjuajeG4RyKa6gzO0ZT+yTXOZylIB2JOQxMd+sfCVWFNAg85QUYuchHYuxM9xT/MYASZ7tNUZnPoP2a2+I9B+zT8xgymwPEwTLptboBt0mror7VMqeKz2eg+xWHJo+g1xiAG5GNRrJmjDyjdk9jWEuDAWGRI5GLpOkJlUb1nt1c7QRuaidfozbdADxQ2nV6HU2ajKeDCexVSLoVcflMem9M2ZSOfYpV6tHYYgcN0FTRa/vE1G+dMvMR9DqAayEVE4r0o702urEHwntWv71FfxyM1NEqbLlDwYXEOh1s1s4/KYyOm0pHMTeOyM+gAtkLwaLWbMWHEm01KCbT6x4LDXIFkAQeGcJJNyYtE21nOqv1hrADVpiy8d5iU2qHDLeYzqgKp5tKVPXNzgozMq1dayrgoyEA6lNZts5CUk6xrnLfKjmowAyyEqsKSBBmc5RUKpc+Uxqv4mVmCqKYlBLnWOQlRzUa8orqLrnygJYkmINUax8oSSbmIBbWOUuWMUb9whN4uV+kdImsJrCEX6AzLkSORi6ZpK5OfOe3OR30RuYntOina0cDkZf+HNuqL9Z1OgtlXI5ieyUG2dISf+PqHZqIfON/DtKGSg8jDoWlr/AEmh0euudN/SFWGYPpFzmHHsgkG4i6ZpCi2trDg2M63Ram3S1TxSezU6nuqqseDYGVaNWibOpHSjvTN1JB8J7UlXCtTDfmGDT2WnVxo1AfytgZUpVKRs6kdIJGUXS9IT4yRwOMGl326VNvK063RjnR9Gl9D+WoPMT/h//Z9J/wAMfifSB9EBwpsebTr6Yyor54w6VW3ELyFo7M2ZJ59AoPa7WUcTOspUj9mLn5jGZnN2JJiUbLrOdVfqY9YMNVe6nCUqWsNY4IN8qVdbBRZRkIiCmuu/9qzv16niZVdaa9Wv9xlJeqTrG8hEVq1THzlZ7nVGQiDqaZY5nKKGdrbzKzBAEXzlJNdvAZyo+scNkSkusSTkI7hjEXWPhvjNfAZCKt4xGUAJlwMLwYwm8GXaFCk+xVHIx9Drr8Nx4Qqy5giEdB7FhAzDJiPODSdIXKo3rBp2lj+oYP4lpQ3g8xP/ACDHbo028oNJ0NtrRgORgH8Ofe6fWeyUH2NIU+BwjaBpKi4AYeBj06ibSkcx2aelV6WAa44HETrNFrbadW3zJl6Q6G7DWpMKi+GcIKmxFj009Lr0xbWuvA4iddoz7dGx4oZ1GjvsVgPBhaHQ6+4BhxU3jUqq5ow8pvHZGcWnUbJCfKDRambFVHiZqaMm05Y8FntGrhTVV8czCxY3JuZTpPUyGHE5TWpUdnvv824RnZ2uxuYlFUGtV8l4x6zVTwAyERFprr1ByWMz1n/QQlaCao2zmZRp9YSx2RnKjms9hkMBGto9Kw2zKNPXNzkJWqdY3gMooFFNY7RmLt4mORTTUGZzMVSxAEqEKNQecAJNo51BqDzgEvqi2/o2R4notq/cERKlRNliINOrDas3MT2ig+3RHlP+A/zoZ7NozbNcciJ/4+qdl0YeBjaBpa/BfkY1CuudNvSEEZjoI7Iy6Fd0N1YjkYunaSubaw8RPatHqe8oDmuE6nQquxVKHg0fQK64rZxxUxkZDZgQfHpUlTcEgwaYzC1VFqL45+s6vRKuw5RuDZesfRK9MX1brxXEdgEjI2i6VpC5VD54wabW3hG5rPaVOdGn6QV6X4CT2il/8dJ7SBlRpjyntdXcFHJYdJrNnUMz6F0eqwuQFXi2EHs9I4XdvpHqvUzOHASnSeqe6POa1LR8F778dwhL1GxuSYqJQxfF9yxmeq/Ezu6MvGoZTRqzn6mVqgtqJsiUkFFOsfPcJ369TxMqkIgQecoUwe8chKrl28N0pr1S65zOUxJnuU/MegfZLf4jlBFAVdY+UzlMZkwm8W3QB230asvw35QgjMQwQjpFWqmTsPODTdKXKoYP4hpO/VPMT24HaoUzPaNDO1o/oYT/AA1sdSovnOq/hzZVnXmJ7FSbY0lDzwh/hukjLVYeDR9E0hNqk3peWscrHso70zdWI5RdPq2s4V18RL6BWGRpN6iNoNS16bLUXwjo9M2ZSD49KValM3ViJ7azYVKaPzFjL6G+YdD4YiDR6T7FdORwh0LSBiFDDwIMOj11zpt6TUcHFT6dNid0FKoclb0i6LpDfAZ7Lq7dRF87wDRUGbPywE9pK7CKn1MZ3c3Ykymj1D3RedVSo+8N2+USpXZxYd1eAlOi9U90YcYXp0BZMX3tED1XO8mFkoCy4vvMRGrOfqZUqKi9WnmZQpDbbZGUq1DVawy3CYaNT/OZTQ1G+pMrONhchKNME6zbIjuXPhKahRrt5RmLG5iKANc5DIQkuxJiKDichGYsYqljCwbLIZRRc9AF/uFr1kyY8jjPbW+NFYTrNBfaQqfCHRdGfYrW5z/x9UZMrRtE0hfgJ5Ywo65qRzEI7RHQCy5EjkYul6SmVRvPH9YP4jWODqj8xBW0N9uiVP5TOp0KpsVivgwh/h9a10KuPAx6NWntIR2FZkN1JBiadVyqBXXgZ/wK3zUm9RG0Gra9NlceBj06lPaUjmOwCRlBXrrlUb1g0zSfxCZ7ZX4j0E9sr8R6Ce16R830h0iu2btCzNmxPn0AE4CJolZ8SNUcTNXRaWZLt4ZQ6S7DVWyrwEALGwxMFFKY1qp/tGcqV2caq4JwlKg1XwXjGqpTUpS82lOk1VvDeZUqqi6lPLeZRpa3ebZErVdc6q7IlJFoqXfPcIS9Z/Exm6hNVdoxENRreplRxYKuQlNNY47IzlR9c4ZCU01zjlvjvrnw3REvHYGwGQgBMNlGqPOKMhMALDoAt94CyHAkcjF0rSFyc+eMX+IVxnqnynttN9uiphq/w42vSZeUFL+GvlUZYNC0dtnSBP8AxtX4XQxv4fpS/CDyMOjaQudNvSMpXMEdI6QzLkSImnaSnxXHBsYNLoVPe0BfiuE6rQquxVKHg0fQa4xUBxxUxlZDYgg9KsyG6kg+ETT9IXAsGHBhPadGf3lAX4rNTQHyqOnODQ0bFK6Nzh0CuMtU8jDoekj4J7LpAPu2ns9f5Gns2kfhmDQ9IPwz2KoNpkHnPZ9HTbrDymtoSZIznxh0xxsKqchKlWpUxZiYqsxsASYmjBBrVWCjhvjV1QatJbeJznedt5Ji0EpgNVP9sq12qDVGCcJRoFhrNgkqVhbVTBZRo63ebZlatr91cFlKkqLrvhwEqO1Z/wBBLLoyXzcwBqjcSYxFJdVc95iKXNo7BRqrlFUsbCO4sFXIRFJNoxCjVHmejYX8xgEGHPoA+50z3p6HzHLobsHLoaUdoeU0fYglb3Uq7Z6B2/4Z8XKfxD3Q7YlHOUtkcukTSN8q5+fYOU0L3R5zSPft0aHtnlNL995QZzSPcjo0j3HpF2hzmlbA5yh75ZpO2P8AqJo2Z5CPtnnKGTc4ZRyblBKG1DF2hzlX3jRfhh2jDB9z/8QAFhEAAwAAAAAAAAAAAAAAAAAAATCg/9oACAECAQE/AIKQ/wD/xAAUEQEAAAAAAAAAAAAAAAAAAACg/9oACAEDAQE/AAcf/9k=";

// send a post request to the api
// request body: {'text_prompt': text_prompt, 'steps': steps}
Future<String> generate_image(String text_prompt, int steps) async {
  //new
  String api_url = await getJsonFromGithubGist();
  // print(api_url);
  //
  final response = await http.post(Uri.parse(api_url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }, body: jsonEncode(<String, dynamic>{'text_prompt': text_prompt,
      'steps': steps,}));
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['image_base64'];
  } else {
    throw Exception('Failed to load response');
  }
}


class ImageGeneration extends StatefulWidget {
  @override
  _ImageGenerationState createState() => _ImageGenerationState();
}

class _ImageGenerationState extends State<ImageGeneration> {
  final TextEditingController controller = TextEditingController();

  var output_image_base64 = defual_value;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.vertical,
      child: Column(children: [
        Padding(padding: const EdgeInsets.all(10.0),
          child: Center(child: Text("Image Generation",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),),),
        Padding(padding: const EdgeInsets.all(27.0),
          child: TextField(
            maxLength: 300,
            controller: controller,
            decoration: InputDecoration(

              // to write this in text field
              //   labelText: "Enter Your Text :",
                hintText: "Enter Your Text ...",
                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(20),)),

            // to identify size of text field
            maxLines: 2,

            onTap: () {},

            style: TextStyle(fontSize: 25,),),),
        TextButton(onPressed: () async {
          //  get text from text field
          var text = controller.text;
          if (text.isEmpty) {
            return;
          }

          var result = await generate_image(text, 25);
          setState(() {
            result = (result?.isEmpty ?? true
                ? defual_value
                : result!);

            result = result.substring(23,);
            output_image_base64 = result;
          });
        },
            child: Padding(padding: const EdgeInsets.all(8.0),
              child: Container(alignment: Alignment.center,
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(color: Color.fromRGBO(230 ,26, 26, 1),
                    borderRadius: BorderRadius.circular(20),),
                  child: Padding(padding: const EdgeInsets.all(2.0),
                    child: Text(" Generate",
                      style: TextStyle(
                        color: Colors.white,
                      fontSize: 26,
                      ),

                    ),
                  ),
              ),
            ),
        ),
        Padding(padding: const EdgeInsets.all(20.0),
          child: Container(width: 400,
            height: 400,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),
              color: Colors.grey[400],),
            child: Image.memory(Base64Decoder().convert(output_image_base64),
              fit: BoxFit.cover, height: 400, width: 400,),),),
      ],),);
  }
}


