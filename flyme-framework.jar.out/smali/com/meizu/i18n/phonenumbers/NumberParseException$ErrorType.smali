.class public final enum Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;
.super Ljava/lang/Enum;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/i18n/phonenumbers/NumberParseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum INVALID_COUNTRY_CODE:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum NOT_A_NUMBER:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum TOO_LONG:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum TOO_SHORT_AFTER_IDD:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum TOO_SHORT_NSN:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string/jumbo v1, "INVALID_COUNTRY_CODE"

    invoke-direct {v0, v1, v2}, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 28
    new-instance v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string/jumbo v1, "NOT_A_NUMBER"

    invoke-direct {v0, v1, v3}, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 32
    new-instance v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string/jumbo v1, "TOO_SHORT_AFTER_IDD"

    invoke-direct {v0, v1, v4}, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 36
    new-instance v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string/jumbo v1, "TOO_SHORT_NSN"

    invoke-direct {v0, v1, v5}, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 39
    new-instance v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string/jumbo v1, "TOO_LONG"

    invoke-direct {v0, v1, v6}, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    sget-object v1, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->$VALUES:[Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;->$VALUES:[Lcom/meizu/i18n/phonenumbers/NumberParseException$ErrorType;

    return-object v0
.end method
