.class public Landroid/telephony/MzPhoneNumberUtils;
.super Ljava/lang/Object;
.source "MzPhoneNumberUtils.java"


# static fields
.field private static final CHINA_COUNTRY_CODE:I = 0x56

.field public static final CHINA_PHONE_NUMBER_SIZE:I = 0xb

.field private static final CN_IP_PREFIX_LENGTH:I = 0x5

.field private static final COUNTRY_CODES:[Ljava/lang/String;

.field public static final INDIA_COUNTRY_CODE:Ljava/lang/String; = "91"

.field public static final INDIA_COUNTRY_ISO:Ljava/lang/String; = "IN"

.field public static final INDIA_PHONE_NUMBER_SIZE:I = 0xa

.field private static final IP_DIAL_NUMBER:[Ljava/lang/String;

.field public static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field public static final POLAND_COUNTRY_CODE:Ljava/lang/String; = "48"

.field public static final POLAND_COUNTRY_ISO:Ljava/lang/String; = "PL"

.field public static final POLAND_PHONE_NUMBER_SIZE:I = 0x9

.field private static final SPECAIL_NUMBER_OF_CHINA:[Ljava/lang/String;

.field private static final SPECAIL_NUMBER_OF_CHINA_RES:[I

.field private static final TAG:Ljava/lang/String; = "MzPhoneNumberUtils"

.field private static final VDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/16 v0, 0x41

    new-array v0, v0, [Ljava/lang/String;

    .line 41
    const-string/jumbo v1, "10000"

    aput-object v1, v0, v3

    .line 42
    const-string/jumbo v1, "10010"

    aput-object v1, v0, v4

    .line 43
    const-string/jumbo v1, "10011"

    aput-object v1, v0, v5

    .line 44
    const-string/jumbo v1, "10050"

    aput-object v1, v0, v6

    .line 45
    const-string/jumbo v1, "10086"

    aput-object v1, v0, v7

    .line 46
    const-string/jumbo v1, "10087"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "12121"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "12315"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "12348"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "12358"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "12369"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "12365"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "12366"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "12310"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "12333"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "12345"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "4008111111"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "4006789000"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "4006781515"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "4009881888"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "8008208388"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "8008108000"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "4008108000"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "8008209868"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "4008209868"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "4008305555"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "11185"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "95519"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "95522"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "95528"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "95533"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "95555"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "95556"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "95558"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "95501"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "95502"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "95505"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "95508"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "95509"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "95510"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "95511"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "95512"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "95515"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "95516"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "95518"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "95559"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "95561"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "95565"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "95566"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "95567"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "95568"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "95569"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "95577"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 96
    const-string/jumbo v1, "95580"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 97
    const-string/jumbo v1, "95585"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 98
    const-string/jumbo v1, "95586"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "95588"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 100
    const-string/jumbo v1, "95589"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 101
    const-string/jumbo v1, "95590"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "95591"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 103
    const-string/jumbo v1, "95595"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 104
    const-string/jumbo v1, "95596"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 105
    const-string/jumbo v1, "95598"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 106
    const-string/jumbo v1, "95599"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 107
    const-string/jumbo v1, "4007883333"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 40
    sput-object v0, Landroid/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA:[Ljava/lang/String;

    .line 110
    const/16 v0, 0x41

    new-array v0, v0, [I

    .line 111
    sget v1, Lcom/flyme/internal/R$string;->specail_number_dianxin:I

    aput v1, v0, v3

    .line 112
    sget v1, Lcom/flyme/internal/R$string;->specail_number_liantong:I

    aput v1, v0, v4

    .line 113
    sget v1, Lcom/flyme/internal/R$string;->specail_number_liantong:I

    aput v1, v0, v5

    .line 114
    sget v1, Lcom/flyme/internal/R$string;->specail_number_tietong:I

    aput v1, v0, v6

    .line 115
    sget v1, Lcom/flyme/internal/R$string;->specail_number_yidong:I

    aput v1, v0, v7

    .line 116
    sget v1, Lcom/flyme/internal/R$string;->specail_number_yidong:I

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 117
    sget v1, Lcom/flyme/internal/R$string;->specail_number_tianqi:I

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 118
    sget v1, Lcom/flyme/internal/R$string;->specail_number_xiaofeizhe:I

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 119
    sget v1, Lcom/flyme/internal/R$string;->specail_number_sifa:I

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 120
    sget v1, Lcom/flyme/internal/R$string;->specail_number_jiage:I

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 121
    sget v1, Lcom/flyme/internal/R$string;->specail_number_huanbao:I

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 122
    sget v1, Lcom/flyme/internal/R$string;->specail_number_zhiliang:I

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 123
    sget v1, Lcom/flyme/internal/R$string;->specail_number_dishui:I

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 124
    sget v1, Lcom/flyme/internal/R$string;->specail_number_jubao:I

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 125
    sget v1, Lcom/flyme/internal/R$string;->specail_number_laodong:I

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 126
    sget v1, Lcom/flyme/internal/R$string;->specail_number_gongyi:I

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 127
    sget v1, Lcom/flyme/internal/R$string;->specail_number_shunfeng:I

    const/16 v2, 0x10

    aput v1, v0, v2

    .line 128
    sget v1, Lcom/flyme/internal/R$string;->specail_number_zaijisong:I

    const/16 v2, 0x11

    aput v1, v0, v2

    .line 129
    sget v1, Lcom/flyme/internal/R$string;->specail_number_quanyi:I

    const/16 v2, 0x12

    aput v1, v0, v2

    .line 130
    sget v1, Lcom/flyme/internal/R$string;->specail_number_federal:I

    const/16 v2, 0x13

    aput v1, v0, v2

    .line 131
    sget v1, Lcom/flyme/internal/R$string;->specail_number_ups:I

    const/16 v2, 0x14

    aput v1, v0, v2

    .line 132
    sget v1, Lcom/flyme/internal/R$string;->specail_number_dhl:I

    const/16 v2, 0x15

    aput v1, v0, v2

    .line 133
    sget v1, Lcom/flyme/internal/R$string;->specail_number_dhl:I

    const/16 v2, 0x16

    aput v1, v0, v2

    .line 134
    sget v1, Lcom/flyme/internal/R$string;->specail_number_tnt:I

    const/16 v2, 0x17

    aput v1, v0, v2

    .line 135
    sget v1, Lcom/flyme/internal/R$string;->specail_number_tnt:I

    const/16 v2, 0x18

    aput v1, v0, v2

    .line 136
    sget v1, Lcom/flyme/internal/R$string;->specail_number_debon:I

    const/16 v2, 0x19

    aput v1, v0, v2

    .line 137
    sget v1, Lcom/flyme/internal/R$string;->specail_number_ems:I

    const/16 v2, 0x1a

    aput v1, v0, v2

    .line 139
    sget v1, Lcom/flyme/internal/R$string;->specail_number_renshou:I

    const/16 v2, 0x1b

    aput v1, v0, v2

    .line 140
    sget v1, Lcom/flyme/internal/R$string;->specail_number_taikang:I

    const/16 v2, 0x1c

    aput v1, v0, v2

    .line 141
    sget v1, Lcom/flyme/internal/R$string;->specail_number_pudong:I

    const/16 v2, 0x1d

    aput v1, v0, v2

    .line 142
    sget v1, Lcom/flyme/internal/R$string;->specail_number_jianshe:I

    const/16 v2, 0x1e

    aput v1, v0, v2

    .line 143
    sget v1, Lcom/flyme/internal/R$string;->specail_number_zhaoshangbank:I

    const/16 v2, 0x1f

    aput v1, v0, v2

    .line 144
    sget v1, Lcom/flyme/internal/R$string;->specail_number_huaan:I

    const/16 v2, 0x20

    aput v1, v0, v2

    .line 145
    sget v1, Lcom/flyme/internal/R$string;->specail_number_zhongxin:I

    const/16 v2, 0x21

    aput v1, v0, v2

    .line 146
    sget v1, Lcom/flyme/internal/R$string;->specail_number_shenfazhan:I

    const/16 v2, 0x22

    aput v1, v0, v2

    .line 147
    sget v1, Lcom/flyme/internal/R$string;->specail_number_yongan:I

    const/16 v2, 0x23

    aput v1, v0, v2

    .line 148
    sget v1, Lcom/flyme/internal/R$string;->specail_number_tianan:I

    const/16 v2, 0x24

    aput v1, v0, v2

    .line 149
    sget v1, Lcom/flyme/internal/R$string;->specail_number_guangfazhan:I

    const/16 v2, 0x25

    aput v1, v0, v2

    .line 150
    sget v1, Lcom/flyme/internal/R$string;->specail_number_huatai:I

    const/16 v2, 0x26

    aput v1, v0, v2

    .line 151
    sget v1, Lcom/flyme/internal/R$string;->specail_number_yangguang:I

    const/16 v2, 0x27

    aput v1, v0, v2

    .line 152
    sget v1, Lcom/flyme/internal/R$string;->specail_number_pinganbaoxian:I

    const/16 v2, 0x28

    aput v1, v0, v2

    .line 153
    sget v1, Lcom/flyme/internal/R$string;->specail_number_pingancaibao:I

    const/16 v2, 0x29

    aput v1, v0, v2

    .line 154
    sget v1, Lcom/flyme/internal/R$string;->specail_number_hezhong:I

    const/16 v2, 0x2a

    aput v1, v0, v2

    .line 155
    sget v1, Lcom/flyme/internal/R$string;->specail_number_yinlian:I

    const/16 v2, 0x2b

    aput v1, v0, v2

    .line 156
    sget v1, Lcom/flyme/internal/R$string;->specail_number_renbao:I

    const/16 v2, 0x2c

    aput v1, v0, v2

    .line 157
    sget v1, Lcom/flyme/internal/R$string;->specail_number_jiaotong:I

    const/16 v2, 0x2d

    aput v1, v0, v2

    .line 158
    sget v1, Lcom/flyme/internal/R$string;->specail_number_xingye:I

    const/16 v2, 0x2e

    aput v1, v0, v2

    .line 159
    sget v1, Lcom/flyme/internal/R$string;->specail_number_zhaoshang:I

    const/16 v2, 0x2f

    aput v1, v0, v2

    .line 160
    sget v1, Lcom/flyme/internal/R$string;->specail_number_zhongguo:I

    const/16 v2, 0x30

    aput v1, v0, v2

    .line 161
    sget v1, Lcom/flyme/internal/R$string;->specail_number_xinhua:I

    const/16 v2, 0x31

    aput v1, v0, v2

    .line 162
    sget v1, Lcom/flyme/internal/R$string;->specail_number_minsheng:I

    const/16 v2, 0x32

    aput v1, v0, v2

    .line 163
    sget v1, Lcom/flyme/internal/R$string;->specail_number_anbang:I

    const/16 v2, 0x33

    aput v1, v0, v2

    .line 164
    sget v1, Lcom/flyme/internal/R$string;->specail_number_huaxia:I

    const/16 v2, 0x34

    aput v1, v0, v2

    .line 165
    sget v1, Lcom/flyme/internal/R$string;->specail_number_youzheng:I

    const/16 v2, 0x35

    aput v1, v0, v2

    .line 166
    sget v1, Lcom/flyme/internal/R$string;->specail_number_lianhe:I

    const/16 v2, 0x36

    aput v1, v0, v2

    .line 167
    sget v1, Lcom/flyme/internal/R$string;->specail_number_doubang:I

    const/16 v2, 0x37

    aput v1, v0, v2

    .line 168
    sget v1, Lcom/flyme/internal/R$string;->specail_number_gongshang:I

    const/16 v2, 0x38

    aput v1, v0, v2

    .line 169
    sget v1, Lcom/flyme/internal/R$string;->specail_number_taibao:I

    const/16 v2, 0x39

    aput v1, v0, v2

    .line 170
    sget v1, Lcom/flyme/internal/R$string;->specail_number_dadi:I

    const/16 v2, 0x3a

    aput v1, v0, v2

    .line 171
    sget v1, Lcom/flyme/internal/R$string;->specail_number_jianbao:I

    const/16 v2, 0x3b

    aput v1, v0, v2

    .line 172
    sget v1, Lcom/flyme/internal/R$string;->specail_number_guangda:I

    const/16 v2, 0x3c

    aput v1, v0, v2

    .line 173
    sget v1, Lcom/flyme/internal/R$string;->specail_number_renbaogufeng:I

    const/16 v2, 0x3d

    aput v1, v0, v2

    .line 174
    sget v1, Lcom/flyme/internal/R$string;->specail_number_dianli:I

    const/16 v2, 0x3e

    aput v1, v0, v2

    .line 175
    sget v1, Lcom/flyme/internal/R$string;->specail_number_nongye:I

    const/16 v2, 0x3f

    aput v1, v0, v2

    .line 176
    sget v1, Lcom/flyme/internal/R$string;->specail_number_meizu:I

    const/16 v2, 0x40

    aput v1, v0, v2

    .line 110
    sput-object v0, Landroid/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA_RES:[I

    .line 179
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 180
    const-string/jumbo v1, "12593"

    aput-object v1, v0, v3

    const-string/jumbo v1, "17951"

    aput-object v1, v0, v4

    const-string/jumbo v1, "17911"

    aput-object v1, v0, v5

    const-string/jumbo v1, "17910"

    aput-object v1, v0, v6

    const-string/jumbo v1, "17909"

    aput-object v1, v0, v7

    const-string/jumbo v1, "10131"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 181
    const-string/jumbo v1, "10193"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "96531"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "193"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "12589"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "12598"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "12520"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 179
    sput-object v0, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    .line 185
    const/16 v0, 0xe5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "86"

    aput-object v1, v0, v3

    const-string/jumbo v1, "852"

    aput-object v1, v0, v4

    const-string/jumbo v1, "853"

    aput-object v1, v0, v5

    .line 186
    const-string/jumbo v1, "886"

    aput-object v1, v0, v6

    const-string/jumbo v1, "93"

    aput-object v1, v0, v7

    const-string/jumbo v1, "355"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "213"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "684"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "376"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "244"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "1264"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "672"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 187
    const-string/jumbo v1, "1268"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "54"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "374"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "297"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "61"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "43"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "994"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "973"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "880"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 188
    const-string/jumbo v1, "1246"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "375"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "32"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "501"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "229"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "1441"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "975"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "591"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "387"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 189
    const-string/jumbo v1, "267"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "55"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "1284"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "673"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "359"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "226"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "95"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "257"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "855"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 190
    const-string/jumbo v1, "237"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "238"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "1345"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "236"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "235"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string/jumbo v1, "56"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "61"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "61"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string/jumbo v1, "57"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "269"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 191
    const-string/jumbo v1, "243"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string/jumbo v1, "242"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string/jumbo v1, "682"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string/jumbo v1, "506"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string/jumbo v1, "225"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string/jumbo v1, "385"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string/jumbo v1, "53"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string/jumbo v1, "357"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string/jumbo v1, "420"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string/jumbo v1, "45"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 192
    const-string/jumbo v1, "253"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string/jumbo v1, "1767"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string/jumbo v1, "1809"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string/jumbo v1, "593"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string/jumbo v1, "20"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string/jumbo v1, "503"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string/jumbo v1, "240"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string/jumbo v1, "291"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string/jumbo v1, "372"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 193
    const-string/jumbo v1, "251"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string/jumbo v1, "500"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string/jumbo v1, "298"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string/jumbo v1, "679"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string/jumbo v1, "358"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string/jumbo v1, "33"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string/jumbo v1, "594"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string/jumbo v1, "689"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string/jumbo v1, "241"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 194
    const-string/jumbo v1, "995"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string/jumbo v1, "49"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string/jumbo v1, "233"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string/jumbo v1, "350"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string/jumbo v1, "30"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string/jumbo v1, "299"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string/jumbo v1, "1473"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string/jumbo v1, "590"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string/jumbo v1, "1671"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 195
    const-string/jumbo v1, "502"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string/jumbo v1, "1481"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string/jumbo v1, "224"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string/jumbo v1, "245"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string/jumbo v1, "592"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string/jumbo v1, "509"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string/jumbo v1, "379"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string/jumbo v1, "504"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string/jumbo v1, "36"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 196
    const-string/jumbo v1, "354"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string/jumbo v1, "91"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string/jumbo v1, "62"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string/jumbo v1, "98"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string/jumbo v1, "964"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string/jumbo v1, "353"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string/jumbo v1, "972"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string/jumbo v1, "39"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string/jumbo v1, "1876"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string/jumbo v1, "81"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    .line 197
    const-string/jumbo v1, "962"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string/jumbo v1, "76"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string/jumbo v1, "77"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string/jumbo v1, "254"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string/jumbo v1, "686"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string/jumbo v1, "850"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string/jumbo v1, "82"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string/jumbo v1, "965"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string/jumbo v1, "996"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string/jumbo v1, "856"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string/jumbo v1, "371"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    .line 198
    const-string/jumbo v1, "961"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string/jumbo v1, "266"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string/jumbo v1, "231"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string/jumbo v1, "218"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string/jumbo v1, "423"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string/jumbo v1, "370"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string/jumbo v1, "352"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string/jumbo v1, "389"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string/jumbo v1, "261"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    .line 199
    const-string/jumbo v1, "265"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string/jumbo v1, "60"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string/jumbo v1, "960"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string/jumbo v1, "223"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string/jumbo v1, "356"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string/jumbo v1, "692"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string/jumbo v1, "596"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string/jumbo v1, "222"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string/jumbo v1, "230"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    .line 200
    const-string/jumbo v1, "269"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string/jumbo v1, "52"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string/jumbo v1, "691"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string/jumbo v1, "373"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string/jumbo v1, "377"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string/jumbo v1, "976"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string/jumbo v1, "1664"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string/jumbo v1, "212"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string/jumbo v1, "258"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "264"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string/jumbo v1, "674"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string/jumbo v1, "977"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string/jumbo v1, "31"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string/jumbo v1, "599"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string/jumbo v1, "687"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string/jumbo v1, "64"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string/jumbo v1, "505"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string/jumbo v1, "227"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string/jumbo v1, "234"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    .line 202
    const-string/jumbo v1, "683"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string/jumbo v1, ",6723"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string/jumbo v1, "47"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string/jumbo v1, "968"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string/jumbo v1, "92"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string/jumbo v1, "680"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string/jumbo v1, "507"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string/jumbo v1, "675"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string/jumbo v1, "595"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    .line 203
    const-string/jumbo v1, "51"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string/jumbo v1, "63"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string/jumbo v1, "48"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string/jumbo v1, "351"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string/jumbo v1, "1809"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string/jumbo v1, "974"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string/jumbo v1, "262"

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string/jumbo v1, "40"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string/jumbo v1, "7"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string/jumbo v1, "250"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    .line 204
    const-string/jumbo v1, "290"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string/jumbo v1, "1869"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string/jumbo v1, "1758"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string/jumbo v1, "508"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string/jumbo v1, "1784"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string/jumbo v1, "685"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string/jumbo v1, "378"

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string/jumbo v1, "239"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string/jumbo v1, "966"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    .line 205
    const-string/jumbo v1, "221"

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string/jumbo v1, "381"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string/jumbo v1, "248"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string/jumbo v1, "232"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string/jumbo v1, "65"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string/jumbo v1, "421"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string/jumbo v1, "386"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string/jumbo v1, "677"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string/jumbo v1, "252"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string/jumbo v1, "27"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    .line 206
    const-string/jumbo v1, "34"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string/jumbo v1, "94"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string/jumbo v1, "249"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string/jumbo v1, "597"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string/jumbo v1, "47"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string/jumbo v1, "268"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string/jumbo v1, "46"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string/jumbo v1, "41"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string/jumbo v1, "963"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string/jumbo v1, "992"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    .line 207
    const-string/jumbo v1, "255"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string/jumbo v1, "66"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string/jumbo v1, "1242"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string/jumbo v1, "220"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string/jumbo v1, "228"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string/jumbo v1, "690"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string/jumbo v1, "676"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string/jumbo v1, "1868"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string/jumbo v1, "216"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    .line 208
    const-string/jumbo v1, "90"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string/jumbo v1, "993"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string/jumbo v1, "1649"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string/jumbo v1, "688"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string/jumbo v1, "256"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string/jumbo v1, "380"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string/jumbo v1, "971"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string/jumbo v1, "44"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string/jumbo v1, "598"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    .line 209
    const-string/jumbo v1, "998"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string/jumbo v1, "678"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string/jumbo v1, "58"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string/jumbo v1, "84"

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string/jumbo v1, "1340"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string/jumbo v1, "681"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string/jumbo v1, "967"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string/jumbo v1, "260"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string/jumbo v1, "263"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    const-string/jumbo v1, "1"

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    .line 185
    sput-object v0, Landroid/telephony/MzPhoneNumberUtils;->COUNTRY_CODES:[Ljava/lang/String;

    .line 393
    const-string/jumbo v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 392
    sput-object v0, Landroid/telephony/MzPhoneNumberUtils;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 400
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 402
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 405
    :cond_0
    return-object p0
.end method

.method public static getCNSpecailNumberDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 217
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Landroid/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA_RES:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 216
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x30

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 534
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    return-object p0

    .line 538
    :cond_0
    move-object v2, p0

    .line 539
    .local v2, "tempNum":Ljava/lang/String;
    const/4 v1, 0x0

    .line 541
    .local v1, "haveCountryCode":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_2

    .line 542
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 543
    const/4 v1, 0x1

    .line 549
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 550
    sget-object v4, Landroid/telephony/MzPhoneNumberUtils;->COUNTRY_CODES:[Ljava/lang/String;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 551
    .local v0, "cc":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 552
    return-object v0

    .line 544
    .end local v0    # "cc":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_1

    .line 545
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 546
    const/4 v1, 0x1

    goto :goto_0

    .line 550
    .restart local v0    # "cc":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 556
    .end local v0    # "cc":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getDescriptionForNumber(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZZ)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "needRemoveIpPrefix"    # Z
    .param p4, "needValidNumber"    # Z

    .prologue
    .line 266
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 265
    invoke-static/range {v0 .. v5}, Landroid/telephony/MzPhoneNumberUtils;->getDescriptionForNumber(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDescriptionForNumber(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZZZ)Ljava/lang/String;
    .locals 12
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "needRemoveIpPrefix"    # Z
    .param p4, "needValidNumber"    # Z
    .param p5, "requestSpecailNumber"    # Z

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 290
    const-string/jumbo v9, ""

    return-object v9

    .line 293
    :cond_0
    invoke-static {}, Lcom/meizu/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/meizu/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v3

    .line 294
    .local v3, "geocoder":Lcom/meizu/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-static {}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v8

    .line 296
    .local v8, "util":Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v7, 0x0

    .line 299
    .local v7, "pn":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    invoke-virtual {v8, p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/meizu/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 304
    .end local v7    # "pn":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    if-nez v7, :cond_1

    .line 305
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$string;->local_number:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 300
    .restart local v7    # "pn":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    const-string/jumbo v9, "MzPhoneNumberUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getDescriptionForNumber: NumberParseException for incoming number \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    .end local v1    # "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    .end local v7    # "pn":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_1
    const-string/jumbo v0, ""

    .line 309
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v9

    const/16 v10, 0x56

    if-eq v10, v9, :cond_2

    invoke-virtual {v7}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v9

    if-nez v9, :cond_a

    .line 310
    :cond_2
    invoke-static {p0}, Landroid/telephony/MzPhoneNumberUtils;->isCNIpPrefix(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    return-object v0

    .line 312
    :cond_3
    invoke-virtual {v7}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, "nationalNumberStr":Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 314
    invoke-static {v6}, Landroid/telephony/MzPhoneNumberUtils;->removeCNIpPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 315
    const-wide/16 v4, 0x0

    .line 317
    .local v4, "nationalNumber":J
    :try_start_1
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 321
    :goto_1
    invoke-virtual {v7, v4, v5}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 324
    .end local v4    # "nationalNumber":J
    :cond_4
    if-eqz p5, :cond_5

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 325
    if-eqz p2, :cond_5

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 324
    if-eqz v9, :cond_5

    .line 326
    invoke-static {v6}, Landroid/telephony/MzPhoneNumberUtils;->getCNSpecailNumberDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 330
    return-object v0

    .line 318
    .restart local v4    # "nationalNumber":J
    :catch_1
    move-exception v2

    .line 319
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "MzPhoneNumberUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NumberFormatException : nationalNumber:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 332
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "nationalNumber":J
    :cond_6
    const-string/jumbo v9, "0"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string/jumbo v9, "+"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 333
    :cond_7
    :goto_2
    invoke-static {p0}, Landroid/telephony/MzPhoneNumberUtils;->isCNIpPrefix(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string/jumbo v9, "10"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 332
    if-eqz v9, :cond_a

    .line 334
    :cond_8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$string;->local_number:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 333
    :cond_9
    const-string/jumbo v9, "1"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_2

    .line 340
    .end local v6    # "nationalNumberStr":Ljava/lang/String;
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 341
    if-eqz p4, :cond_c

    .line 342
    invoke-virtual {v3, v7, p2}, Lcom/meizu/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_b
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 348
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$string;->local_number:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 344
    :cond_c
    const/4 v9, 0x1

    invoke-virtual {v3, v7, p2, p1, v9}, Lcom/meizu/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 350
    :cond_d
    return-object v0
.end method

.method public static getLocalCountryISO(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 514
    :try_start_0
    const-string/jumbo v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 515
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 517
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 521
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "detector":Landroid/location/CountryDetector;
    :catch_0
    move-exception v2

    .line 522
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 525
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isCNIpPrefix(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 241
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const/4 v1, 0x1

    return v1

    .line 240
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 416
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    const/4 v2, 0x0

    return v2

    .line 420
    :cond_0
    invoke-static {p0}, Landroid/telephony/MzPhoneNumberUtils;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 422
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static isNotificationNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 468
    const-string/jumbo v6, "MzPhoneNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isNotificationNumber "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {p1}, Landroid/telephony/MzPhoneNumberUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/telephony/MzPhoneNumberUtils;->isSnsRecipient(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 471
    :cond_0
    return v5

    .line 474
    :cond_1
    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 476
    invoke-static {p1}, Landroid/telephony/MzPhoneNumberUtils;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "country":Ljava/lang/String;
    const-string/jumbo v6, "MzPhoneNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCountryCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    if-nez v0, :cond_2

    .line 479
    invoke-static {p0}, Landroid/telephony/MzPhoneNumberUtils;->getLocalCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 480
    const-string/jumbo v6, "MzPhoneNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLocalCountryISO = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_2
    if-eqz v0, :cond_5

    const-string/jumbo v6, "48"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 484
    const-string/jumbo v6, "PL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 483
    if-eqz v6, :cond_5

    .line 485
    :cond_3
    invoke-static {p1}, Landroid/telephony/MzPhoneNumberUtils;->removeCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 486
    const-string/jumbo v6, "MzPhoneNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "POLAND_COUNTRY_CODE, removeCountryCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v9, :cond_4

    :goto_0
    return v4

    :cond_4
    move v4, v5

    goto :goto_0

    .line 488
    :cond_5
    if-eqz v0, :cond_8

    const-string/jumbo v6, "91"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 489
    const-string/jumbo v6, "IN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 488
    if-eqz v6, :cond_8

    .line 490
    :cond_6
    invoke-static {p1}, Landroid/telephony/MzPhoneNumberUtils;->removeCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 491
    const-string/jumbo v6, "MzPhoneNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "INDIA_COUNTRY_CODE, removeCountryCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v10, :cond_7

    :goto_1
    return v4

    :cond_7
    move v4, v5

    goto :goto_1

    .line 494
    :cond_8
    const-string/jumbo v6, "MzPhoneNumberUtils"

    const-string/jumbo v7, "Default Country"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xb

    if-le v6, v7, :cond_b

    .line 496
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0xb

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "numberPrefix":Ljava/lang/String;
    const-string/jumbo v6, "1065"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "1066"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "12520"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 499
    const-string/jumbo v6, "10690"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 498
    if-eqz v6, :cond_a

    .line 500
    :cond_9
    return v4

    .line 502
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0xb

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 504
    .end local v2    # "numberPrefix":Ljava/lang/String;
    :cond_b
    const-string/jumbo v6, "^((13[0-9])|(15[^4,\\D])|(18[0-9])|(170)|(176)|(177)|(178)|(147))\\d{8}$"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 505
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 507
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_c

    :goto_2
    return v5

    :cond_c
    move v5, v4

    goto :goto_2
.end method

.method public static final isSnsRecipient(Ljava/lang/String;)Z
    .locals 3
    .param p0, "recipientStr"    # Ljava/lang/String;

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "isSnsRecipients":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 434
    :cond_0
    return v0

    .line 435
    :cond_1
    const-string/jumbo v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    const/4 v0, 0x1

    .line 439
    return v0

    .line 438
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static removeCNIpPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 227
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string/jumbo v1, ""

    return-object v1

    .line 229
    :cond_0
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    :cond_2
    return-object p0
.end method

.method public static removeCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 358
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    return-object p0

    .line 362
    :cond_0
    const/4 v1, 0x0

    .line 364
    .local v1, "haveCountryCode":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    .line 365
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 366
    const/4 v1, 0x1

    .line 372
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 373
    sget-object v3, Landroid/telephony/MzPhoneNumberUtils;->COUNTRY_CODES:[Ljava/lang/String;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    .line 374
    .local v0, "cc":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 375
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 367
    .end local v0    # "cc":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_1

    .line 368
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 369
    const/4 v1, 0x1

    goto :goto_0

    .line 373
    .restart local v0    # "cc":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 379
    .end local v0    # "cc":Ljava/lang/String;
    :cond_4
    return-object p0
.end method
