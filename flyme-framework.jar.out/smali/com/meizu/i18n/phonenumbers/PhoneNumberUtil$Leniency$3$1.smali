.class Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency$3$1;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"

# interfaces
.implements Lcom/meizu/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;->verify(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;


# direct methods
.method constructor <init>(Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;)V
    .locals 0
    .param p1, "this$2"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency$3$1;->this$2:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkGroups(Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "util"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;
    .param p2, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p3, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p4, "expectedNumberGroups"    # [Ljava/lang/String;

    .prologue
    .line 508
    invoke-static {p1, p2, p3, p4}, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatcher;->allNumberGroupsRemainGrouped(Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
