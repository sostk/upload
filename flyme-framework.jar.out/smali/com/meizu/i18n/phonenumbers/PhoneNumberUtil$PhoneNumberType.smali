.class public final enum Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum FIXED_LINE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum FIXED_LINE_OR_MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum PAGER:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum PERSONAL_NUMBER:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum PREMIUM_RATE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum SHARED_COST:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum TOLL_FREE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum UAN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum UNKNOWN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum VOICEMAIL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum VOIP:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 402
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string/jumbo v1, "FIXED_LINE"

    invoke-direct {v0, v1, v3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 403
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string/jumbo v1, "MOBILE"

    invoke-direct {v0, v1, v4}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 404
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string/jumbo v1, "FIXED_LINE_OR_MOBILE"

    invoke-direct {v0, v1, v5}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    .line 406
    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 407
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string/jumbo v1, "TOLL_FREE"

    invoke-direct {v0, v1, v6}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    .line 408
    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 409
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string/jumbo v1, "PREMIUM_RATE"

    invoke-direct {v0, v1, v7}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 410
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string/jumbo v1, "SHARED_COST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    .line 413
    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 414
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string/jumbo v1, "VOIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    .line 415
    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 416
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string/jumbo v1, "PERSONAL_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    .line 419
    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 420
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string/jumbo v1, "PAGER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 421
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string/jumbo v1, "UAN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    .line 423
    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 424
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string/jumbo v1, "VOICEMAIL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    .line 425
    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 426
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    .line 428
    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 401
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->$VALUES:[Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 401
    const-class v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0
.end method

.method public static values()[Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->$VALUES:[Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0
.end method
