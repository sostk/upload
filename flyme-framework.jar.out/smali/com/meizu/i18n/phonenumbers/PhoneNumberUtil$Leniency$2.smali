.class final enum Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;
.super Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;)V

    return-void
.end method


# virtual methods
.method verify(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 1
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/String;
    .param p3, "util"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    .line 476
    invoke-virtual {p3, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-static {p1, p2, p3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatcher;->containsOnlyValidXChars(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-static {p1, p3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatcher;->isNationalPrefixPresentIfRequired(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    return v0

    .line 478
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
