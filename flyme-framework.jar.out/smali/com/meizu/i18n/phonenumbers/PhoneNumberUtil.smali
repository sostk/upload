.class public Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;,
        Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;,
        Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;,
        Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;,
        Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    }
.end annotation


# static fields
.field private static synthetic -com_meizu_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberFormatSwitchesValues:[I = null

.field private static synthetic -com_meizu_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberTypeSwitchesValues:[I = null

.field private static synthetic -com_meizu_i18n_phonenumbers_Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues:[I = null

.field private static final ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_PHONE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final CAPTURING_EXTN_DIGITS:Ljava/lang/String; = "(\\p{Nd}{1,7})"

.field private static final CC_PATTERN:Ljava/util/regex/Pattern;

.field private static final COLOMBIA_MOBILE_TO_FIXED_LINE_PREFIX:Ljava/lang/String; = "3"

.field private static final DEFAULT_EXTN_PREFIX:Ljava/lang/String; = " ext. "

.field private static final DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIGITS:Ljava/lang/String; = "\\p{Nd}"

.field private static final EXTN_PATTERN:Ljava/util/regex/Pattern;

.field static final EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

.field private static final EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

.field private static final FG_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final MAX_INPUT_STRING_LENGTH:I = 0xfa

.field static final MAX_LENGTH_COUNTRY_CODE:I = 0x3

.field static final MAX_LENGTH_FOR_NSN:I = 0x10

.field static final META_DATA_FILE_PREFIX:Ljava/lang/String; = "/com/meizu/i18n/phonenumbers/data/PhoneNumberMetadataProto"

.field private static final MIN_LENGTH_FOR_NSN:I = 0x2

.field private static final NANPA_COUNTRY_CODE:I = 0x1

.field static final NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final NP_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_CHARS:Ljava/lang/String; = "+\uff0b"

.field static final PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_SIGN:C = '+'

.field static final REGEX_FLAGS:I = 0x42

.field public static final REGION_CODE_FOR_NON_GEO_ENTITY:Ljava/lang/String; = "001"

.field private static final RFC3966_EXTN_PREFIX:Ljava/lang/String; = ";ext="

.field private static final RFC3966_ISDN_SUBADDRESS:Ljava/lang/String; = ";isub="

.field private static final RFC3966_PHONE_CONTEXT:Ljava/lang/String; = ";phone-context="

.field private static final RFC3966_PREFIX:Ljava/lang/String; = "tel:"

.field private static final SECOND_NUMBER_START:Ljava/lang/String; = "[\\\\/] *x"

.field static final SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final STAR_SIGN:C = '*'

.field private static final UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

.field private static final UNKNOWN_REGION:Ljava/lang/String; = "ZZ"

.field private static final UNWANTED_END_CHARS:Ljava/lang/String; = "[[\\P{N}&&\\P{L}]&&[^#]]+$"

.field static final UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_ALPHA:Ljava/lang/String;

.field private static final VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_PHONE_NUMBER:Ljava/lang/String;

.field private static final VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field static final VALID_PUNCTUATION:Ljava/lang/String; = "-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e"

.field private static final VALID_START_CHAR:Ljava/lang/String; = "[+\uff0b\\p{Nd}]"

.field private static final VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static instance:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;


# instance fields
.field private countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final countryCodesForNonGeographicalRegion:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentFilePrefix:Ljava/lang/String;

.field private final nanpaRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

.field private final regionToMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom_meizu_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberFormatSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->-com_meizu_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberFormatSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->-com_meizu_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberFormatSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->values()[Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->-com_meizu_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberFormatSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_meizu_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->-com_meizu_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->-com_meizu_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->values()[Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->-com_meizu_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method

.method private static synthetic -getcom_meizu_i18n_phonenumbers_Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->-com_meizu_i18n_phonenumbers_Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->-com_meizu_i18n_phonenumbers_Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->values()[Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->-com_meizu_i18n_phonenumbers_Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/16 v15, 0x33

    const/16 v14, 0x32

    const/16 v13, 0x39

    const/16 v12, 0x37

    const/16 v11, 0x2d

    .line 73
    const-class v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    .line 127
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v2, "asciiDigitMappings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v9, 0x30

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/16 v9, 0x31

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x31

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/16 v9, 0x34

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/16 v9, 0x35

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x35

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/16 v9, 0x36

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/16 v9, 0x38

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x38

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v1, Ljava/util/HashMap;

    const/16 v9, 0x28

    invoke-direct {v1, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 140
    .local v1, "alphaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v9, 0x41

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/16 v9, 0x42

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/16 v9, 0x43

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/16 v9, 0x44

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/16 v9, 0x45

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/16 v9, 0x46

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/16 v9, 0x47

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/16 v9, 0x48

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/16 v9, 0x49

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/16 v9, 0x4a

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x35

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/16 v9, 0x4b

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x35

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/16 v9, 0x4c

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x35

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/16 v9, 0x4d

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/16 v9, 0x4e

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/16 v9, 0x4f

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/16 v9, 0x50

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/16 v9, 0x51

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/16 v9, 0x52

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v9, 0x53

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/16 v9, 0x54

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x38

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/16 v9, 0x55

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x38

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/16 v9, 0x56

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x38

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/16 v9, 0x57

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const/16 v9, 0x58

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v9, 0x59

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/16 v9, 0x5a

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 168
    new-instance v5, Ljava/util/HashMap;

    const/16 v9, 0x64

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 169
    .local v5, "combinedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 170
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 171
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 173
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v6, "diallableCharMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 175
    const/16 v9, 0x2b

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x2b

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/16 v9, 0x2a

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x2a

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v0, "allPlusNumberGroupings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Character;

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 182
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    .end local v3    # "c":C
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 187
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const v9, 0xff0d

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const/16 v9, 0x2010

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const/16 v9, 0x2011

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/16 v9, 0x2012

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/16 v9, 0x2013

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/16 v9, 0x2014

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/16 v9, 0x2015

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/16 v9, 0x2212

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/16 v9, 0x2f

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x2f

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const v9, 0xff0f

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x2f

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/16 v9, 0x3000

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const/16 v9, 0x2060

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/16 v9, 0x2e

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const v9, 0xff0e

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    .line 213
    const-string/jumbo v9, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 212
    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 227
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "[, \\[\\]]"

    const-string/jumbo v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 228
    sget-object v10, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "[, \\[\\]]"

    const-string/jumbo v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 227
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 226
    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    .line 230
    const-string/jumbo v9, "[+\uff0b]+"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 231
    const-string/jumbo v9, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 232
    const-string/jumbo v9, "(\\p{Nd})"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 241
    const-string/jumbo v9, "[+\uff0b\\p{Nd}]"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 249
    const-string/jumbo v9, "[\\\\/] *x"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    .line 255
    const-string/jumbo v9, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 259
    const-string/jumbo v9, "(?:.*?[A-Za-z]){3}.*"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 278
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 280
    sget-object v10, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    .line 278
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 280
    const-string/jumbo v10, "\\p{Nd}"

    .line 278
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 280
    const-string/jumbo v10, "]*"

    .line 278
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 277
    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    .line 298
    const-string/jumbo v7, "x\uff58#\uff03~\uff5e"

    .line 302
    .local v7, "singleExtnSymbolsForMatching":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, "singleExtnSymbolsForParsing":Ljava/lang/String;
    invoke-static {v8}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    .line 305
    invoke-static {v7}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 333
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "(?:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x42

    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 332
    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 338
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "(?:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x42

    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 337
    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 340
    const-string/jumbo v9, "(\\D+)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 346
    const-string/jumbo v9, "(\\$\\d)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    .line 347
    const-string/jumbo v9, "\\$NP"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    .line 348
    const-string/jumbo v9, "\\$FG"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    .line 349
    const-string/jumbo v9, "\\$CC"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    .line 354
    const-string/jumbo v9, "\\(?\\$1\\)?"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 356
    const/4 v9, 0x0

    sput-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string/jumbo v0, "/com/meizu/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    iput-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x140

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    .line 360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 359
    iput-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 365
    iput-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    .line 370
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    .line 375
    new-instance v0, Lcom/meizu/i18n/phonenumbers/RegexCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/meizu/i18n/phonenumbers/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

    .line 553
    return-void
.end method

.method private buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2842
    const-string/jumbo v4, ";phone-context="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2843
    .local v1, "indexOfPhoneContext":I
    if-lez v1, :cond_3

    .line 2844
    const-string/jumbo v4, ";phone-context="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v3, v1, v4

    .line 2847
    .local v3, "phoneContextStart":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_0

    .line 2851
    const/16 v4, 0x3b

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2852
    .local v2, "phoneContextEnd":I
    if-lez v2, :cond_2

    .line 2853
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    .end local v2    # "phoneContextEnd":I
    :cond_0
    :goto_0
    const-string/jumbo v4, "tel:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "tel:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 2861
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2871
    .end local v3    # "phoneContextStart":I
    :goto_1
    const-string/jumbo v4, ";isub="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2872
    .local v0, "indexOfIsdn":I
    if-lez v0, :cond_1

    .line 2873
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p2, v0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2841
    :cond_1
    return-void

    .line 2855
    .end local v0    # "indexOfIsdn":I
    .restart local v2    # "phoneContextEnd":I
    .restart local v3    # "phoneContextStart":I
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2866
    .end local v2    # "phoneContextEnd":I
    .end local v3    # "phoneContextStart":I
    :cond_3
    invoke-static {p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2604
    invoke-direct {p0, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2606
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2608
    :cond_0
    return v1

    .line 2607
    :cond_1
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2611
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 618
    if-eqz p0, :cond_0

    .line 620
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v3, "error closing input stream (ignored)"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static convertAlphaCharactersInNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 748
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createExtnPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "singleExtnSymbols"    # Ljava/lang/String;

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ";ext=(\\p{Nd}{1,7})|[ \u00a0\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    const-string/jumbo v1, "]|int|anexo|\uff49\uff4e\uff54)"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    const-string/jumbo v1, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    const-string/jumbo v1, "(\\p{Nd}{1,7})"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    const-string/jumbo v1, "#?|"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    const-string/jumbo v1, "[- ]+("

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    const-string/jumbo v1, "\\p{Nd}"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    const-string/jumbo v1, "{1,5})#"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 643
    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 644
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 645
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 647
    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 648
    .local v2, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 649
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 650
    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Stripped trailing characters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 653
    :cond_0
    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 654
    .local v1, "secondNumber":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 655
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 657
    :cond_1
    return-object p0

    .line 659
    .end local v1    # "secondNumber":Ljava/util/regex/Matcher;
    .end local v2    # "trailingCharsMatcher":Ljava/util/regex/Matcher;
    :cond_2
    const-string/jumbo v3, ""

    return-object v3
.end method

.method private formatNsn(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1640
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatNsn(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1651
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v2

    .line 1655
    .local v2, "intlNumberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v3, :cond_1

    .line 1656
    :cond_0
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v0

    .line 1658
    .local v0, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 1659
    .local v1, "formattingPattern":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v1, :cond_2

    .end local p1    # "number":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 1657
    .end local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v1    # "formattingPattern":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v0

    .restart local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    goto :goto_0

    .line 1661
    .restart local v1    # "formattingPattern":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_2
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private formatNsnUsingPattern(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1693
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 1695
    .local v6, "numberFormatRule":Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1696
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v2, ""

    .line 1697
    .local v2, "formattedNationalNumber":Ljava/lang/String;
    sget-object v7, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_2

    .line 1698
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1699
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1701
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v0

    .line 1703
    .local v0, "carrierCodeFormattingRule":Ljava/lang/String;
    sget-object v7, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1706
    sget-object v7, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1708
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1722
    .end local v0    # "carrierCodeFormattingRule":Ljava/lang/String;
    :goto_0
    sget-object v7, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_1

    .line 1724
    sget-object v7, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1725
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1726
    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1729
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1731
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    return-object v2

    .line 1711
    :cond_2
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 1712
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    sget-object v7, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_3

    .line 1713
    if-eqz v5, :cond_3

    .line 1714
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1715
    sget-object v7, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1717
    .local v1, "firstGroupMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1719
    .end local v1    # "firstGroupMatcher":Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z
    .locals 1
    .param p0, "nationalPrefixFormattingRule"    # Ljava/lang/String;

    .prologue
    .line 963
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private getCountryCodeForValidRegion(Ljava/lang/String;)I
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2095
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2096
    .local v0, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 2097
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid region code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2099
    :cond_0
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v1

    return v1
.end method

.method public static declared-synchronized getInstance()Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;
    .locals 3

    .prologue
    const-class v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v1

    .line 951
    :try_start_0
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 952
    const-string/jumbo v0, "/com/meizu/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    .line 953
    invoke-static {}, Lcom/meizu/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v2

    .line 952
    invoke-static {v0, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getInstance(Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 955
    :cond_0
    :try_start_1
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getInstance(Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;
    .locals 2
    .param p0, "baseFileLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;"
        }
    .end annotation

    .prologue
    .local p1, "countryCallingCodeToRegionCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const-class v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v1

    .line 909
    :try_start_0
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 910
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    invoke-direct {v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;-><init>()V

    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    .line 911
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    iput-object p1, v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 912
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    invoke-direct {v0, p0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->init(Ljava/lang/String;)V

    .line 914
    :cond_0
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "countryCallingCode"    # I
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1158
    const-string/jumbo v0, "001"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1158
    :goto_0
    return-object v0

    .line 1160
    :cond_0
    invoke-virtual {p0, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method private getNumberTypeHelper(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 3
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .prologue
    .line 1864
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1865
    .local v0, "generalNumberDesc":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1866
    invoke-direct {p0, p1, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1870
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1871
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 1867
    :cond_0
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 1873
    :cond_1
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1874
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 1876
    :cond_2
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1877
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 1879
    :cond_3
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1880
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 1882
    :cond_4
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1883
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 1885
    :cond_5
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1886
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 1888
    :cond_6
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1889
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 1891
    :cond_7
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1892
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 1895
    :cond_8
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    .line 1896
    .local v1, "isFixedLine":Z
    if-eqz v1, :cond_b

    .line 1897
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1898
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 1899
    :cond_9
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1900
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 1902
    :cond_a
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 1906
    :cond_b
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1907
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    .line 1906
    if-eqz v2, :cond_c

    .line 1908
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 1910
    :cond_c
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2
.end method

.method private getRegionCodeForNumberFromRegionList(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2030
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2031
    .local v1, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "regionCode$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2034
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2035
    .local v0, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2036
    iget-object v4, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getLeadingDigits()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2038
    return-object v2

    .line 2040
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_0

    .line 2041
    return-object v2

    .line 2044
    .end local v0    # "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v2    # "regionCode":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method private hasFormattingPatternForNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 7
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v5, 0x0

    .line 1475
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1476
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1478
    .local v4, "phoneNumberRegion":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1479
    .local v2, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v2, :cond_0

    .line 1480
    return v5

    .line 1482
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1484
    .local v3, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 1485
    .local v1, "formatRule":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v1, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5
.end method

.method private hasUnexpectedItalianLeadingZero(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v0, 0x0

    .line 1471
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isLeadingZeroPossible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasValidCountryCallingCode(I)Z
    .locals 2
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 990
    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init(Ljava/lang/String;)V
    .locals 7
    .param p1, "filePrefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 557
    iput-object p1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    .line 558
    iget-object v3, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 559
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 562
    .local v2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_0

    const-string/jumbo v3, "001"

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 564
    iget-object v4, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 567
    :cond_0
    iget-object v3, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 573
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    const-string/jumbo v4, "001"

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 574
    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v5, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 577
    :cond_2
    iget-object v4, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    iget-object v3, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 556
    return-void
.end method

.method private isNationalNumberSuffixOfTheOther(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 4
    .param p1, "firstNumber"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2960
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2961
    .local v0, "firstNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 2963
    .local v1, "secondNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2964
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 2963
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 4
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 1945
    iget-object v2, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1948
    .local v1, "possibleNumberPatternMatcher":Ljava/util/regex/Matcher;
    iget-object v2, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1950
    .local v0, "nationalNumberPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isValidRegionCode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 983
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isViablePhoneNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 675
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 676
    const/4 v1, 0x0

    return v1

    .line 678
    :cond_0
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 679
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private maybeAppendFormattedExtension(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "metadata"    # Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1806
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1807
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v0, :cond_1

    .line 1808
    const-string/jumbo v0, ";ext="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    :cond_0
    :goto_0
    return-void

    .line 1810
    :cond_1
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1811
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredExtnPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1813
    :cond_2
    const-string/jumbo v0, " ext. "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 699
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 700
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 703
    :cond_0
    invoke-static {p0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static normalize(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "number"    # Ljava/lang/StringBuilder;

    .prologue
    .line 715
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    return-void
.end method

.method static normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "keepNonDigits"    # Z

    .prologue
    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 732
    .local v2, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-char v0, v4, v3

    .line 733
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 734
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 735
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 732
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 736
    :cond_1
    if-eqz p1, :cond_0

    .line 737
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 740
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_2
    return-object v2
.end method

.method public static normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 727
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;
    .param p2, "removeNonMatches"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 891
    .local p1, "normalizationReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 892
    .local v3, "normalizedNumber":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 893
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 894
    .local v0, "character":C
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 895
    .local v2, "newDigit":Ljava/lang/Character;
    if-eqz v2, :cond_1

    .line 896
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 892
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 897
    :cond_1
    if-nez p2, :cond_0

    .line 898
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 902
    .end local v0    # "character":C
    .end local v2    # "newDigit":Ljava/lang/Character;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 16
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "keepRawInput"    # Z
    .param p4, "checkRegion"    # Z
    .param p5, "phoneNumber"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2733
    if-nez p1, :cond_0

    .line 2734
    new-instance v2, Lcom/meizu/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2735
    const-string/jumbo v6, "The phone number supplied was null."

    .line 2734
    invoke-direct {v2, v3, v6}, Lcom/meizu/i18n/phonenumbers/NumberParseException;-><init>(Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2736
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfa

    if-le v2, v3, :cond_1

    .line 2737
    new-instance v2, Lcom/meizu/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2738
    const-string/jumbo v6, "The string supplied was too long to parse."

    .line 2737
    invoke-direct {v2, v3, v6}, Lcom/meizu/i18n/phonenumbers/NumberParseException;-><init>(Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2741
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 2742
    .local v14, "nationalNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2744
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2745
    new-instance v2, Lcom/meizu/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2746
    const-string/jumbo v6, "The string supplied did not seem to be a phone number."

    .line 2745
    invoke-direct {v2, v3, v6}, Lcom/meizu/i18n/phonenumbers/NumberParseException;-><init>(Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2751
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2756
    :cond_3
    if-eqz p3, :cond_4

    .line 2757
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2761
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 2762
    .local v11, "extension":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 2763
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2766
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 2769
    .local v4, "regionMetadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2770
    .local v5, "normalizedNationalNumber":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 2775
    .local v9, "countryCode":I
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    :try_end_0
    .catch Lcom/meizu/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2793
    :cond_6
    if-eqz v9, :cond_a

    .line 2794
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v15

    .line 2795
    .local v15, "phoneNumberRegion":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2797
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 2811
    .end local v15    # "phoneNumberRegion":Ljava/lang/String;
    :cond_7
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_c

    .line 2812
    new-instance v2, Lcom/meizu/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2813
    const-string/jumbo v6, "The string supplied is too short to be a phone number."

    .line 2812
    invoke-direct {v2, v3, v6}, Lcom/meizu/i18n/phonenumbers/NumberParseException;-><init>(Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2752
    .end local v4    # "regionMetadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5    # "normalizedNationalNumber":Ljava/lang/StringBuilder;
    .end local v9    # "countryCode":I
    .end local v11    # "extension":Ljava/lang/String;
    :cond_8
    new-instance v2, Lcom/meizu/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2753
    const-string/jumbo v6, "Missing or invalid default region."

    .line 2752
    invoke-direct {v2, v3, v6}, Lcom/meizu/i18n/phonenumbers/NumberParseException;-><init>(Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2777
    .restart local v4    # "regionMetadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v5    # "normalizedNationalNumber":Ljava/lang/StringBuilder;
    .restart local v9    # "countryCode":I
    .restart local v11    # "extension":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 2778
    .local v10, "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 2779
    .local v13, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Lcom/meizu/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v2

    sget-object v3, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v2, v3, :cond_9

    .line 2780
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    .line 2779
    if-eqz v2, :cond_9

    .line 2782
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v9

    .line 2785
    if-nez v9, :cond_6

    .line 2786
    new-instance v2, Lcom/meizu/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2787
    const-string/jumbo v6, "Could not interpret numbers after plus-sign."

    .line 2786
    invoke-direct {v2, v3, v6}, Lcom/meizu/i18n/phonenumbers/NumberParseException;-><init>(Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2790
    :cond_9
    new-instance v2, Lcom/meizu/i18n/phonenumbers/NumberParseException;

    invoke-virtual {v10}, Lcom/meizu/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    invoke-virtual {v10}, Lcom/meizu/i18n/phonenumbers/NumberParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lcom/meizu/i18n/phonenumbers/NumberParseException;-><init>(Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2802
    .end local v10    # "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    :cond_a
    invoke-static {v14}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2803
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2804
    if-eqz p2, :cond_b

    .line 2805
    invoke-virtual {v4}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v9

    .line 2806
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2807
    :cond_b
    if-eqz p3, :cond_7

    .line 2808
    invoke-virtual/range {p5 .. p5}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2815
    :cond_c
    if-eqz v4, :cond_d

    .line 2816
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2817
    .local v8, "carrierCode":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v8}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2818
    if-eqz p3, :cond_d

    .line 2819
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2822
    .end local v8    # "carrierCode":Ljava/lang/StringBuilder;
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    .line 2823
    .local v12, "lengthOfNationalNumber":I
    const/4 v2, 0x2

    if-ge v12, v2, :cond_e

    .line 2824
    new-instance v2, Lcom/meizu/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2825
    const-string/jumbo v6, "The string supplied is too short to be a phone number."

    .line 2824
    invoke-direct {v2, v3, v6}, Lcom/meizu/i18n/phonenumbers/NumberParseException;-><init>(Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2827
    :cond_e
    const/16 v2, 0x10

    if-le v12, v2, :cond_f

    .line 2828
    new-instance v2, Lcom/meizu/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2829
    const-string/jumbo v6, "The string supplied is too long to be a phone number."

    .line 2828
    invoke-direct {v2, v3, v6}, Lcom/meizu/i18n/phonenumbers/NumberParseException;-><init>(Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2831
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_10

    .line 2832
    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2834
    :cond_10
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2732
    return-void
.end method

.method private parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "iddPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2457
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2458
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2459
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 2462
    .local v2, "matchEnd":I
    sget-object v4, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2463
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2464
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2465
    .local v3, "normalizedGroup":Ljava/lang/String;
    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2466
    return v6

    .line 2469
    .end local v3    # "normalizedGroup":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2470
    return v7

    .line 2472
    .end local v0    # "digitMatcher":Ljava/util/regex/Matcher;
    .end local v2    # "matchEnd":I
    :cond_1
    return v6
.end method

.method private prefixNumberWithCountryCallingCode(ILcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "countryCallingCode"    # I
    .param p2, "numberFormat"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v3, 0x2b

    const/4 v2, 0x0

    .line 1621
    invoke-static {}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->-getcom_meizu_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberFormatSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1634
    :pswitch_0
    return-void

    .line 1623
    :pswitch_1
    invoke-virtual {p3, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1624
    return-void

    .line 1626
    :pswitch_2
    const-string/jumbo v0, " "

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1627
    return-void

    .line 1629
    :pswitch_3
    const-string/jumbo v0, "-"

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1630
    const-string/jumbo v1, "tel:"

    .line 1629
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    return-void

    .line 1621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "rawInput"    # Ljava/lang/String;
    .param p2, "nationalPrefix"    # Ljava/lang/String;
    .param p3, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1450
    invoke-static {p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1451
    .local v1, "normalizedNationalNumber":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1458
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1457
    invoke-virtual {p0, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcom/meizu/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1459
    :catch_0
    move-exception v0

    .line 1460
    .local v0, "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    return v3

    .line 1463
    .end local v0    # "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    :cond_0
    return v3
.end method

.method static declared-synchronized resetInstance()V
    .locals 2

    .prologue
    const-class v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    .line 922
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 921
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 2
    .param p1, "numberPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2199
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2200
    .local v0, "numberMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2201
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v1

    .line 2203
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2204
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v1

    .line 2206
    :cond_1
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v1
.end method


# virtual methods
.method canBeInternationallyDialled(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 4
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v2, 0x1

    .line 3063
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3064
    .local v0, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 3067
    return v2

    .line 3069
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 3070
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNoInternationalDialling()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    return v2
.end method

.method chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 6
    .param p2, "nationalNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;"
        }
    .end annotation

    .prologue
    .line 1666
    .local p1, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "numFormat$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1667
    .local v1, "numFormat":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v3

    .line 1668
    .local v3, "size":I
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

    .line 1670
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v1, v5}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v5

    .line 1668
    invoke-virtual {v4, v5}, Lcom/meizu/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1671
    :cond_1
    iget-object v4, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1672
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1673
    return-object v1

    .line 1677
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "numFormat":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "size":I
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 6
    .param p1, "fullNumber"    # Ljava/lang/StringBuilder;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 2331
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_1

    .line 2333
    :cond_0
    return v5

    .line 2336
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2337
    .local v1, "numberLength":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-gt v0, v3, :cond_3

    if-gt v0, v1, :cond_3

    .line 2338
    invoke-virtual {p1, v5, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2339
    .local v2, "potentialCountryCode":I
    iget-object v3, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2340
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2341
    return v2

    .line 2337
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2344
    .end local v2    # "potentialCountryCode":I
    :cond_3
    return v5
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2695
    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "leniency"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .param p4, "maxTries"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;",
            "J)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2716
    new-instance v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;-><init>(Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v1
.end method

.method public format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1008
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1014
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "rawInput":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1016
    return-object v1

    .line 1019
    .end local v1    # "rawInput":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1020
    .local v0, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1021
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1031
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1032
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1033
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1034
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v4, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p2, v4, :cond_0

    .line 1037
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    sget-object v4, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v4, p3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1040
    return-void

    .line 1042
    :cond_0
    invoke-direct {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1043
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    return-void

    .line 1049
    :cond_1
    invoke-virtual {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    .line 1053
    .local v3, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 1054
    .local v1, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v2, v1, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1056
    invoke-direct {p0, v0, p2, p3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1029
    return-void
.end method

.method public formatByPattern(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1073
    .local p3, "userDefinedFormats":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1074
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v6

    .line 1075
    .local v6, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1076
    return-object v6

    .line 1081
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1084
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v8}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 1086
    .local v3, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v9, 0x14

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1089
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p3, v6}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v2

    .line 1090
    .local v2, "formattingPattern":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v2, :cond_1

    .line 1092
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    :goto_0
    invoke-direct {p0, p1, v3, p2, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1118
    invoke-direct {p0, v0, p2, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1094
    :cond_1
    new-instance v7, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v7}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1098
    .local v7, "numFormatCopy":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v7, v2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1099
    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 1100
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 1101
    invoke-virtual {v3}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1102
    .local v4, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 1105
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1107
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\\$1"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1108
    invoke-virtual {v7, v5}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1115
    .end local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0, v6, v7, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v9

    .line 1114
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1111
    .restart local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    goto :goto_1
.end method

.method public formatInOriginalFormat(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 1350
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1351
    invoke-direct/range {p0 .. p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->hasUnexpectedItalianLeadingZero(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->hasFormattingPatternForNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1356
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v17

    if-nez v17, :cond_2

    .line 1357
    sget-object v17, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 1354
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 1360
    :cond_2
    invoke-static {}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->-getcom_meizu_i18n_phonenumbers_Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues()[I

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 1373
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v16

    .line 1376
    .local v16, "regionCode":Ljava/lang/String;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 1377
    .local v10, "nationalPrefix":Ljava/lang/String;
    sget-object v17, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v8

    .line 1378
    .local v8, "nationalFormat":Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 1381
    :cond_3
    move-object v5, v8

    .line 1431
    .end local v8    # "nationalFormat":Ljava/lang/String;
    .end local v10    # "nationalPrefix":Ljava/lang/String;
    .end local v16    # "regionCode":Ljava/lang/String;
    .local v5, "formattedNumber":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v15

    .line 1434
    .local v15, "rawInput":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 1436
    sget-object v17, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v5, v0, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v11

    .line 1438
    .local v11, "normalizedFormattedNumber":Ljava/lang/String;
    sget-object v17, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v12

    .line 1439
    .local v12, "normalizedRawInput":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1440
    move-object v5, v15

    .line 1443
    .end local v11    # "normalizedFormattedNumber":Ljava/lang/String;
    .end local v12    # "normalizedRawInput":Ljava/lang/String;
    :cond_4
    return-object v5

    .line 1362
    .end local v5    # "formattedNumber":Ljava/lang/String;
    .end local v15    # "rawInput":Ljava/lang/String;
    :pswitch_0
    sget-object v17, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    .line 1365
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    .line 1368
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :pswitch_2
    sget-object v17, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    .line 1386
    .end local v5    # "formattedNumber":Ljava/lang/String;
    .restart local v8    # "nationalFormat":Ljava/lang/String;
    .restart local v10    # "nationalPrefix":Ljava/lang/String;
    .restart local v16    # "regionCode":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v17

    .line 1385
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1388
    move-object v5, v8

    .line 1389
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    .line 1393
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v7

    .line 1394
    .local v7, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v9

    .line 1396
    .local v9, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v4

    .line 1400
    .local v4, "formatRule":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v4, :cond_7

    .line 1401
    move-object v5, v8

    .line 1402
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    .line 1407
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    .line 1409
    .local v3, "candidateNationalPrefixRule":Ljava/lang/String;
    const-string/jumbo v17, "$1"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1410
    .local v6, "indexOfFirstGroup":I
    if-gtz v6, :cond_8

    .line 1411
    move-object v5, v8

    .line 1412
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_0

    .line 1415
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1416
    invoke-static {v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1417
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_9

    .line 1419
    move-object v5, v8

    .line 1420
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_0

    .line 1423
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_9
    new-instance v13, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v13}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1424
    .local v13, "numFormatCopy":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v13, v4}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1425
    invoke-virtual {v13}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1426
    new-instance v14, Ljava/util/ArrayList;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1427
    .local v14, "numberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1428
    sget-object v17, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v14}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatByPattern(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_0

    .line 1360
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public formatNationalNumberWithCarrierCode(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1134
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1135
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1136
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1137
    return-object v3

    .line 1143
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1145
    .local v4, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1147
    .local v2, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1149
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1148
    invoke-direct {p0, v3, v2, v5, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    sget-object v5, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v2, v5, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1151
    sget-object v5, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v5, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public formatNationalNumberWithPreferredCarrierCode(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "fallbackCarrierCode"    # Ljava/lang/String;

    .prologue
    .line 1182
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object p2

    .line 1182
    .end local p2    # "fallbackCarrierCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method formatNsnUsingPattern(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1684
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatNumberForMobileDialing(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;
    .param p3, "withFormatting"    # Z

    .prologue
    const/4 v7, 0x1

    .line 1201
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1202
    .local v0, "countryCallingCode":I
    invoke-direct {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1203
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const-string/jumbo v6, ""

    goto :goto_0

    .line 1206
    :cond_1
    const-string/jumbo v1, ""

    .line 1208
    .local v1, "formattedNumber":Ljava/lang/String;
    new-instance v6, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v6}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    invoke-virtual {v6, p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 1209
    .local v3, "numberNoExt":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v5

    .line 1210
    .local v5, "regionCode":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1211
    invoke-virtual {p0, v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    .line 1213
    .local v4, "numberType":Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v6, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v6, :cond_2

    sget-object v6, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v4, v6, :cond_4

    :cond_2
    const/4 v2, 0x1

    .line 1216
    .local v2, "isFixedLineOrMobile":Z
    :goto_1
    const-string/jumbo v6, "CO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v4, v6, :cond_6

    .line 1218
    const-string/jumbo v6, "3"

    invoke-virtual {p0, v3, v6}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1248
    .end local v2    # "isFixedLineOrMobile":Z
    .end local v4    # "numberType":Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    :cond_3
    :goto_2
    if-eqz p3, :cond_d

    .end local v1    # "formattedNumber":Ljava/lang/String;
    :goto_3
    return-object v1

    .line 1214
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    .restart local v4    # "numberType":Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    :cond_4
    sget-object v6, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v4, v6, :cond_5

    const/4 v2, 0x1

    .restart local v2    # "isFixedLineOrMobile":Z
    goto :goto_1

    .end local v2    # "isFixedLineOrMobile":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isFixedLineOrMobile":Z
    goto :goto_1

    .line 1219
    :cond_6
    const-string/jumbo v6, "BR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v2, :cond_8

    .line 1220
    invoke-virtual {v3}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1221
    const-string/jumbo v6, ""

    invoke-virtual {p0, v3, v6}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithPreferredCarrierCode(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1225
    :cond_7
    const-string/jumbo v1, ""

    goto :goto_2

    .line 1230
    :cond_8
    if-eq v0, v7, :cond_9

    .line 1231
    const-string/jumbo v6, "001"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1230
    if-nez v6, :cond_9

    .line 1237
    const-string/jumbo v6, "MX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1230
    if-eqz v2, :cond_a

    .line 1238
    :cond_9
    invoke-virtual {p0, v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v6

    .line 1230
    if-eqz v6, :cond_a

    .line 1239
    sget-object v6, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v6}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1241
    :cond_a
    sget-object v6, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v6}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1244
    .end local v2    # "isFixedLineOrMobile":Z
    .end local v4    # "numberType":Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    :cond_b
    invoke-virtual {p0, v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1245
    if-eqz p3, :cond_c

    sget-object v6, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v6}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    return-object v6

    .line 1246
    :cond_c
    sget-object v6, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v6}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1249
    :cond_d
    sget-object v6, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    invoke-static {v1, v6, v7}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public formatOutOfCountryCallingNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1272
    invoke-direct {p0, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1273
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 1274
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Trying to format number from invalid region "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1276
    const-string/jumbo v12, ". International formatting applied."

    .line 1274
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1273
    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1277
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v9}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1279
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1280
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v7

    .line 1281
    .local v7, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1282
    return-object v7

    .line 1284
    :cond_1
    const/4 v9, 0x1

    if-ne v0, v9, :cond_2

    .line 1285
    invoke-virtual {p0, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1288
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v10}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1290
    :cond_2
    invoke-direct {p0, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v9

    if-ne v0, v9, :cond_3

    .line 1297
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v9}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1300
    :cond_3
    invoke-virtual {p0, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v6

    .line 1301
    .local v6, "metadataForRegionCallingFrom":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v6}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v3

    .line 1305
    .local v3, "internationalPrefix":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 1306
    .local v4, "internationalPrefixForFormatting":Ljava/lang/String;
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1307
    move-object v4, v3

    .line 1313
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1316
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v8}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v5

    .line 1318
    .local v5, "metadataForRegion":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v7, v5, v9}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1319
    .local v1, "formattedNationalNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1320
    .local v2, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v5, v9, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1322
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 1323
    const-string/jumbo v9, " "

    invoke-virtual {v2, v11, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v11, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1308
    .end local v1    # "formattedNationalNumber":Ljava/lang/String;
    .end local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v5    # "metadataForRegion":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v8    # "regionCode":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1310
    invoke-virtual {v6}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1327
    .restart local v1    # "formattedNationalNumber":Ljava/lang/String;
    .restart local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v5    # "metadataForRegion":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v8    # "regionCode":Ljava/lang/String;
    :cond_6
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1326
    invoke-direct {p0, v0, v9, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_1
.end method

.method public formatOutOfCountryKeepingAlphaChars(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 1514
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v12

    .line 1517
    .local v12, "rawInput":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_0

    .line 1518
    invoke-virtual/range {p0 .. p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 1520
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    .line 1521
    .local v2, "countryCode":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1522
    return-object v12

    .line 1528
    :cond_1
    sget-object v14, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    const/4 v15, 0x1

    invoke-static {v12, v14, v15}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v12

    .line 1533
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v10

    .line 1534
    .local v10, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_2

    .line 1535
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1536
    .local v3, "firstNationalNumberDigit":I
    const/4 v14, -0x1

    if-eq v3, v14, :cond_2

    .line 1537
    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1540
    .end local v3    # "firstNationalNumberDigit":I
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v9

    .line 1541
    .local v9, "metadataForRegionCallingFrom":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v14, 0x1

    if-ne v2, v14, :cond_3

    .line 1542
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1543
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 1545
    :cond_3
    if-eqz v9, :cond_5

    .line 1546
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v14

    if-ne v2, v14, :cond_5

    .line 1548
    invoke-virtual {v9}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v5

    .line 1550
    .local v5, "formattingPattern":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v5, :cond_4

    .line 1552
    return-object v12

    .line 1554
    :cond_4
    new-instance v11, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v11}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1555
    .local v11, "newFormat":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v11, v5}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1557
    const-string/jumbo v14, "(\\d+)(.*)"

    invoke-virtual {v11, v14}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1559
    const-string/jumbo v14, "$1$2"

    invoke-virtual {v11, v14}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1565
    sget-object v14, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v14}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 1567
    .end local v5    # "formattingPattern":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v11    # "newFormat":Lcom/meizu/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_5
    const-string/jumbo v7, ""

    .line 1571
    .local v7, "internationalPrefixForFormatting":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 1572
    invoke-virtual {v9}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v6

    .line 1574
    .local v6, "internationalPrefix":Ljava/lang/String;
    sget-object v14, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1575
    move-object v7, v6

    .line 1578
    .end local v6    # "internationalPrefix":Ljava/lang/String;
    :cond_6
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1579
    .local v4, "formattedNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v13

    .line 1581
    .local v13, "regionCode":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v8

    .line 1583
    .local v8, "metadataForRegion":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v14, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1582
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v14, v4}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1584
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_8

    .line 1585
    const-string/jumbo v14, " "

    const/4 v15, 0x0

    invoke-virtual {v4, v15, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v2}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1586
    const/4 v15, 0x0

    .line 1585
    invoke-virtual {v14, v15, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 1576
    .end local v4    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v8    # "metadataForRegion":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v13    # "regionCode":Ljava/lang/String;
    .restart local v6    # "internationalPrefix":Ljava/lang/String;
    :cond_7
    invoke-virtual {v9}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1590
    .end local v6    # "internationalPrefix":Ljava/lang/String;
    .restart local v4    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v8    # "metadataForRegion":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v13    # "regionCode":Ljava/lang/String;
    :cond_8
    sget-object v14, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 1591
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Trying to format number from invalid region "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1593
    const-string/jumbo v17, ". International formatting applied."

    .line 1591
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1590
    invoke-virtual/range {v14 .. v16}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1595
    sget-object v14, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1594
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v4}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_1
.end method

.method public getAsYouTypeFormatter(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/AsYouTypeFormatter;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2323
    new-instance v0, Lcom/meizu/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-direct {v0, p1}, Lcom/meizu/i18n/phonenumbers/AsYouTypeFormatter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCountryCodeForRegion(Ljava/lang/String;)I
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2076
    invoke-direct {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2077
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 2078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid or missing region code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2079
    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    .line 2078
    .end local p1    # "regionCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2080
    const-string/jumbo v3, ") provided."

    .line 2078
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2077
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2081
    const/4 v0, 0x0

    return v0

    .line 2083
    .restart local p1    # "regionCode":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExampleNumber(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1743
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getExampleNumberForNonGeoEntity(I)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 8
    .param p1, "countryCallingCode"    # I

    .prologue
    const/4 v7, 0x0

    .line 1782
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1783
    .local v2, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_1

    .line 1784
    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1786
    .local v0, "desc":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_0
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ZZ"

    invoke-virtual {p0, v3, v4}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/meizu/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1789
    :catch_0
    move-exception v1

    .line 1790
    .local v1, "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1796
    .end local v0    # "desc":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v1    # "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    :cond_0
    :goto_0
    return-object v7

    .line 1793
    :cond_1
    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 1794
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid or unknown country calling code provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1793
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getExampleNumberForType(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 7
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    const/4 v6, 0x0

    .line 1758
    invoke-direct {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1759
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid or unknown region code provided: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1760
    return-object v6

    .line 1762
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1764
    .local v0, "desc":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_0
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1765
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/meizu/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1767
    :catch_0
    move-exception v1

    .line 1768
    .local v1, "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1770
    .end local v1    # "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    :cond_1
    return-object v6
.end method

.method public getLengthOfGeographicalAreaCode(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 3
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v2, 0x0

    .line 792
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 793
    .local v0, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 794
    return v2

    .line 798
    :cond_0
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 802
    :cond_1
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 803
    return v2

    .line 799
    :cond_2
    return v2

    .line 806
    :cond_3
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getLengthOfNationalDestinationCode(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v1

    return v1
.end method

.method public getLengthOfNationalDestinationCode(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 6
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v5, 0x3

    .line 842
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 845
    new-instance v0, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 846
    .local v0, "copiedProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 847
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 853
    :goto_0
    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 852
    invoke-virtual {p0, v0, v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 854
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 858
    .local v2, "numberGroups":[Ljava/lang/String;
    array-length v3, v2

    if-gt v3, v5, :cond_1

    .line 859
    const/4 v3, 0x0

    return v3

    .line 849
    .end local v0    # "copiedProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v1    # "nationalSignificantNumber":Ljava/lang/String;
    .end local v2    # "numberGroups":[Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .restart local v0    # "copiedProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    goto :goto_0

    .line 862
    .restart local v1    # "nationalSignificantNumber":Ljava/lang/String;
    .restart local v2    # "numberGroups":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "AR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 863
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    sget-object v4, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v3, v4, :cond_2

    .line 870
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    return v3

    .line 872
    :cond_2
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    return v3
.end method

.method getMetadataForNonGeographicalRegion(I)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 1932
    iget-object v1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 1933
    :try_start_0
    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1934
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 1936
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1937
    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    const-string/jumbo v2, "001"

    invoke-virtual {p0, v0, v2, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1940
    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v0

    .line 1932
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getMetadataForRegion(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1918
    invoke-direct {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1919
    const/4 v0, 0x0

    return-object v0

    .line 1921
    :cond_0
    iget-object v1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 1922
    :try_start_0
    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1925
    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1928
    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v0

    .line 1921
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getNationalNumberWithPrefix(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 8
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v5, 0x0

    .line 3084
    if-nez p1, :cond_0

    .line 3085
    return-object v5

    .line 3087
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 3089
    .local v4, "regionCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 3091
    .local v1, "nationalNumber":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "001"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3094
    :cond_1
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 3095
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-direct {p0, v5, v4}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3097
    .local v0, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v2, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    .line 3098
    .local v3, "numberType":Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    const-string/jumbo v5, "CN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v3, v5, :cond_3

    .line 3099
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 3092
    .end local v0    # "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v2    # "nationalSignificantNumber":Ljava/lang/String;
    .end local v3    # "numberType":Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    :cond_2
    return-object v1

    .line 3101
    .restart local v0    # "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v2    # "nationalSignificantNumber":Ljava/lang/String;
    .restart local v3    # "numberType":Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    :cond_3
    return-object v1
.end method

.method public getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "0"

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1611
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1612
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1610
    .end local v0    # "nationalNumber":Ljava/lang/StringBuilder;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "stripNonDigits"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2117
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2118
    .local v0, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_1

    .line 2119
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 2120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid or missing region code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2121
    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    .line 2120
    .end local p1    # "regionCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2122
    const-string/jumbo v5, ") provided."

    .line 2120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2119
    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2123
    return-object v6

    .line 2125
    .restart local p1    # "regionCode":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v1

    .line 2127
    .local v1, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2128
    return-object v6

    .line 2130
    :cond_2
    if-eqz p2, :cond_3

    .line 2133
    const-string/jumbo v2, "~"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2135
    :cond_3
    return-object v1
.end method

.method getNumberDescByType(Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 2
    .param p1, "metadata"    # Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p2, "type"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    .line 1820
    invoke-static {}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->-getcom_meizu_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1843
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 1822
    :pswitch_0
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 1824
    :pswitch_1
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 1826
    :pswitch_2
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 1829
    :pswitch_3
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 1831
    :pswitch_4
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 1833
    :pswitch_5
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 1835
    :pswitch_6
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 1837
    :pswitch_7
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 1839
    :pswitch_8
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 1841
    :pswitch_9
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 1820
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public getNumberType(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 4
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1854
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1855
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1856
    .local v0, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 1857
    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v3

    .line 1859
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1860
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    return-object v3
.end method

.method public getRegionCodeForCountryCode(I)Ljava/lang/String;
    .locals 3
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2053
    iget-object v1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2054
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const-string/jumbo v1, "ZZ"

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRegionCodeForNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 8
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v7, 0x0

    .line 2013
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2014
    .local v0, "countryCode":I
    iget-object v3, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2015
    .local v2, "regions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 2016
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2017
    .local v1, "numberString":Ljava/lang/String;
    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 2018
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Missing/invalid country_code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") for number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2017
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2019
    return-object v7

    .line 2021
    .end local v1    # "numberString":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2022
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 2024
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumberFromRegionList(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getRegionCodesForCountryCode(I)Ljava/util/List;
    .locals 3
    .param p1, "countryCallingCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2063
    iget-object v1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2064
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 937
    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 929
    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isAlphaNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2173
    invoke-static {p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2175
    const/4 v1, 0x0

    return v1

    .line 2177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2178
    .local v0, "strippedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2179
    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method isLeadingZeroPossible(I)Z
    .locals 2
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2155
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 2154
    invoke-direct {p0, p1, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2156
    .local v0, "mainMetadataForCallingCode":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 2157
    const/4 v1, 0x0

    return v1

    .line 2159
    :cond_0
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isLeadingZeroPossible()Z

    move-result v1

    return v1
.end method

.method public isNANPACountry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isNumberGeographical(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 3
    .param p1, "phoneNumber"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v1, 0x1

    .line 972
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 975
    .local v0, "numberType":Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v0, v2, :cond_0

    .line 976
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v2, :cond_1

    .line 975
    :cond_0
    :goto_0
    return v1

    .line 976
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNumberMatch(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 6
    .param p1, "firstNumberIn"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumberIn"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2903
    new-instance v0, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2904
    .local v0, "firstNumber":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2905
    new-instance v2, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2906
    .local v2, "secondNumber":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, p2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2909
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2910
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2911
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2912
    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2913
    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2914
    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2915
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2916
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 2917
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2919
    :cond_0
    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2920
    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 2921
    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2924
    :cond_1
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2925
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2928
    :cond_2
    invoke-virtual {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 2929
    .local v1, "firstNumberCountryCode":I
    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    .line 2931
    .local v3, "secondNumberCountryCode":I
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    .line 2932
    invoke-virtual {v0, v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2933
    sget-object v4, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 2926
    .end local v1    # "firstNumberCountryCode":I
    .end local v3    # "secondNumberCountryCode":I
    :cond_3
    sget-object v4, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 2934
    .restart local v1    # "firstNumberCountryCode":I
    .restart local v3    # "secondNumberCountryCode":I
    :cond_4
    if-ne v1, v3, :cond_5

    .line 2935
    invoke-direct {p0, v0, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    .line 2934
    if-eqz v4, :cond_5

    .line 2939
    sget-object v4, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 2942
    :cond_5
    sget-object v4, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 2946
    :cond_6
    invoke-virtual {v0, v3}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2948
    invoke-virtual {v0, v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2949
    sget-object v4, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 2951
    :cond_7
    invoke-direct {p0, v0, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2952
    sget-object v4, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 2954
    :cond_8
    sget-object v4, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4
.end method

.method public isNumberMatch(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 12
    .param p1, "firstNumber"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Ljava/lang/String;

    .prologue
    .line 3020
    :try_start_0
    const-string/jumbo v0, "ZZ"

    invoke-virtual {p0, p2, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v10

    .line 3021
    .local v10, "secondNumberAsProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v10}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_0
    .catch Lcom/meizu/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 3022
    .end local v10    # "secondNumberAsProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v6

    .line 3023
    .local v6, "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v6}, Lcom/meizu/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v1, :cond_2

    .line 3027
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 3029
    .local v8, "firstNumberRegion":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v0, "ZZ"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3030
    invoke-virtual {p0, p2, v8}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v11

    .line 3031
    .local v11, "secondNumberWithFirstNumberRegion":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v11}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v9

    .line 3032
    .local v9, "match":Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v9, v0, :cond_0

    .line 3033
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v0

    .line 3035
    :cond_0
    return-object v9

    .line 3039
    .end local v9    # "match":Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .end local v11    # "secondNumberWithFirstNumberRegion":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_1
    new-instance v5, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v5}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3040
    .local v5, "secondNumberProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3041
    invoke-virtual {p0, p1, v5}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_1
    .catch Lcom/meizu/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 3043
    .end local v5    # "secondNumberProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1
    move-exception v7

    .line 3049
    .end local v8    # "firstNumberRegion":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v0
.end method

.method public isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 20
    .param p1, "firstNumber"    # Ljava/lang/String;
    .param p2, "secondNumber"    # Ljava/lang/String;

    .prologue
    .line 2980
    :try_start_0
    const-string/jumbo v3, "ZZ"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v18

    .line 2981
    .local v18, "firstNumberAsProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_0
    .catch Lcom/meizu/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2982
    .end local v18    # "firstNumberAsProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v15

    .line 2983
    .local v15, "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v15}, Lcom/meizu/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    sget-object v4, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v3, v4, :cond_0

    .line 2985
    :try_start_1
    const-string/jumbo v3, "ZZ"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v19

    .line 2986
    .local v19, "secondNumberAsProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_1
    .catch Lcom/meizu/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 2987
    .end local v19    # "secondNumberAsProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1
    move-exception v16

    .line 2988
    .local v16, "e2":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    invoke-virtual/range {v16 .. v16}, Lcom/meizu/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    sget-object v4, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v3, v4, :cond_0

    .line 2990
    :try_start_2
    new-instance v8, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v8}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2991
    .local v8, "firstNumberProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    new-instance v14, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v14}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2992
    .local v14, "secondNumberProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2993
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-direct/range {v9 .. v14}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2994
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_2
    .catch Lcom/meizu/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    return-object v3

    .line 2995
    .end local v8    # "firstNumberProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v14    # "secondNumberProto":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_2
    move-exception v17

    .line 3003
    .end local v16    # "e2":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    :cond_0
    sget-object v3, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v3
.end method

.method public isPossibleNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2189
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPossibleNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .prologue
    .line 2283
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcom/meizu/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2284
    :catch_0
    move-exception v0

    .line 2285
    .local v0, "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    return v1
.end method

.method public isPossibleNumberWithReason(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 10
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2232
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2233
    .local v3, "nationalNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2238
    .local v0, "countryCode":I
    invoke-direct {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2239
    sget-object v7, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v7

    .line 2241
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v6

    .line 2243
    .local v6, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v6}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2244
    .local v2, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 2246
    .local v1, "generalNumDesc":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2247
    sget-object v7, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v9, "Checking if number is possible with incomplete metadata."

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2248
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 2249
    .local v4, "numberLength":I
    const/4 v7, 0x2

    if-ge v4, v7, :cond_1

    .line 2250
    sget-object v7, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v7

    .line 2251
    :cond_1
    const/16 v7, 0x10

    if-le v4, v7, :cond_2

    .line 2252
    sget-object v7, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v7

    .line 2254
    :cond_2
    sget-object v7, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v7

    .line 2258
    .end local v4    # "numberLength":I
    :cond_3
    iget-object v7, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 2259
    .local v5, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-direct {p0, v5, v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v7

    return-object v7
.end method

.method public isValidNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1961
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 1962
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isValidNumberForRegion(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 9
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1982
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1983
    .local v0, "countryCode":I
    invoke-direct {p0, v0, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1984
    .local v2, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_0

    .line 1985
    const-string/jumbo v7, "001"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1986
    invoke-direct {p0, p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v7

    if-eq v0, v7, :cond_1

    .line 1989
    :cond_0
    return v6

    .line 1991
    :cond_1
    invoke-virtual {v2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 1992
    .local v1, "generalNumDesc":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1997
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1998
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 1999
    .local v4, "numberLength":I
    const/4 v7, 0x2

    if-le v4, v7, :cond_2

    const/16 v7, 0x10

    if-gt v4, v7, :cond_2

    :goto_0
    return v5

    :cond_2
    move v5, v6

    goto :goto_0

    .line 2001
    .end local v4    # "numberLength":I
    :cond_3
    invoke-direct {p0, v3, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v7

    sget-object v8, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v7, v8, :cond_4

    :goto_1
    return v5

    :cond_4
    move v5, v6

    goto :goto_1
.end method

.method loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p1, "filePrefix"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "countryCallingCode"    # I

    .prologue
    .line 582
    const-string/jumbo v9, "001"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 583
    .local v4, "isNonGeoRegion":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 584
    if-eqz v4, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 583
    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "fileName":Ljava/lang/String;
    const-class v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 586
    .local v8, "source":Ljava/io/InputStream;
    if-nez v8, :cond_1

    .line 587
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "missing metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 588
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "missing metadata: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v1    # "fileName":Ljava/lang/String;
    .end local v8    # "source":Ljava/io/InputStream;
    :cond_0
    move-object v9, p2

    .line 584
    goto :goto_0

    .line 590
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v8    # "source":Ljava/io/InputStream;
    :cond_1
    const/4 v2, 0x0

    .line 592
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v8}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v3, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v6, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v6}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 594
    .local v6, "metadataCollection":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v6, v3}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 595
    invoke-virtual {v6}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v7

    .line 596
    .local v7, "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 597
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "empty metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 598
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "empty metadata: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 609
    .end local v6    # "metadataCollection":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v7    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 610
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    :goto_1
    :try_start_2
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cannot load/parse metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 611
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "cannot load/parse metadata: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 612
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 613
    :goto_2
    invoke-static {v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->close(Ljava/io/InputStream;)V

    .line 612
    throw v9

    .line 600
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v6    # "metadataCollection":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .restart local v7    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :cond_2
    :try_start_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 601
    sget-object v9, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "invalid metadata (too many entries): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 603
    :cond_3
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 604
    .local v5, "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v4, :cond_4

    .line 605
    iget-object v9, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 613
    :goto_3
    invoke-static {v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->close(Ljava/io/InputStream;)V

    .line 581
    return-void

    .line 607
    :cond_4
    :try_start_4
    iget-object v9, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v9, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 612
    .end local v5    # "metadata":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v6    # "metadataCollection":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v7    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 609
    .local v2, "in":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method maybeExtractCountryCode(Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 15
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultRegionMetadata"    # Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "nationalNumber"    # Ljava/lang/StringBuilder;
    .param p4, "keepRawInput"    # Z
    .param p5, "phoneNumber"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2383
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_0

    .line 2384
    const/4 v12, 0x0

    return v12

    .line 2386
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2388
    .local v4, "fullNumber":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "NonMatch"

    .line 2389
    .local v7, "possibleCountryIddPrefix":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 2390
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    .line 2394
    :cond_1
    invoke-virtual {p0, v4, v7}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    .line 2395
    .local v1, "countryCodeSource":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    if-eqz p4, :cond_2

    .line 2396
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2398
    :cond_2
    sget-object v12, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v1, v12, :cond_5

    .line 2399
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x2

    if-gt v12, v13, :cond_3

    .line 2400
    new-instance v12, Lcom/meizu/i18n/phonenumbers/NumberParseException;

    sget-object v13, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2401
    const-string/jumbo v14, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    .line 2400
    invoke-direct {v12, v13, v14}, Lcom/meizu/i18n/phonenumbers/NumberParseException;-><init>(Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v12

    .line 2404
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {p0, v4, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v9

    .line 2405
    .local v9, "potentialCountryCode":I
    if-eqz v9, :cond_4

    .line 2406
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2407
    return v9

    .line 2412
    :cond_4
    new-instance v12, Lcom/meizu/i18n/phonenumbers/NumberParseException;

    sget-object v13, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2413
    const-string/jumbo v14, "Country calling code supplied was not recognised."

    .line 2412
    invoke-direct {v12, v13, v14}, Lcom/meizu/i18n/phonenumbers/NumberParseException;-><init>(Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v12

    .line 2414
    .end local v9    # "potentialCountryCode":I
    :cond_5
    if-eqz p2, :cond_9

    .line 2418
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v2

    .line 2419
    .local v2, "defaultCountryCode":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2420
    .local v3, "defaultCountryCodeString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2421
    .local v6, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2423
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2424
    .local v10, "potentialNationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    .line 2426
    .local v5, "generalDesc":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    iget-object v12, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

    invoke-virtual {v5}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 2428
    .local v11, "validNumberPattern":Ljava/util/regex/Pattern;
    const/4 v12, 0x0

    .line 2427
    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0, v12}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2430
    iget-object v12, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

    invoke-virtual {v5}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 2434
    .local v8, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_6

    .line 2435
    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    .line 2434
    if-nez v12, :cond_7

    .line 2436
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v8, v12}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v12

    .line 2437
    sget-object v13, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 2436
    if-ne v12, v13, :cond_9

    .line 2438
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2439
    if-eqz p4, :cond_8

    .line 2440
    sget-object v12, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2442
    :cond_8
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2443
    return v2

    .line 2448
    .end local v2    # "defaultCountryCode":I
    .end local v3    # "defaultCountryCodeString":Ljava/lang/String;
    .end local v5    # "generalDesc":Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v6    # "normalizedNumber":Ljava/lang/String;
    .end local v8    # "possibleNumberPattern":Ljava/util/regex/Pattern;
    .end local v10    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    .end local v11    # "validNumberPattern":Ljava/util/regex/Pattern;
    :cond_9
    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2449
    const/4 v12, 0x0

    return v12
.end method

.method maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2580
    sget-object v4, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2583
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2585
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 2586
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2589
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2590
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2591
    return-object v0

    .line 2585
    .end local v0    # "extension":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2595
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    const-string/jumbo v4, ""

    return-object v4
.end method

.method maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .locals 4
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "possibleIddPrefix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2491
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 2492
    sget-object v2, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object v2

    .line 2495
    :cond_0
    sget-object v2, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2496
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2497
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2499
    invoke-static {p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2500
    sget-object v2, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object v2

    .line 2503
    :cond_1
    iget-object v2, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

    invoke-virtual {v2, p2}, Lcom/meizu/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2504
    .local v0, "iddPattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2505
    invoke-direct {p0, v0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2506
    sget-object v2, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 2505
    :goto_0
    return-object v2

    .line 2507
    :cond_2
    sget-object v2, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0
.end method

.method maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z
    .locals 12
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "metadata"    # Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "carrierCode"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2522
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 2523
    .local v3, "numberLength":I
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v4

    .line 2524
    .local v4, "possibleNationalPrefix":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 2526
    :cond_0
    return v10

    .line 2529
    :cond_1
    iget-object v8, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

    invoke-virtual {v8, v4}, Lcom/meizu/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 2530
    .local v5, "prefixMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2532
    iget-object v8, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/meizu/i18n/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v9

    invoke-virtual {v9}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/meizu/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2534
    .local v1, "nationalNumberRule":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 2538
    .local v0, "isViableOriginalNumber":Z
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .line 2539
    .local v2, "numOfGroups":I
    invoke-virtual {p2}, Lcom/meizu/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixTransformRule()Ljava/lang/String;

    move-result-object v6

    .line 2540
    .local v6, "transformRule":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    .line 2543
    :cond_2
    if-eqz v0, :cond_3

    .line 2544
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2547
    :cond_3
    if-eqz p3, :cond_4

    if-lez v2, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2548
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2550
    :cond_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p1, v10, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2551
    return v11

    .line 2541
    :cond_5
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2555
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2556
    .local v7, "transformedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v3, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    if-eqz v0, :cond_6

    .line 2558
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2561
    :cond_6
    if-eqz p3, :cond_7

    if-le v2, v11, :cond_7

    .line 2562
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v10, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2565
    return v11

    .line 2545
    .end local v7    # "transformedNumber":Ljava/lang/StringBuilder;
    :cond_8
    return v10

    .line 2559
    .restart local v7    # "transformedNumber":Ljava/lang/StringBuilder;
    :cond_9
    return v10

    .line 2568
    .end local v0    # "isViableOriginalNumber":Z
    .end local v1    # "nationalNumberRule":Ljava/util/regex/Pattern;
    .end local v2    # "numOfGroups":I
    .end local v6    # "transformRule":Ljava/lang/String;
    .end local v7    # "transformedNumber":Ljava/lang/StringBuilder;
    :cond_a
    return v10
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2636
    new-instance v0, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2637
    .local v0, "phoneNumber":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2638
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2647
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2646
    return-void
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2667
    new-instance v0, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2668
    .local v0, "phoneNumber":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2669
    return-object v0
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    .line 2679
    invoke-direct/range {v0 .. v5}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2678
    return-void
.end method

.method public truncateTooLongNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 7
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v6, 0x1

    .line 2297
    invoke-virtual {p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2298
    return v6

    .line 2300
    :cond_0
    new-instance v2, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2301
    .local v2, "numberCopy":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2302
    invoke-virtual {p1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    .line 2304
    .local v0, "nationalNumber":J
    :cond_1
    const-wide/16 v4, 0xa

    div-long/2addr v0, v4

    .line 2305
    invoke-virtual {v2, v0, v1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2306
    invoke-virtual {p0, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v3

    sget-object v4, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v3, v4, :cond_2

    .line 2307
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_3

    .line 2308
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 2310
    :cond_3
    invoke-virtual {p0, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2311
    invoke-virtual {p1, v0, v1}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2312
    return v6
.end method
