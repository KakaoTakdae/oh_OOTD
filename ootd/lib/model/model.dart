import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class location { //이용구 주소, 해시키, 텍스트컨트롤러

  static Map<String,String> headerss = {
    "X-NCP-APIGW-API-KEY-ID": "noaoz64fyk", // 개인 클라이언트 아이디
    "X-NCP-APIGW-API-KEY": "gk2M9ll3WPkULJOsIZWdb7XDeBqhCQEwbITRGb43" // 개인 시크릿 키
  };

  static String address=''; //api를 통해(페이지의 _addressAPI() 실행하면 값 들어감) 주소 값이 들어간다.

  static double? x_pos; //현재 위도
  static double? y_pos; //현재 경도

  static String lat=''; //위도
  static String lon=''; //경도

  static String gu=''; //구
  static String si=''; //시
}
class RecommandCloth{ //옷 관련 변수
  static bool gender=true;
  static bool choicePadding=false;
  static bool choiceCoat=true;
  static bool choiceEtc=false;
  static var winterCloth = List.generate(3, (index) => ["1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""
    ,"","","","","","","","","","","",""],growable: false); //[0][]은 패딩 //[1][]은 코트//[2][]는 기타
  static List<String>padding=[
    "https://lh3.googleusercontent.com/fife/AAbDypC5x9z-IracxwfwXt6wT45ULXPmKKoSXPrVLCKQGOXChYZKr2O2gxgtQ1bzlfhqHckIse3fpEriyH-89zPAG5YwD2rTRnspy9KJKG1KSWz1jGaWYO5A5snPc52-DAArQ4JFlZ7N-pWqulIzc9sNgYZpPrctfYORdFfcCEO1RuCozKKlVVhRBeINJXuPLDyls8pggTwNut6SlyTQvg2uFz9IEtD-TdaYsjHFy6OdVUNAtfhrbv5dOH8GxkV_i9MgoEcJSsfxky5AyJJkAbPEwm6ytBVXMUDCuXtIAeJnSHrRYtsTVkpmHBldyQKkwPGPOKUnqJ5-WpOtro-0jXVc85J6f8D3CsqgpRPxOkKykRnDfVLfUgV4XdjB7AuT173Y2TH5hyT0TBuMQ-2DxDIlUP3YWGHQv58Hh4gdA-4tNJRBFhZ0Lk2aF1TzmbQTUFSaROdwE1iXbdnP4hYkjJ-iRuQHV45AYRzegfmhhsQpXKd_WBOrSgQAPVbxS6O11SmPhwowMxsaqFNHoCD0oZV47JCOFIF8sVtDvbNnu_7jf8KyDVzarfd-CYezcKwjddKdWjf-6jeJJniTISbABT1ICHbrS3YPo-AnVkt0SauiJ3klT9QZ-JBpNxW7oMNFxplc8cY5rovByD_iQMXVv07M6RAdr7XYDY7_qoTxORcsL9ascDWzxcrC5fQb892GscgXcwTqsozwxE0LykPBuAhYJG59pJbAqzo43nsFxRwmxpqW6cHB3KXopNF-ViewHF4hzgf6i52BnLo2QIoS8JQj9q7zBl_SWCpqstyqlfye15apB7nmzHa-uzUJBUME0Ui-O_rO4rfudmTY2x3BKx18dHcR34YepfB6LakGmIM2z4IBFGMheQvQ0clK7f0yLkWB0rBvoKtE0mEUIgIA5PVGvHtSYqNuKcdvhSXFq2p3Qc2eqynx8M8CpVDkz2kefM2gyQOF0ocANpiAU0i-AGmyNMEaBnCGsvcquZmpGLdye7Pke9eoqQ7b-WDGiV61e1UBJeWo5POPsvjMPGZ2f34beuDfrYN3Fy-PjPTWX7ofNvv-Y6BBrjNsANUvnR4HrcBsX4gnrSSir4A1gfSOWtI-1HlptsAu3wt0Kud0VsPvWEYEOKqTRP1V01hbVM9cQYC9CFqVkP51j6NRTVRNOvLy8qeduzxOdNQtoA5m3K_T-7q3NHM4Xa1sIrCV2_tPuv16h9U_ip1-uYQScbe52hQHynk2SEEshFK3ITtRkpPJ3ZOczMJcFBvbDL_LqEViTd-sbZXc_-aZm4p-AepKZlLk7ZDzr14vQC6KVgV6eeee-zL9zsjl7YC-RlZjfXehixq7ZqUDPpcmJxBVBN3k6PNDvtZ0nJ_pcP0_bjlho6mrfLySnHU-7HeU-XC_paZk-MniymXVeGgjEhscKFABHLHcA8aoZQND1kMa3jPm8UKx7XVt9uqayHDTKh8iTwEk7ZYlorC-A_4PaVvKJt7sdOU=w1920-h937",
    "https://lh3.googleusercontent.com/fife/AAbDypDyF_ZIxxAaKvPeN0ZBvVKbUhA1Xhz1Urau1xWQ2HvWG08qb-ud0KqHOZXuTtjc8jzaS4mNoO-YUBP5cBbbcDr3q3a5Sei-pNGd_ahz7BuGKMhxdXHoJbWOrZwxqs206LqB9lT3aQvHwQZl30biPedJx7YhpF751iO5Y8NAz1TM_0LcLwn3HxruO2rSGnDQftrAuRyLOL1tbhC3IKqVkLek0l2txNn4FtV76OkRevOX5blDrPa9JA1zqooi8OzA4gH-gEvPU1H8oNO4NAOgNYOpPrFBy5Bhj9Ed231thw3Kd6t3yms-nTBsdg1_NWTW9xqVYTTcQsTAbGVV9F6D4qKXj9JWMUNOrW6Q0svzpZfyw3O8LeTfikzn11FT3hKFeeZNidhkCx5Z_mnZQBJFJijBcAxmjJoCyO499g73Nfi28EYeI0bMqV38cVwAcig2ABZ91Wo4d4usVv21rLVPBzSMDpc9yxsx9asAzH87dHxxmA_dGUN0Rsa0zcIr9Be4kwxsao5yUxUPKYMeiU5t1sNT0jiDuftjLhDHPiPW6fc1vOIWBd_RcO3zumX5ElKZorapD_IuijhbQvcQdQJZuADNvdXQPPTEdMwnE_0sSoUr7aGlVjYj4dB91SaSioF7LYw0sSi5qQPeIBRLhNfeJZr21MBpCQUwmKgQSK4KhYKcZ_zOHXcY1gqMTSYufsko04SxY8thbapy638DrKmdxR3glZeSrktsuMWOxBAHo5Uq-f2QpixJslfZlDqUqglbgcRJyYAwDUj8x1Me2cSSXgUB42dzW9dMxsYzvUeM5E7O914r71-Is8ueOAU6FSEz8PX2155JxEdVYl3bVwt5v9sORWa_GRpeqmFVPxO_Q4qvsUQwuDNvhGeakzN0NJVzRVNu4dyl7n6Wur0UTDIjBOVpK8-EbRJfg4gHEacPV5MLT_ddsi3u-uk9gdr6c1VfaKnc-ur9_B4Svtt-qfZv4mPqo_0WjCCqcMFn0xVThu0gMY5PNUg-eQkjcjqT4MBjSQn6MAELyIU5KL2b7C8h2AOXkHxQPObwJf8K8tI5kPVtNkknlR58v5H3kg6iRirFEl5Xfsu5pPAPWU1LkyMW7L2mgZrQsxblFmxKLXXyVlOWh8NlBMjvYGmmov_9tZo3ivjMCFzfXG9UjhS-KYuq0hGUGthRzMXihaiN_1mj75OvMixVZ76KcOS82b8izJDyiYk__lC-60-QyyOvMM06_I9kIg5w6ZEtt4ki4l9uhrBhSwk0yJAAXc4_hqrXd5WR1E30evUJ-Ve0nPy184dndH2U-4-rW--370JLzN4mylJyXhBLNxmNW2HX0e3O49UalRGNUjG4hBtaFEZhKm9jzhQda20htHDlCfQ1Xe83fXE8XSZNeyt-1VYmk_GwuJLgOaFxK0VVI97SW8dhPsS-hUDZLIJLkQ2gNmepqaQz8VgeBJokrDWpAUFOrhtsZEcTdvIAMghiVrdhuyn8r1s=w1920-h937",
    "https://lh3.googleusercontent.com/fife/AAbDypBBzitw65ZTztP5i-zYN8sw_SsTh660sqcY2NqcIxnL099q2iq8ZI7Kgy-lwhSJ_vee4mzngtJMdVkroYJ7v-GijaJLpaotq2flHEF2inm19tIJUsYInHt5ZkdqlQUWSPRkyMAXk3i-MmlzJqlTRpR_2eq9hQHu5T3Gezhzp4dCLoo3Yql-gOUANwz91Q5g94BXEVpwLYjgltbu1HApVFus0ymIx62xkNSFc3SEVX30NmzkIeA8w0qv1XvAVxr6dKv4iSmUaeCfjEV9O7gyKHqfdK_F8wIz4T60nWGW1Dm3MRTPXbZx4D3N081VR-I1lA0LH9x7u9aK1OeRRx1_kd3u4rbnWd4Q0JTBBcXk9mXkkzm4b9M48E_fw5bXovBNci4jN-7svGhobdA6ml0pRNfmUKhTydwujP79qsBVK64LUZZgjeaYf5ptIb0-lld9S8XLWd6J3JtTiGObYFOh05G4EPudNrbkEop5Z5yA0PH3zt-CJMDG-mSw75-UayA1E3D-6lE5YXhJH-fhIGYtQMfyulmm-tPCU3H_Nbt6tKW_G7K-D8LZEvOafPGqdKi75YiJrLb5zAJaVx6S9b6PTmCz4p_corIuYXOIa3U4FVOZYfv8FSNVuY7VaYLLfQf9UcEO9OtXChuD3bBfFi4cDvBBTQJ2XosOVUYwO4giKzyUUk05FOxXG9ZGWi78Xq_5vPSFjsdlURULuNUxVzKThfDMBWHPqQ1o1B2KDORhE5liTMdRhslH9jgkEUgqo2H4K6tMC1ZVF_NZtUZG4JJHWDR9smzBIPBE18jM_Bg5PJ7KNOYMvnJqYK8aozHPuKjEaGIGjpupAhFPWzgFKHmP7C7HjSwtbRI6qgw8q2Nig5DBbqm67fWtcFDDFG1784hl5cK1ydtuPwZpck4xLBlNAQijkQozYzJTSpBFi_qK20LOyHN2KEySYsMbUalYEIK4cZdG8A5xQ3Rv9Ys4WCTWt11S8mMReYksXy24jjf-p2Vta40_ZhagEIdZSe8FPGrdVo8u12Q8i0fjuQS4TjpGNC5bc0oNSAsXribA7GPJd_cx2p8hftz2CCBms044CqDUY32XF2aoVUGBhtDai4eiwV4PT6rbKWChJdUgR-QdL9JuvqBkGUxPmTycpzl7VNf_ZjQbg50CO2AKtIpkAxaZiC6SOTn-xTzWpdeh8O4nW1y10s7QHQyjh0O-UFzxWhu-8eKAcJocRI6bczUznpDP6cencSXymyXNnwWSAyzDMZeDwMTWdZMYre0Oib-B-1HLH3MEcuRnJK6CkqZwGiWiivkcv9-Rz_Ai8KWkC2HY7MgB14EWhtBjGcUrmS5TX1thnKk_n92OB3v2Dw2Pm_5J0tU4YJFBJI1EFZhCcYO7Lv5q4Xr-9cBik6p-318_n4hClfmx0NUNZXuZ3SqoeO0iyH4S2wM1nuGpoEpNfQN4eiHr0GD0-TF8S4aCa_UHeai-pEeRmFg12K4ojHSJUrk=w1920-h937",
    //스트릿
    "https://lh3.googleusercontent.com/fife/AAbDypAfM6a9LfaXebkdvM0BX_cvqlkEBSqDFqa8Jy3_Ok7EhhFyfzraXwshM-7YXqmEfu05YCXYe_ImQtEAynx3iy0_ooZyKfyYgC-onQFXLA87WKk4_d_uAXDOYZvMME0RbWdLCrITgNoQ0dDMM1GNGwKoPzatFRLak0MqSji6bqvMXez9rQ5Eo2z3Nw0msgOIpM7TmpiHSYni1yXSTniQ-4iFa4jBxhOjixg9aNbEhD7p-MEx9xzNL_g6puxceHSfF3Hv9sZH2EOOg7eIcvaRvwO0l8o4vLXblRn9orkAFpsYxWlShFv_DnzcDvKiYdvl5hoo_2VfCNhWhPSMDrbL4E-tdlpfDq8SIVfi7xL8RLq6CcAJ1-zdp71tA4V7tSfLdUQ-sjpJ7b-IS9d25bFm-3ruWgwnRAORjMiCUDzE5eR52eoqu2RoIH0sFwFf2Ax-qVe9040c8XiIB_JhnY5b_nIjbsM6gN-Rh0LKzOem9DfED1Sw_WikL5X5GoqqY4-ByKEN4UPeJB5pHooE_laHuibWQp6Yvy_ybHndYvwqTWOvSkymmp2IikKEUEBF9-NSVXs0GbUok2nso2YRAwEO25RS8LzQ_qvTmuj10ngX73VsPXr6Z9Us9XrXeN8cWMKEGqP1C4tAOz3BTuZMw_n671-jn0S92XkCwqoOJQ3I5WzZ6zr91PgI3Dy7clPSXYz2vwqdL2m5o4q2KvtA_gYlTP7_tTQlOOzuhq0tsgF1HHt22d8_jella8xHJTfpqvs1l9-5AgNumQoVPh1sWVnKgOdFUrKYj1Erv_e170DpqxExwpQ3y0FRZdubqkai41U5TOAZcBJEpXl6j1nbUqgMcWXtTecQ-NMoeVnSWhyRzEnrgFHtP9vnCFwKR8pixIa9g4-IWn5h4KZpX9lHBdya9qY7UNhtXKxAvp854-jY6-EmVAGZIS8uqG1KiAwCWFICdBj_y5Wc3eQLcVJSyvkDH50eqHobhhMoWLQmIJrkjVUH8U4Q3qAlAyAbnaFYjFiJ27dr3JOZsiEtNYuMfCBTCwYCSuf2UHvP4jyPlrTn6PcRdZaanrGcotHz1m5D5_mV3lTR6-FrDP-CJNeLRda53DdaOHSn2O_4NWZ6tGkYJK5EfCv0be0XRd2qvQcUpnNPxYxK5WAgcTwb03pq0IHKT6-cvoDsbnOOQcy01q3_tulz4wNx5kS0iBA_9N9oLoa4PfbY7uvc-xi2A9vqw3oslYx6Kf1EbLxkVW536C4ibHp1zqfLfTW41Vp6qt-IdVyeUMr29udKfcyVBY_yj60Zpnm22whQ34_AvkSlIOjwiWNBjo1wP2caFrpdGJOT8q2qyKaBGqcfqwQfR5eDghHT0dTunOq4bYQRxiFMzPY6wIOpJ1IuDaAGIEMRb_srqBSQbsuZH4vjKkMDz2RO2EEPilSPtR06TwfGtS0c3bZIGfqAlIiL7BdSXftCC7iLZ7wix8MnMGHNrcY-NoeE1y0=w1437-h937",
    "https://lh3.googleusercontent.com/fife/AAbDypAVFB-lIB9XgRChpoSj3W50tdYGdwK_xMDoZiahRZdkTv6_88tq-L0c1uzBURSSJJ8aJFaSDbCe22Ynk4rMQkU47mjzPQYOqZZTLo24YmFOJS9dfDsmaxJ1obP7V27PueC1muFt1xVsN6faykNXtRDX2NH_VUj9Vzc01gvJgBCTVSG-AWnFQuLEj7sVUvYZTLiPJ9EFXC86qrh0wZouUPL60jNjY_d7QA_Wyg7mTviAqBeUtxUcV1EXpKZKgQGYe2dRmn8oK1qZannxjxI7Gs8W-uTyj-HbEnC_kQcw7C1DCmPGP2hFAv5uTAeWGTnxXTA-OqIjU5tr4IW4BFdC6CijIzHz3TgX_5N7UgZsetH9hHhQqMwbKMuv1GM7IJgBwp02vJL8J3V_d6uKJlvW95UqsgXPEZe4SsArbud_wWbtsoMtOk7OS3oKlpJOf9WD7miOp5fXBdLOE7tWweUzUgGExTtUtp9ImOD2RrwzoqqY-PpmQojbXDDvTfPRvFbaG8VKkwrvLvNXDZRs7bd0nic7wLUMpYR843RaMz4HDLNGJ9c8aaYuv3Hw-Wr8T5x8zxc-pzOtXt7mJO0lJfJGxFrPw_ah_3f3iWT8v3Hp-Od4Ea0IGdZ07SIaeknkef_DoaZ9RmLRE9v1tnRmJaOlKv_wj6TZgUgDPYAet9r9_PcFK9WU8VlDB82VJGyqzYvga27cRzII-cwcJMSSdkNoeslV_3doUdgrDILEtipjw8cpidMM_el5LTE81OMxFnir-yO3mchFryWQQwK3vA2632uv2g-DDaHxRXypm7JZYtmXhEnlmIEOl3y7naJFYyMUd6CgBMkxcg9zXdU9WyXF2b7293EqXVl-4RCQ_sBKfxzad4pMwb7mnrDhu9oWIMFpBFIY5oai-SLAHdBhoW0m6PtUeNECeOan6-NWQQSfUrRTZRPcBeB2fJhI_RLo30X6rYHZTlub5Abwanvwf392S1Yh69JMU3mafJzb90BvG46AOdSLKBHSk-zI9zOzDLWoowf72w4Q3nGgOVmQd2oCPQ291hd4W_4N5bZ7U9Ob_TYKIZIrAbA9NJRLpWbBRB0EHt7qmJKsMPTPqNq5bsxkt8yGu5HkVWHKL7ElGq6EcVf3wCIr3deU4Ywf7zZVVFdyZAQigUhpPTP0iuYeWqoAwFtPNDwZ2TAhn3IiYGieuSdx79Yda6ghFsYjr9EXcx_N6uqxniy3tHEuGMAcfQLHzNFYcnQHMjWOD3_mr2B7rYUr4uP65zS05HfeG2w5kRo2e6-Bm_t2cZusgntwkfRnIMmciZovzBxBGSsY312vCJYuswibcgUerNqjqCzLJ1gRaHPFclvhmuWTznAnEJf5f5Edc0Ox32ra4XW52Yr-kZcaXRRtBfGWC75x5SYv-eCUaW5HaqnMA6MY-qFdIhbyLr9CMByo36BvMk1sn264qIbSdKm1PkVAk2ZHdHWVN96cakT2tYr3UGpcR-VnR7E=w1437-h937",
    //아메카지 (남자만)
    "https://lh3.googleusercontent.com/fife/AAbDypAeszSQDmSHGs7Mj87QayaRfz_OnKChsDGs7tuwF8-Xt7_v3lbcZq0zhYNqOYqL-xg0z5za1V0-ymSbwI-sxYpIHW-9KQ2r0WLWLkJZfgprjINSriA6_PkZOmwDSWRnsD9GGiCAzF6vHNPRHhSievMLd4ozlMa8b2YfQoPUkBuqMarn4ptyONsQAgCgltXt1AcIXUQXqkHHIINIqHneaV_MMsFwGa9bGFwg_hBTm67HzqMwcG3-6KzzSq6YKX5JsAMZj4_ZewtoXHj2l3qW3giF13-QoM4l6yufF9v9x0Rs4ZMWBYASJ8wgF24MfajrwVETo6DCCsplXiasq9OEqlolM6MdENPI7rEOa7LuejJF_PSUFia_DKkphhlXln8tUlv1y066HzS--xVGgQR38o4jp2ZCMe_6R4-RRy7edMLhPsqt1NAweTw5k8a5S5GSgOrFIinDyWjKW5Dn5UDiBa6UcoYUGF-Y8-J9k8zHGrVM5fUlNqRYs4aOQdk1YtpMwba74YNMGtd8F5yZamLifb-ff76g48cdghCPkF--uMyVdemzu_7dcfGTf7PpdHitc5msG9yAXnKQeuYaqEFj-Ws17gToi7n9rLF7pCXnLTGGsVhAvAQhGwfdf_XyO_Cz-NkDYUujcek3CQGTq5GSQhBMmOIA6swXhw4M6TSG7n_HuVp56QCm5LhJr6n9FlsDZk3JANqOV0-4JzsGxtHVJocmqx1nVCVX1Yps6bNjSyhu5Z5G7RTS45X-qNNifX2UFUtiMWbSlW41XzQXKQKRhGqn4Kqwi988wh1lmWIkVCSYRAW_2k_Fqzhl4k0_ABmFOq1iE_957iM9VVn5SkWIYd-WVZDGEPkYwfV73MkNk54XLPxkfHR6DcN3E4fXVVSTlEvfyB_yUdjDbe-uy-KmdvAy9Dfq2pR5CPd_w4oE-OQ93ArxzDSc8SFa9-JupoS9LIEdUbymK7-mzFUCNeBvOC_xB11iM4DUe0T3EpfWxUOIzWNg80nsPzgSAFUH9DLp2kp8TB5eYtQWY99JOALEY0yjgvwveAIx2xNEduqObO-sUcJyNEL2Gqdy2EOYA_eBOw6Dgw342j1nmW4BymmP3PLuXhL3VmhP25RkVngs2_wz_LFQBXhdma1inHmLRRlfbhKTYzXZVCmJoGttLSGnNAVDgF80DV3sK1twXia9EgwWfPrLdIAdPsmRpl9O5YU9pErwUIUOdjZ2FxdDUpF98UaHZ8wp7i-tVySljozuIuBKNLnsq-WeG8UiGXMHMFJwx1Kkvfd00tlIbaezogfF50shOa1q25uO5kejOQ7GLSLz4QveRtO0DUiiEypFhWSv3u2rEcDVe3Id1ykuqFxtr5rajwNOXc7XexoIVjvJP_ggjxJdo1_CA7DdqChAQmyb9FBweHKrWOImcF_WQBDrGnb5R7Z55Adiz3j9jxI9aWQbLd3cjgeuIBqbYzSrDj1G0J86nEUU63njv_fXSaI=w1920-h937",
    "https://lh3.googleusercontent.com/fife/AAbDypD6rCWZnt4RIEkOD5XnruO015Xc0DgSTUv-G30aIt6qyKHncf8x8wVEO4J6Tjss1V45fV-2bKwT8gCXyR3qm3E66WW1OWnOXkdlqASncxE0nko7D3WBod2jy-KzuXve_54o693nvFZJINFdstVXeeQZPcsWUoaZvZ9KfDIaLLBne7SPMVcAkJsh6gp3eKOADK_oeUQrz23VIdFwOoi1Ovw_R7rCKAqkjrmeW5ccE4DTFC7zC_-9jxG-uPWZ8kkzoIEIPfE9GIELQREVcLsO2_mwqN-yy1NhSqgFfBUX8Ej7vZoYWYnAbteOXaIoziBvZervrydODJnbDnEf_ERf4J0A6fakGbchtigl8aPwBQD5tmDo74WVCPF-Na5SwgQakYTycPX0y_Ch22Dqu6fG4IS1MOJ8YLNJcSjEkLh69Bv1aqmMP-HbC4tXms2MV6DTBXYMDYkMotPzLqRC5q-lv6qk8OLtyrGSISnW55QOAT07cb1wW_c1P0nmlhPhYC7Q_CbT8TmmdhtsK_MYMrzZFVilaFHN2a7u5WGgcCB-ZHU33rJMf4xWiASz5Pot0dpiGHWopIHLC-ruBPrgXjF8A_jNZmpiTMTZ6ezcS3jIYC74s8n52e259QIt54OoumIj0RKuhgU2SqcdB9FIL9wg4mgMJvIvQPE2z3MUahliP9zzFAViFzYZIZyJZ-zQ-5C9dBrFa_DfN_VRkvs5jIu3ngqAUXY8kZL_KXvrC1X8j9kkEJ6JUCKJDHHz9qFuAHh8ahGnegv8KewTosSIHmwrvnfENnQ-rWh9ti0mXzcPpiXV_8sl3KnBad3zvw7ppDF-umEo-4gpr2Q0g-wc4xxcxfi0uXvmKOKHTre28jqIXjeQEy4z1-BC0f4WGb7XcvsrR3HZ-J51M5uLURuJw0ovleoQbojRWUMyyRDohfH28NgLG1jKUfabben3haGe4UfXM2YtK8WYB4IfH-Kn70B1abvtFzUL_z92Sgu7NZE8dRcg2hT6OIJUKY5FJzZCgx7BqP-7O9m-8o1r2lEhbyq44lujCLRgK0fNf-epx2PgteX5Unjt-6jQLWmTnSmNmVhqRGTW92z_oYBm2h4HaMDXZumj5cIHULVfo50P1FKHjirhEuqo0x73rAaPw2LULYxl0-lCy9yr97EsAmldzjSEmmx0IhOe0p8rK8OansHb7GusD_wBhztimq0FXzgSFj_-gvUrIFb-qh083ka1wG2RT0ZFbLvgA0TbV-O7yd6JixIhQx1mXbIcTCkTH8F5EN4hNKZMcAhm-se_VVqaLh8ho-bv3rew47nJup2Thqf-hJikHjN392-xM_BT81r_qaT8yw_cpx6Gy_9KPDT-QjA1LupB618TCdTQ2Lb9xg-Kgz3I4YL9gRc0BL7VaQrN4QTHT9K5TiMSjgbZn-y_EU7Bof90SIulUt-P-6E7d5quqKTAw0pauR2KgabIJvcyZ2vS33bqOiKE3MHFX-35uaA=w1920-h937",
    //여자 베레모
    "https://lh3.googleusercontent.com/fife/AAbDypDnYq4dpaA12UiJzVwsjRNVcfCKO0puZMTq7woMAX17QSgEzIxCcIEvBAYJ7GOWDGyN8PHtDAmL6eQ-rN5nAfeQIZBB4zC3ddWoAfWewdhmNV1dtSFnhc4wY-kocg6gs2A2h7w0Zk01qfTRzDtGXGxqHQL7S4tdfzvpS2VOUYWY4Ac2aYN3aNJqEFtZzEVpYxesG_gsHQwPe7UkpSr_bphe-YNiIqoQLn_l7ZqR8iqmc4gnttp7MY2Hdzgx-4yNBmR3UbnxVueWFhx_gtWnpeCZflsHDyQXU04e9zWWCuZALi_8eLwK0fPsS9ru9jopmEPvMGkezkYGtzy3uWJG2WFNTU1OOrIWJudi-Soey-wN911bP654CMNPqePbzA3-Sa46RkNJr3wj8maOmk3Ounhh-H4kNdDs3ZHsuozXUPvipid1YRCP5JJmmKfhNuqcd925psStEglQnKLH7XNZioMETBivVjR7JxlAkXksukCn-ugNw_49cq_29ZG3ni5XQ9VQdfJsXTUrWQqMboc_05_ruPxYhCsF-lOGOc-bXDZkcEWUeNFfW0WVw4Kar92H2NA9jcIVvWeyjNHsknJliFlp6sxxyS37WGJunCpgb2V6OoeGaeKmOvLLTpROODtC1Vad1UjvqHZHBeuPIblTYXJTBJo2PlM6czOoVrzbZwCxB0qkaIycluSBstO9Hjv27ZerITYGd5xIjNNFGjKWfZcIJr0fCwCG_AALMIJuwOb87ESYYc4tYWd3ttUVs2jZdCubMUJUXMRSa0ZYqvebG3k1XvE_2KSKZBGHQ019mC3U6Mu8R9FCQaTZwWz14fn8EDxPygI-xxDELLQi5pSsRAaifJOzMLNSV_ARekXb2A7EkhRKgfSALWlOy9uPHcou2cI-I4jh9cMYcG86VmpRe4_MZfJBxmTdS3whPstBHR61auMNnNrrIsjE4yaqjD6-lKOLnyPGlmjejOshswFC5zf_GYVIlMOd3df4nldy7sCD0s5BXonSYa3C6a6Obq9khjbWqd8szsmOZwpYFAS_Q_PaghKMpcku9pKPehBSUdxM7iGJ7Fpg3B8NUwuaFjqaQlzQHLRc4cUafJBx3AZGSzzKmmGcg3AtwH-Ns8TaZB73FCltMc8wP2EQ1veJ3_yj_EmM8qAbEdTT34pX39WNFi4IWBvy0mIUyJZpRwgi6ufiTUKx1e-NRjZtJFKPoBY16AguJ9EZdJIWt0TjXx8IILDfOdMZLfC2BZ4PLjHWsemGdfRvBG_rwo1I-mcWi9chYW3pmLbfJuVoWo1zVM2aBK_x-ei0EwRZ5MJZNqAjQtxF5dC48KWpbKKjgftQho2cVJwOyK1F4d7w9HfjtmmlhhDMxb20x1-THH1Gdlj8YF5GReArBoUwnVXyQpJ5RZjGltzHGloAVjBfxQbqZNTt4_adhs9Fk5UXZmGadRVBXPc380XfIeMedxGZZQUt1fhaPh3ud3ldvWGI5ANSkI8=w1437-h937",
    //여자
    "https://lh3.googleusercontent.com/fife/AAbDypDOnzsRXb2lXAT9fq2VDfv-sQB5WTIblxuort0o74yIOrfMGp44N6z_rK4DRuCXPABrp6lGqV9KuWycv465lVl1fkw_edjuMXMoNN5Q43GzsYxmwOb0AcR3um1K75u-gLZ3A6PvuC9WG8fkqX3P1iijfKLnkItpDdaz3LHWoHaKxGKXmbwtOVyDvUual9Tq_bVMlFVuiEEpJT4q9d7c64PSOOzC9e_n2OQplMW0fhBZy41Y75ju8581fQ_XAF2b33lwoK4fu7GyFDHl1KcDbAUeglDxZfvZcSdGCpzw5hXDcbuPi0fch2AJF9TBWM4QmhwT17UZXNJqEqYIAOJdPUzpl9FnCb2dNY8rg5paqHBQwroRq2zgk41bR1P3-IQKJ1B48GvR6r4OaDqhtXT70LSGKi1oxNdIyWQNwGsSbVUdLjxgTrAy5dKzMRS0wocPnKGnWMNsljY9XZ1KIjl9Zv-ii_LmmZJTegc1N5Nl9FkASFysISpYQbGVyz4jKESFVUWk2eQ9YzlQ_h6fkBc-vUKbpiGUNO5Xc2cdtidHnMsUJw24jhfZw3N4BthKDkaD4prUhjN0kV_t-OG4b1iee-rpNRqksJhZ5EReGgt9T5fwYfZfoWPLJG_kpdL_L7Wr3mQfhTZ9rrnSPwgVZvQCr0XJ3p0Gm8gQWDBYIDff_N-jhJoj8COeoXUaWegSFqGinSBojrFZxPqyn4fJCSwjwJgTUlzlyJMwMZqhLU5OisJ0ROR4-8dIuCs52-wU4mIOf6bvpaGVc6nXpwPzZ91L-8zyak4Ac_wXMfKeZEmECpIo6ANvwRIfdkxJEF67Ygv-uUf_YamVCzWamUxO4XBK1HD25_JycLJn-Bp6CDs0ia405uYiPSmaCrSpMpSlkKSfEAfsqbBPgrN8E1XccVYZkGByVoiDVJs0ITVtlXwo9G8K5DtHtAitGJEcU9WbKrOBGXTbzl1wJRrDJIx3LRe7C9u597F-us9eW5iQx-noEpIh7Z9u0kuxWOsezD3knWIaBUxPxiiepwrqZmhTlG95nzKPRyPC4rjPrLI_rnA9A7v79wE6Ck9oosTBfC2HsMrEfQrRX5ieA9yXkG3a6XDNa8rE1kL-IxxfiRggQRk-qXWObigd1WPY7jLM99RjNY5-f3IPfM2eIios07i35OQiTxmqkSNk1J_a2EL8xqA5vM5RsrvtK7tJDK1cuOykKlHOKuhCtkOauHzIiioZaBez9mBMBY1jTf3AzIKdktllk2DQXWH5cR8W7DnY-taFLlpL-taINJlHY80j3Q8MWkLv4Q1PxdBDdSYKJ2a3UeRXm2DkV1GFqA1KckJ-wOUGgNwhV3H0cpPXb7WCY8MC5ykDeO9RwWbF-yAnoW11xX3nbqgY1Vag6Az1ZyKvYXoYDTMpWZJi9NDYsy9yK1VdJd68bGj8iMlbnrmR01EecJjtXJubQD5nGTKmjZX9esxH_iEbgE6be-Gpec4JZkTnqWQ=w1437-h937"
    //여자빡
  ]; //0~4까지 남자 6~7여자  //2은 스트릿
  static List<String>coat=['',
    'https://lh3.googleusercontent.com/fife/AAbDypAPOaeNfKhKQDZej6L4qQpVuw1aZZ1RBg9N6dWCzeLhHAJV_qow8-gEpc0E1Lx28dCR0b9GrlQ5mifjLrxOErUJqi2JoGpHxGW9FhbvbysZ7BKILSq4W-gE7vJjE6xuu1MpVAqV4Ht8_l7QAgo0_NRoICXf7SKLxfTwBPeikp8GOOwSQGb2r5Rbm1C2CSyMTTCFTbV-JFrDelYWaNl2d11ypzqnIQ2L9emFcKCaiMzdN8snIyRMDIC-sbDn3qHhHRmfCcp_gf6zjwjoEraLLH8u1-GQoKKTKoz2F0maYF8RLZ5yeODW2Gfc8nF8GbFI2TuZHtz8MvYzbMrqjcuiZbQOPDp0x-duwqfHuuTVhZb5GRb9w_I9hjyRhNELGWx9TwWTILiKcDAXn8lCnV_kMscTr8_03JuxjYOqr1-9PjbjS-AhMSPpfjBdLTCxlGbICiOnidZoNjlFFmafNNBjBcqCvMJcxnE0DKWG_72WLIbB_DViMcpBEqWTs-XfIu8LC5j3pmA0qnBxf4lSn3GOQPG8I_cPxjitlhuwo9gkoah7jVNxYZgQQVwBVzpVfisqeZyt7eLZKL5UdK6tSH2XNVY5mzj92RPqbEdl9xlb65QnXKXWlC47gjPKOVR0BnYazGvVqlugulhuxUEu9SvlJhqvuCCc5lWDY2qxSpCrbIuHfaYyqRlmotiweBx-LL1FIWNGlAcuTJbfYuM3Al5p2qcxUgRTaGZnk5JKnP_WrDVDzBophuBSH2q17lsGVAIh3pHyMe_pQ5KPrzxKtTnalpQ8xNacrlapF_REbGIdWtw5VF6R-toXTwzwsVnOfqJNCCQYmwLO7SFg-zVtNzgYyluGXTDE-ajHIZuFbixWpeul_i8lz7W9p5d9PBuCi_XN-D1zOof-c5q4v4LJ50iXC75to0ZuMqua5g2HLk0Q4aYdupKCm2rcIa0x1y7ONDgiF8J_QPaEEaPC-AyjZsDXIFOHD3JPftdnLlvmnLZfPkx-olN61ZPpQlAB_YMQISXH9pUY1O4myRJDfX9y4v-6CDjxkT78BbjRdEgZuH_x7IEBB1JAjUpyhTJVVN9Tq6iRJEn9Ked8mnXc1tACHIStt9fs1exqerSlKymDWpu_ucalEeYJfdqUqe-LVXKAYVDXRHfVnQU4HTFwQ1UO7ct6nIDmzuvH8bVxD4bgeGkPrg1Adm2anOy7lhlmFkRaGbpOEKF_wPphc2WO4bVrSE3FPLkAuYvtBKysDJ4CCSPi2dHj6YPb0SlqKdOiIMKo7apBogc5AP2MU73RmgPp0pkV_dietvKEkMtoowmOOvOiVw72GDpPA6TrD-J4Z_emhr_js8o96JVgT7F01-jigbGbq3sLjxPmldisPXNJpW1fWgMB-_6Htc18LEKFWMSUhQG_j6a5mF0H3od32FZUfCQKcPH9rxgvesZgF9a5RTzadlqCdraTh4M4dx2ejFwcKKpAz9Ti8mzpRWaj0UY6uc4=w1437-h937',
    'https://lh3.googleusercontent.com/fife/AAbDypAxIlyJNG0EWzwOaRyIlmJosu08MftD82Nd9xK-B-861fbvLpHgrqH7Eu9A3n0OqVTlpptvkpoFGl5Cyu5jQeYRoeK7KS4zJB1pXTP5_y7c8yLJDMwpMOlsJ6GYMVWb-x0fPc2Iinyh--ZzybtvtT8iFV5nv4dY_QZVU8QFnET2zvDWS-ADdXrCuAA44T3xEyNdv2iO_Lqbyv6gh539r2gnh2-KvetRLRKkfwg5At9mZ7Zw9K3jXyAkWeR4xgt68IPdJGaLmhbtzorWm7DC_f9SbYcf2G9d4_VYHO_VGrGAoEmbWaj0u4lrhaVNnroE_BQ0juGgnU9Qud3cUy99NLYjnQv3p4PSm-PXw-AO48-ehqyBRHXB2S_uz1IMjc2WGy3hByDJuaT8CzhTv8RwXQZqWCQHe6Dhsubi3znBERwLQMeDANQ4vwC_ySFZKrh7PSRUWwEBBBRGKENZjxbSVtNhgEsUNSzSO4RQY6KI_QvLyMIuMS2K9IRLBFcrWzhmoIUM_pyJVpDwKrcL8Umqg_-aNIg0YJ0mPfrkibK29kNOVJIj4gSE4RKahSflDr1ys1G11GHDHonAGASBeMLWZVvHDNPtA9hz0BJAKXAVGkBTU3Jd6hwQUPlZZTjtcIw8q4stql6aI91mXfVd8MZ3Jb-wPd8SppKdZpKGGNtf_B9R8qkamuv9dJGB-Pv_Ls9mQoGKORE_DQ4QWzWIenGYIGiGYq0pRR48Q8RH6-zzK3jVz17hvutsQEgnxfyguLRsYTOj10Hz7IXLZT_4NiZYztzLadAiR5PrKG4dDvag3uEmYx0qjh5wY98Ys5t0XRBMHYfckqyBImVaEmhZ33kC9fSoESHFkmPUMiQ-B9Y8vjrAxt6WimGCBlcMWe3V4vinqEBFrcAj_Z2gCrIkyJX58Xx054u2xxeRxLgyxYYzBsh0V7_Qm-lNFvI7PCbdSJDqsAe5ZG_K0DM2N_bqI2QVVEz-uTYzEa83uWn_W99VGtD06M34UpwV9U_YkkU_NiZiIaqWZ2ed6D-KhPHNmzQd6HfaJGbEhTXJjfdCh6d48pNjPBK04LdrwcAdJQSMC_-n4SF4Sys4RKbaRAML6uNJ3GUzjTFEa5YtddA25ZSydkJtjD4rjR1y8owhw9dhjmkZHuZgwigLhq30tS69VnPkiqbZUlOZ1OZCKhf9ebDzIqS3qCkNWd2LVDJyQy4KEPXRzkz47ONmUfjG8UpaDLZLiJrldmeWlaUi03wHFHSe8iMh8VJNIRJAjzmqBLqfwThsWdoOPb1sqyInUgNFq1CWdtBv3zyhMAlCjYk6_gCrtURMHV6ABmHIBv7QGUiBg2phFPagvBW3TSCQLONRkx0vFGY44WyPadaHSKCQdi1w3PY2U1S4LiUAIQcBQmgYZni9konwYQxHt-kQknnSLT9aVrDYe5pDA_8oeLIVdP5kuXeyC2ZbamfYQzle1TmzQhM1yXhROH5NPc1tHEjgxdY=w1437-h937',
    //캐주얼 학생
    'https://lh3.googleusercontent.com/fife/AAbDypBU0elHTgLv0VtVQlKsbcH9biuOB17Xs04DZ3jKZd0YSPokUFhzxNKC1Z53vrrbypwIoWNR8Lf7pfW5n1SYvGCdu9E__iT4pUWOdQbVEFqWw2ySQoIkVl9v1FPjXB5z1Pgi3KU9AwDJyikymmITZB1t3EsQYN8PGbG6fEqOmVgReGB5LBuYgz6_wBqo_kRTiN6wGZxZrWGSVmXd6WOeH-uk8yuzGkIxke47qezg6RIxbsPxwjoUO0DRs1yuo-sqjM8ZvTM1SFGb3qR6POu1AXhVjZNdcXg7U7u_90xLUiliqJbS1lSo0ZxT3IwwdhFwMU6QXi5jos_07gbVGt4WAgD3j5EhYSICY6jtAxsyR2vOYBTwvRNPWp6tGwv_fVTg-v8ROKSO6G-S0L1K0wNGmsR_sgJ25zPZGFKK-s5w-ux6CEtilB7Bx-PkndXK-jWoN-PLthyZ1aIJCc6vNtjQQec66pE6RpjM5yv8zk_uzKsgJDutRYYiT617UHJVLeEfVbDTciOI2DEG08MIHT5dRVuaBqjUm9r37H26ugrSatHFhIOVtIwJn__8ZpTP33f_OOVSp-4ip3Swbqc14hTcik9idr-Y9B-QUXIMP_-V0Sq1p3hAvFUDh1WfVIhoYtapr-6X8hqN-rXVJyyA6eME-MZZWuPbuwTuUMhE6VhHeopaARIODf8liLf8zQ_f6lt7BAu2Kid4qjYN9rqHTs2nJcGf-zZ5pT1BLaKLOFGi2_qDHaQIqLc1oJDhka2q0tglrdkXOCWA5n3GepZK3GPqPCFFCuBEHI4ClwY52Zp9K5sR2WON54Fl6YnVLM35AOGnI0SYUVYOHWJWC-g17C21Iecyj1UMpaDxDM2MQrAFEFaNsDCEWE_nOzNyKt60tmREWaBVR7bpahl66UHozrx49EpFrQkH3RcIRB04hg9Hv3_SZW56yhDzisY2eTpZU1OdlCuYcurmKF9Dw31-b4hSpebF6A70BR4UjgcMrO90jO-zzYirNVIOI1u44L_Y0N7P19v1Z6dw18_r3w4LpAOLFOgWO1GW-HEHQDwCPK_lY4e_uDY4EBE9Vde5FXNaDQ3Da0hGynu4KswQd5A5kzw0uObg2F91SJK4BV3F0C6dzSgG8L-19abJoIskcCcQcjMdSBbR0koNOcZd-nR0oOy_2gsv-Rnsz4aNbdTVDD5WR_m6LaeVgV67ZSUs-5Jd1Rlh1Hf0qacfRsArYnDo5uUfumoT5XEFC5e-qYBO2HKu4ksXNRHbK9bgHK7KL5CmC-qo_swSJNbaMHFEwrHpz6XVgc4PKEa3xceWisYodYGVV0NSq_lZ3AN_gHT-Snhpl0gRdtkGzJE78qg81payd6-iu0ODLFKMaLZjoIJAk5OqDX1kpy7Bcb_hFOqWhq8r3n5qTjqhUL2L6282jiH84u-0FyRs8aqZ4hN8RYfb2rG0BcJRgog1J10vKM-0qbzH3656puulOpw7I5uz5FfVIi8=w1920-h937',

    'https://lh3.googleusercontent.com/fife/AAbDypBtt3C_lcO6XwnbrnOX-LkJ-fusrjgiFQTvc9nQ27xv3lHEekbUjKV5pQsC-w7-RbUgwI_8jbPNJvLjG5sc62wcuT77wSyeEdgpADQSZywAVH7sQ74jNiyshJ7IRXO9yxsNgP8Enh1aLNH_E8i0HnbT6sx3uI73jsHdZrG96qcRMlip27qM9Ko0Ds-UfUJ-72OXhMveMeO-2qg_XLujs9cT4RarYiifL3PBYNml0kZS2hMBwf4JDPpCTJXDpO_nRU2p1FuVLkahPHZqO1TlmAfyFzIH4GF_zhIL1dUUv5oLu8lXnksAWLVqzWoZyzKQKPHztomvCTth3OpnSP2JqlzPgViHPVxs5bfYKGNMhBXW8euxzXKCC4MFB2lecH1tTvkuwjrBmRQT2wIrhgxBhTzLnrggZ_fK-a58Zf53X487kJhIKF1UiHIYRPW7W4Igavtn9IPkwVIpW17WzHp42GTtIT7T2d9MsVPxEQeT4BknOIeHgQmMdhKdGFIkT5qmWmokfLrwlf4XoVi8Ayh2XH-91aKuLhvapdzvZGgepDTQJxI49GZ2YiNg8KDqdfayvblIup9mkql5jVkQh7dcQMVHGRWqqF46tN0uA6hK9U_CfEb4NrKohaECUQrNuWbuuqnWMIHbcxl3hiUYLm6w9O9HCki9l0CGtBUDVOaYuZYv78QwgOsvNNlhqAflravk-oxNplBHZue8pyXO1MB2K7HWEJQ8Fb8rImuDMEQmj5mHYwyI76lgJ4tRg38DdADFM8WvY5ffCV4GIEyx43L860umLXZoLa5nUIWE22Cp74_eMIDK4sqY0KTMxSZOvVwBBV7NlUpQS-O3wkH9sgj06JwDnFb9EL8WGzu4v51BARUVuMpxg-7IP7IDI--BGjxVvQon4ClNcMbol6b6TXA44aX2baN-cksPNKopG8ftHASTtyAf3FAC0nFbD2SFVfs0e1VA3J4N6ls-iyJjUawXLRdMv3FpZ2FdgY7Pt2zrLM9MJOEtFgSz0d349AjKocCFzzcYTGQ1teOgKVpRu7Sl1eANorqtShYL-joASnLECs2NYnxi2R-__J1MK5vQKmG4aU8ThmirONS0e1FIABDI0nUEN2uHT_UUpnQmGk4C4hjAFQE9WwH-XKXOkQAksFN0cMOz5-2RSbH36T5a2l5KZ2QBg5XraBeTdJ1Q7j4rgNPHCQ3tTkmkufgHIg87QeNnwqaRlM1i9rfnXughxZRJJb0Px50oZ4-ThLDQ7EI6wVU4ZituWRJv7bZeO5_Fd537YjRr6rB1ydp66yfqHIMxzC7zhI19mED9ozo3XqRcVYMCPxhc4Hz3BYJGYkMRcwQfcdXeh7cfHhDj4X5W4iFF5OpYgt6bZLxHZOvMLiPbfu5EYbvtpOrCN008Wcu0MjID6NsZP1zfeWncxTJsLREikAluBE0cbG8ZwvJd_ozGO4W2QhIhX6WF14DXIYdQNXTr035EqlIs70sojxmcOJI=w1437-h937',
    //교수님st
    'https://lh3.googleusercontent.com/fife/AAbDypCTaWYDc95CYsz4CcGK01iqL9Dij8nyya6Xrjr4lq4mZVdi-T3K-QS9qAC1HElPmL-AeCH6tOjfGJvU623qy7zsQc2syJr61Hb0hhq7xd_ddK5RSgxQIfz39jHCxc--b0_U-VFPuV97HC4rAl1Bdmi0GOutu3aviFGfFsNLrissfSAiX0GYzzBrHXPurG3JTQN_Mqr-_eCDwCX5l2v1Smq8SlZOXrS9n7_LqJ0g0kjR0CLIrir_ePXefU1sgkFI_Bz7p2hjvC4pypIROdQYNP8NWewnHL8KSDeBifnp-RhD_W-5xap_8nS1PspnofDYB3kqWm7eQjQS4iTHiRzyHixINKOckycqTS6c8rrfiMkBiKxi76S2XyF7iPBsiEAdOKP8P3IGMdBkmf7LalByIV25IUum3ctHNCN5HLoBNIqaXUkEperEj6rlhMCAyZV1JBMZXGtg1eXW1oii1wzFt-Py7MwZewLjDsHYfV1TQcRpfaDmisaxW5E_w0gR3dFSWssBlhaLCzNz3baaGi-T95hKCwSH0kvtFqihBaojdLIvHajl-2ok3JWnpVy2GqPl5NVaT05m4FHBWawsUjqkOPHWJA6QMFcuSF-1x8vLDdDSlYGg3IXoNGy4xJ1IOcv0SJTUmWDcM5C6a_nMQK3fQ3qBnQtNnEuBgL8n9VBZFbIkjPMZKg3BwgVPRamqYuli5a0v1Kv2VoRKGig9uqOPUt52sEvCElOq-SYTmzpDh30Zy2mFDCBcskhTkFukWj5BDnu5qjHfG6J6jwHHYjpypdtDn3OCvyaFV9BwSsRM22KEdoHfhizxXY8HpNzKPcFmufp1DsJ0GauaWaTaG4hxyQB_ERdxP4HU0Eq63F8yQY3MoyjlkUgW5M2G-9IwZJQT0pnV7kMZ1QXz39jUFGWMHzGRJqlfA9EFSmZzvoKzYOb8lSgoKl-KYRXpsuJquzVQMHc462M0LytPb8ed-25lfRXjanO-P84MhFWfbGZwpaRi5nf0a22i8jyLB4mJ4VcAuAVNmccUnZddpaUTgDuq8B8KKTWL3iHRWMlGIRmAgJcpgkpjZO9loP2KT57RlmSxQQNVi1ecKZ3egT2EwumPU-2wAeSUX1i0mGEXvmIWbu1FaGLcDYzqxGvapPdar_r2RWwuK4kojQQo08gUE1Q_xnHiBxwsWZqTMsrTGS5n6tkfUynsBtN6Y_QTVL5MbQGfDXBmEEBIee3sFsb7GUnEirlz1IbW4JpQET0a4LwXFdYAVIex_epPWWziGAkeWOfc0L-omAr1SJFxMugx03pUJHKlYEQlSLSkLtMc-N5qEB5tOw5KWY-d1olq33Oaw6Oc6cKYY878ui2eVWfVUCNFbtE1GL5SfhvY4_CIGvmpLiMEhQxLE4VFiVfjhce3kPnqPgBey4hzi-zyHn1ES_iDV-ye9_6cX295LqBWN_p_0J4fv4GKWQ97a_cO2YoPvJZj9gbyvFtCJGgFhlOZcfk=w1437-h937',
    //여자
    'https://lh3.googleusercontent.com/fife/AAbDypD8Iy9S3MfvKy6Nakwt92MIFauJO1BkEO8yRVH3se_N-9OudOkRp6BOtNfcVThQYlO4_QUxf_w0rrcrymwV9-8NT3hTmrtcD42oo06eiTyeg2zbi41eJJBYbJ7Ba9YNWxuKixElz5ghXX3XBnv93kAY7l9T46y-bTam7qNv2N_5rW33b06aLrLA-lKAORjpRPJZyIJ8EwZIywuQxZ6J5woJp9wYJKgSd0ep9HSMUF9bbaXw37nr0N_7vVQbfbaSn_Jb54FaZLc83WvRkR-JoYWANURr6V0Nm-epSof7XsqLipYtyqsiDdS_RSLpGRTn9frOuEp5QiV4Nzy-aF8OOu5g03asB_3MaNcL7PYuyIQp4oClUpJafmXxaH8Vyxdw9z1t7h9PtbgN4GBWqG9N_j7feE7OzSEmvthdG8drWkU-pYtB9X2NtK_39SITiqDOaPzm4V4l3_j5IvXDdPTv45haCU1I2wkSScSrl37emJ6QGkJSWK2axyXjR8oaGEImd1NpJTmnohCdyVDwai6_wJvE96rb4S4LuMvWaCgOb777tlv8S-PWbWD6Ogae8YCKwJmSF4FPoT4dfn-Xf0Aj1F7vXTX6dMH59YGrtShzp5EKl2JdkxAJXKH-d-sqs3ygT8qHuMzD7vmE7yamdqkEZJH0F7YugGVk1UT6cw3IPVMCLW7cvd4I2B17N9ECfrp9TDFjSAnk5EPcBugaIPvX9NHKXR9k9w570BcSp4S2pFmthoAl-uI0eqW4Jammn9wo0FsCQzJAWEYmXUlXl4JBfT6v29Cdlqo3A90ttGNIppFh8cywRW3b5u0iKav4AXNPmPiezZj8W84D0uibc6bgIHIJTiE-liwiufDuckYgsYlZqU7b_FnZHxiH-mYkNpt6FvYzmBs8mlCHTC60FmhFT2-ZmbDrEyMtWLY0MkTj5as92yG2L7h4ax4Nv17tFvW1w3sYZoBKbOzzYbzyNKOy3l1LTqYVkERPEgQNDTNedOIGXR1huIwGKteMcfwMPXhMYe80YMLvzBZYYpHNfW2ZZpF1QCI6GFbREq0dOG8RJgmEiJGLUTB0qE2V8tBTLjT6kRD5rNv_wow5cqbRlHxYqXm3iSUYm10-KBeXxJia0Z4U-d2ZKflWxWO5EO14NQZQy9dpXtxM0bA3cTHPab7kGuPlhKKid8PXHAxTHRj_N3-uSvnX2N0izrSaSSsqXZl58KFBKyo8JaXFZYX-pVAUfwKuMe9DMveHgMVcDHxDCaokXtHGHtPJw2Mgmru_5Kkipj9Ar8rKlywF3TBpiU_8xhl7acDWVdE1ZvJ14VsaQzLq-JXhW5z4QUA08yemc_mXiPbTtICvZCdmlJMdbQTZqKhgyedAJ2pi9SkdHE9YIh-iUFqq2b6HKENDs8GtofPU-Vnq3-kYX_snoMQ4YLJCTqTScDYgLYqYAJxQZtDVarrJwnt4XVEByBCp6VprTT1XO_SCG5jrkBZs36jpYM0=w1437-h937',
    //여자 숏콧
    'https://lh3.googleusercontent.com/fife/AAbDypCxOx2W3LUneKaAIS3HgNvGhl3hf5ejsbmbWX3fo_WUKCb25DV0TcjvHvHMhn3dhtUy2c90fqDwuvNiqxq58vfD5TPXJChIi2EU7W8HjIzYZ2OHwe7f7alxSQ2-aDOCsJhHEd8WuSM85OvBOihDu19qMNK_IRXJOirirjsZXhWKhKMaClqhL_0B69q0foYbpUE8WmJ0dOdAi9SEtw52soKgnL4Wrv84YsW4fvW4t5_nvLgNXNsxR7fvgtkDU0YztPxJIebarsn9FjSuuJmXHU_Xyxzp6mi0npdsW26j46dnaSBWSLgsd1yboKWL-Ti0w3eUvGsSZIjRWwryIgHvxmcfNgyWI-4KG_M9VKxoKh7G_sX7oA-UhAv1X6PvWDvgcrN_uM4_E7OwknE45KdErJVX7VddiLOZvEAFFAJZ7VvMufF1NpTzRAr06ipFH7IoqSY7LZ1V6NmSw7aWsFadiLaNO02j-2FLbCiFCAQeO7u4abdn0b0C5eznj9oXjQrq_Cm_Ktsu4E7Gd-m7wnxXuWYeUG5eRmzW5BNB-nq6M6NZeGBDpn6x5Kl2D4HFPez3IMK-tTvBRMYP-NqY5iD9iv5KRloQAZIp1qp0omMpqqQt2XYZZJW4hH5FWxQ9ZB2-trmJfIBKixCqHVvbuvHUKbk9e6_uncqoPG9oz8e8UEGThDizeJCyxocrTm2_oMEEHgF7Yo30QEKDGij0VvSMu7vCjWkyTxDFPm3vsZOk5tle6MhMuLHSexrIa197qAIi0x6Nl8aNQn2TxiBfpC1dIoeM84exXrTMvIKUbF4S2s_09Ljpd_T1uT17Q6Helq2LbLPLjTNUBHZT5pWSpGEG0_ysiiuDCnrKpwl9i_yMNcP7Q75ynFKWvLKrBlFHtCCxLTUY6Xhd2vR61Hnyp5XKstbCABa53d-jiw6Xei1ZPzIwkKESimKkbhWeLaZglI2wI7grqWKAa5g9tEpRNXq5iZ5Bwf-2Dw4fezijFcWOwo7BbgDgo2V8MqGcTJ4-tVgX5AVh1FBtuJwqOBqmhJUHScZDnbrzchsU3_HlVeAy6VPqjEZf_ZEmIQXgLlg-z2ho4t1R3PLEVV6MRcLJXrU8krnlfhYaLupNSFIPqO6mi9xm7DEvgWHJ4H9TsNPtx-DEPFeft9Ho1t1WISeRWTF_aGvjyMuHkQ6nwokk5plddNTxRAyINj4v_Lhe0YFzYTe0068Sqd5HjHCCw1-UuIy_foHUaNk3291hDULv02c-osspgub3-hqICmaYADYZCTtnVF-l6fCpLNOU1b-hrerxjbNe5-kUCYwYBiReiXLelDsUukyS4N47-pF9RZbO8vmJAMbHPZ8hHEZ6OKvMZ9RpIoHLRVnsWBaAJnI4Sm-788CnpR3D7x2O2mM0R7InEK5ViB2LGEzqVg-8z61Ox2-za2wLtMTLRXWcPuSgxUzwY6hm0jaOpPHs7AWOaUG87jQURsd3Axnnl-fvIfUwxig=w1920-h937',
    //남자 롱깔
    'https://lh3.googleusercontent.com/fife/AAbDypAAseZ4JxczMP5A6QtLnWfRe6XMylgodQrS5EOwtlMJO2oboLvP4bOKJP0iFbVGO4s8yuBcUYzl1r0nEC1AePGup7uFZEyYIJdFS3io7vAyDTDFWD3vxygBfx5ilma2uxLsKL-nVXAn4JxmdXqr5YMiMY6VNZc5yY-HMiZnbKHb4gw1QqyYTMMcK0i-pBKxI6s5L_MsnPSolIcqCJcFzzNcptILSVn3M2oktmn4tYUAW7NiL7FmKsDq4hFmQw-y99fVa_PW2F7gMCVaxh5z5WfJwNYXZO56CUiTPIyoJD5GN7OIadF9yJT2bwJ_S63RFSZVVJmvqXjNZrFvxRrX6mIUCQhnJHQ3YTh4w4wzj-ZOzMM6L5MVG6hC11imTGprZfDZrC3vhQspZAGjgm898Je6-fpy8UIIjIUzmzuOFo7mXj84nb4z6y6YbHJCCYCr7OxzMRCrPXV-Zfw3Oj2cRB2Hkgpy6cpsT3cxVsnq8i63nj-rRtdbi5CDvhnY3yg6EsVBZk9DxKzxiKJ6VUw2hyNXTUkYANMAQCgaYmGYUo4fnEx-YgrIM_2wWZoaaSqHJsZ7-oSFLvkpI8Lxu4B_aa95tSuZk1-h2TJnstSwoCQX5u7KqkkClwFhqkcWhWECJarDKqgDqHMSl9znffHTbu1bdGP5PoOR48XCcihRdR8JRooRonLIZUs9Rhb_-bZRVE5tIVtPfpMwovpFm1GrKeFxj-hughAPbkxxL01KsuyYP_VzJdnovsq5qZ4cAMRvT19sLIPcxd5NacjcAd-n9TE9-UEa5e6ZMXUGLsA4AvIp3279PkwtSN1Jn3hNobAdlK0HPS_sA3WINkQL-fP-1lBFL4CmmgWfpRP4vze6PPz8HxkuMGVhZfOZpP1AiDWmRam1Ex5rHK4VXk1frXIktN5Yxry56xoMxBpm3_zTK40Nn5PpcSJTGH3Ent9NaxyiW-Vp2hEdBoBM80cmpyKI4AMO1ZdqqRO85PRn0h_0zoWs_Wd2q8xTeU81iwowpszfR2iOin29-v9GzfB31s4OZLXwNs4_T5a8uMep45qiqkbr6n_VmKpeEVL14YAi__TRVakNfcmHzjx10bXw3OEEIn0VgWQ70zT-CCe3EZvzDS77OXenocNcSzxamPWNQ3bk85Ena1FqUSfC7zEvQtEaRSzCzRMfsltor49GgOhCr2Gz9P13TB37FDbit2BSmehwuMqBzaZQTDtn0oy8UCwPrywEJ6z-IHZElX-nMFJUyuLZqb5oP3SqG5y6M7zcgjBbqyZAJiexgz0H1oPxIJ5i6Q_7sY6Qy7no429s-6sLr-7yduJUis0CsxaWooy-4bXBrqvnrEUArajz2jikYXMMnzVq5QugMrcq-vtSl4ieeZZ1U4yh9n2sKxiKip57WwWUcfjFgCYt4j_R6KaYvY-k2FzQdQl1tfP6PJEFYo3dzvKFoxVJAx6wFnonLtUMhfgBpnXbIVQpmq_MMa8k_RQ=w1437-h937',
    //남자 섹시 포멀
  ];
  static List<String>etc=["https://lh3.googleusercontent.com/fife/AAbDypBVgjMvXYtHQm7XtLIPm5lQBnKf2e2yMRjw7BB1TtdwTRWxdPvj3iJT9fxJl8VcN_emk0yj64OiVWAwyQW0gVqakn0rMSsOMWd-y2-YPacgbMnCfOGQ6gQdEZTshDQhaBzOIKOxtTOSOCqpTLPNWV0fYJ5GGRaXV3QHSI97lTXjDsLWUtlo9HiyuhtcJKbqXceD4oxDOU-FxtsqzIzg8UDUleKOZ8iV9NKMjETidxvzRbpMV2KBHc6Z8Rknln_kD-lgSSzJZEiDeyBdxOlo_shMc9ZQdRGjzFBRudHwLhU7NulFqkMUJB5IbxMB5zX6lGhKCvQumh5Insy4WeChu9zpQBB1YqUJ3r1vDgDOdOtuUQzzCxop1eYid6nFHixrduo2wuLJvZpcK__8UBjNfT84L3S8FDft5EhTvJOdmjuW3zT1cyLxdHzfJWRvp9KqWYUh1hlPAw89kDJfKl7A1q55bsNmqwQ6GSjsqc2Ygv5aB1xvZCMzTSkRkFbFhqh-shR9VoYAw4hj0Wc0HEwjqL-7cgGjd1rLRG1T4B05ZQpdivGvGGcwgm4Pec7xDjl9wJphNTPgIxqJLBg6wrSZyKN_3a-YT44XNWiprbWLICbj4JQAuMyYO92QtUtW1Rz76rztcKRE4Nn4sIXtMcJPrSxsgPvUH13mLl2aZbHuv3MOshE8Tv91wUeKGtiHpxA4O6D6VGU9xoRlv7AZ6-JKcspcS2rlNIUxy8EkflUXlVqyY51Avzj3awBvJvCj08yx0H2n7O5hSG9t0VJrf1DVTvEyv76sptFzpeirWhJgqYEofLaCdD3NlEZeEtFjf6rRfnivwrQz8D9urGIqD2eCFt3GRutHUePrWbBl4owVmTZum1XrCStHovHeEHvwmx6gkle8u6AD05eLvezAiTzA3J2jNnHAF1sQHaxgcEWqvgwnt72EsfBtAK5xspBnwvAWsxQe8FsfKzF_wV99GX2aObjgY8lC_0TdwrjAPXcovrfuleKtPMHgzgy-KH4xs2zTWexUpkAHS3vUJ7u0iiVmgJyyJjPjTONUfkh0IMf3oPjP-GoB4dFN3QBNp5VFhlclEXKbCq_VxE1WROG1n-4_uY060ivxBPMwsb4l0c9AtrSaHNeQmNk9eorgSXi7DrKo-gtQ6yg366mysV0EuNsMe8jf_ksW_n4OwLGJxC6UtaLGHzzDccR9khAehor-hGtlApdGPgnpR5yXGcuBhOzZu4hY9MyZazHwagLRRCGE1kUh1Bgi8_18R2-LUtT0bwI7PvGLJclwBF7q9wedoVIfmT4blv1oWGSFsZ5lsM1a_OH2yv6-VKu8NqtllPFKE7mqv2-0L4uSqr7JyZYN7lBejNoF3zUhE48_j9Q-XqOBhzUolRw8Mv1ZcsxPfJ1vLoreMCU5ZgRKQS50FvBvMh8v7lW0ljUOy0gpJkczhP5fAo3YCWsbHURzSlig1nqkDqlgMWsumQN-9bt8dSLQ5fw=w1437-h937",
    "https://lh3.googleusercontent.com/fife/AAbDypBMgOGkxh6cJ1lVmBpSG0-ZN4xkHP03FusTrMcK4BxKHXLSeFgbzXAu4Xv1VQa-GiCH1uhcptIXoQDvl-NO1q49elmSZS0TYArdejNG98BjSbM_Y2KaJWdcTePQ6imIvAKLiP7u_qB0H_YVDxXxrg1pGAu2UB519rBwB4H2Ar8XUj9auohc2NlHrI7IX9byJK06UzqIZuApmt7Rtzr-deXzSm2JZIdP598XJDLiR4tciwdlM5eF5meKEtTQVfdu1yu71WC0sOf-uIXyfeunkZ8HlJpEAI4PAQ03R0pMJGAtToZIts7O-iVHXlLLRkFR9P4_fMNMVgg4A1P4aBmBd9vV2IJrh64iyqv9L5hdgv1ylrgfMFjFXMd2gO0o7i9RPbo4dPoIi1-J_JNGHudNvEVcFKISB0k8SsG2vG0_QzPK19p2ffDXi-2hmAsHpkQgm-DzSrKaRgDonbFKW9rabk5CkJ_VgFwMIGnm43K7o8ibvuRLrvdfKZXcutqeqd6BbpRXHROzjoU_HZ3dXZRbkLGF_mvrAYZDWV2t9NVg3ZI2C1S5ZOD2R5IrNnusYgHkfpLjVQ1KQAHhfDuidVQxsEdRVlIw9iFRdS7bv4dqmnLihIrh8iZ3Jf9HG_oyTT09aAJ14xrBLk806JVaWrEcte-pcdmYE2ggbBVF9hUkt10Ulj8UdwiQKrSXqQXoEJP9kJWUPuhSSlU2A-MZQhX_PjJBsBTlCdhh1rDlS_v6D7kgpVdeYxdXCPS53YDCWi9M01ve4M0gHSPPZWlgwDSmynzHK8AIzm7FoTmbZuaMlSwnNlg2eHbZI36fZ506jeWOTBZdBoRK7p1BgoXPs-Cop-6xxsN4VDYjr3r1tPD_fyiHtDuOyew79qXMeOsRCuoWUk6RYo0UyoYIGU7HAMsd2eyVmJbokehBSyP0SkKtJ8K8SrYT3lPV8D0NEyxp71_PKOiNQYWiiTsfXT1vkZbngLM3DKpL7_0d9LpHOauzjPI5rhj3l8zeOahf5M77ePmIvOXY6HD-8NqNMf1L6AERPVbTQCxSGT8JZpamhdlJR8H-mx1gTSlgdpwCMwhI3KcGDs-N50CAr2iz0HvRBesXFk74OcgBS8t0wZyIf0YBi0uyrJZJ-70BNdu2RZrmeXqQZOKSzQ9kUSnsbaxTgYD2Zqt__yG6AM_l9ceCo0KniktBTr8Zpz64l6hHoAnpYtfa4NzO2b39Rk_7WwDuuvwE3PrEMnDW5JLcZ3leLo0e8KreNEeSVrdHEKmHQq9P40eozEj1gzXiqxMylVUfaXg2vSK71AgcxhZ7kkfEjFBglXkGXm7B0_D2rQS3jYiPi6yMRtWw3mE3YLBWK_tlmwMKpTeP5n9NFhwe7mI7SM1vW5RFhYbTupwWf_XVNijkKslbVVHvyAG_hwQe0A_rm75KdvvT6CCsJBobMTIZgzSm4-dvJZqSwzmtZe3sFlHGd_-CprT7uRIqdSQJTUouOY0=w1437-h937",
    //여자 무스탕
    "https://lh3.googleusercontent.com/fife/AAbDypA_OzjBoKoY-Ol0AJLiANLopHCzx5LmhQUcqM5MPBFxp2MHvdIE2FTgR9OBSJhBBunqK_M26oaVXNLXJ17KNe6YfNDRl4L3JvOpPUzg6Tt-4XmrAMpz3mHS1S73p8WqzlbzFooqF4Em6G5rL42CRWa6AdHrxGQ47IAD0ZIWngSJXzT5jgtXMP0nKr7g8sKNW_qICEIXQ9GNUkDjRlD2Icik7Hn8Gy905UWryJXd8YZSKvZTLFYGNnqj2H2dlz00iSpVdsaxq7fMuwhQT2jdxVLwqKsMNdC-qKRRtt0AI1U1SJu24iGNZMaa8RmFuKt_PoGpeh-NorxQGKpN2z56bVRHF26SlBa3Z9Lw_YS-1uIOjhK9YZiw71ioG_1LSeAU5AFZt7HoDhFmi2S9Wsc_hdE6GLtEHlP3o7L6MykomDWQwqCmr-ur25EzVHrX4ztjRMU1-MjoGmzfxrjsNgSYp5sojCWr5HZTH8qqlCfbUB73neQtOi1h1JC82-KFcx53SVyFOE18viiWEP1Xw6-DTUP2-Gm59Q2l9RHMFkNNZNFObqUGLVCSE3TuFKgCoLcgEeRHwzENX2BgcCwF0--pOSgsxHJgnd5toa4gFSv4ywcEfxCshPnanEwnLB7I6LAFYrNHYAqpV-6QApK9RLgG0ns8oMhoEdUzzCdEQBKIlDYVG7O2WfhZc9khDF8p3FsVDmZjoHlMOdRtRsaFn4ckgYtu4H_Z88fuYf4cbRIbBgUY4BB9mVS71df2VotORHCcXG77WwcJH7GJ6jVNXZAHe414SMpKGamxrekphoZGgOdvyUcx0qcGwVTxKr4leRmaqgSrZBUDom3QNyOuf2MEYik3fCsZ9iOFA5UFL-hS6GVmqBvElReJT5nNLJRsrdfn8A8g50kzpez4SWnylDBlLFp1_KkTI658Q2SomqAMfgYBrfORQpe7apJ43erkGYuhy5VL1aRFF8WpcLxJBrzyhHbkaCMJfuTrSGcLSwbzBwQ8DXaeeGmP6sdOp0FjS4kSU0r4Nb3hbFFCiEvsOE_KA_PAEAmIhtxXMpVOn2mFttuUeBBhEaYHE7MHSppyQ8DdgWLxw_QYrSko-2kEBDEyjb1omRGoebWBFTDyh9X-Do2SnTt5Ldyro4dnttk0CsV4Jcn24OcK58A3C2oWKo3-W0prv4J6pgub7BAdzxH-6r1zxxoAW2Zfv9CWaTkGCFSlF9l3Y0H4LBnijuhbCchoDG2mpakzB_5xnHcVhRDVXJ1OudPWqTRmIuHGIbOkbbS7WIEEjE9v445sCoe39dxOmehB-S5RNOhcLGpGat3JJ6_TzHt9_L8qikVKoDVflYeUbr3u2HTXB9SQrnXbKvYA6hAewIf0x7HBrLyZEUFcIPHLLrCK8QM5IakbhrzWGu7NwMOK_YvgtGD4_kmnNEWen7Bot7ZkzKqzDKenmtSLNq7Ez3a-KRu4tInG8GvKbVzqSSjH7fLR4qnrRzTMw-0=w1437-h937"];
    //여자 폴리스
  static List<String> ReCom=['패딩,무스탕류의 아우터와 두꺼운 이너웨어','롱코트와 함께 따스한 이너웨어','숏 아우터류와 함께 이너웨어 따뜻하게 입어주세요!',"오늘은 롱패딩만 입어야 되요...",'얼죽코 아시죠?'];
  static List<String> paddingCom=['오늘 같이 추운 날 패딩을 센스입게 입어보는 거 어때요?','오늘은 너무 추워요.. 롱패딩을 꼭입어야 할 것 같아요...'];
  static List<String> coatCom=['실내에 있는 시간이 많다면, 멋지게 코트 어떠신가요?','얼죽코 아시죠?'];
  static List<String> otherCom=['파티에 가시나요? 그렇다면 오늘 의상으로 어떠신가요?','오늘은 너무 추워요.. 롱패딩을 꼭입어야 할 것 같아요...'];
  static List<String> ReComEn=['Padding, Shearling Jacket type outerwear and thick innerwear','Please wear innerwear warmly with short outerwear!',
    'You only have to wear long padding today...','Even if you freeze to death, your coat'];
  static List<String> coatComEn=['If you spend a lot of time indoors, how about a stylish coat?','Even if you freeze to death, your coat'];
  static List<String> paComEn=['How about wearing a down jacket on a cold day like today?',"It's so cold today... I think you'll have to wear long padding..."];
  static List<String> etcComEn=["Are you going to a party? Then how about today's outfit?"];


}
class UserDB//최지철 DB<->앱간 통신클래스임당~
{
  static final name="name";
  static final id="id";
  static final pw="pw";
  static final sex="sex";
  static List<String> getColumns()=> [name,id,pw,sex];
}
class AlarmState{//최지철
  static int AlarmCount=0;
  static  var AlarmInfo = List.generate(7, (index) => [1,0,"","",""],growable: false); //[][0]은 시간 [][1]은 분 [][2]는 AmPm [][3]은 매주반복 [4]
  static List<bool>AlarmOnOff=[true,true,true,true,true,true,true,true];
  static  bool AM = true;
  static  bool PM = false;
  static  bool MakeAlarm=false;
  //주간 반복 여부
  static  bool repeat = false;

  //설정한 시간, 분
  static int hour = 1;
  static  int minute = 0;
  static   int _i=0;

  //요일 설정 여부 값
  static  var day = List.generate(7, (index) => [false,false,false,false,false,false,false],growable: false);
  static  var dayString = List.generate(7, (index) => ["","","","","","","","",""],growable: false);
  static String ?AmPm;
}
class DarkMode{ //최지철
  static bool DarkOn=false;
  static bool Am=false;
}
class Language{ //최지철
  static String DarkSubtitle='다크모드 변경';
  static bool En=false;
  static bool Kor=false;
  static bool CN=false;
}
class LoadingData{
  static bool Lol=false;
}

class KakaoData {// 신근재 _카톡 토큰 및 유저 정보
  static bool Token = false;

  static String user_gen = '';
  static String user_name = '';
  static String userImage_URL = '';
  static String user_email = '';
}

class Model{ // 이재민,최지철 컨디션에 따른 아이콘 불러오기
  static DateTime Now=DateTime.now();
  static String datenow= DateFormat('H').format(DateTime.now());
  static int datenowInt=int.parse(datenow);
  static bool snow=false;
  static bool rain=false;
  static bool thunder=false;
  static bool sunny=false;
  static bool sunnynight=false;
  static bool cloudy=false;
  static bool dust=false;
  static bool Night=false;

  Widget ?getWeatherIcon(int condition) {

    if(condition < 300)
      {
        Night=true;
        thunder=true;
        return Image.asset('assets/weather/Thunder.png', // 비천둥
            height: 40,width: 40,

        );
      }else if(condition <600){
      snow=true;
      return Image.asset('assets/weather/Snowycloud.png', // 눈옴
        height: 40,width: 40,
      );
    }else if(condition==800){
      sunny=true;
    return Image.asset('assets/weather/Sunny.png', // 날씨 좋음
      height: 40,width: 40,
    );
    }else if(condition<=804){
      cloudy=true;
      return Image.asset('assets/weather/Cloud2.png', // 구름낌
        height: 40,width: 40,
      );
    }
  }
  Widget ?getAirIcon(int index)
  {
    if(index==1){
      return Image.asset('assets/dust/good.png',
          width: 30,
          height: 30,
      );
    }else if(index==2||index==3){
      return Image.asset('assets/dust/normal.png',
        width: 30,
        height: 30,
      );
    }else if(index==4||index==5){
      return Image.asset('assets/dust/bad.png',
        width: 30,
        height: 30,
      );
    }
  }
  Widget ?getAirCondition(int index)
  {
    if(index==1){
      return Text(
        Language.En?'Great!':'매우좋음',
        style: TextStyle(
          color: Colors.cyan,
          fontWeight: FontWeight.bold,
        ),
      );
    }else if(index==2){
      return Text(
        Language.En?'Good!':'좋음',
        style: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      );
    }else if(index==3){
      return Text(
        Language.En?'Not Bad':'보통',
        style: TextStyle(
          color: Colors.white60,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    else if(index==4){
      return Text(
        Language.En?'Bad!':'나쁨',
        style: TextStyle(
          color: Colors.deepOrangeAccent,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    else if(index==5){
      return Text(
        Language.En?'F**** Bad!':'매우나쁨',
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      );
    }
  }
}