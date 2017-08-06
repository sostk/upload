.class public final Landroid/provider/MzContactsContract$MzAccounts;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzAccounts"
.end annotation


# static fields
.field public static final DEVICES_ONLY_ACCOUNT:Landroid/accounts/Account;

.field private static final DEVICES_ONLY_ACCOUNT_NAME:Ljava/lang/String; = "DeviceOnly"

.field private static final DEVICES_ONLY_ACCOUNT_TYPE:Ljava/lang/String; = "DeviceOnly"

.field public static final FLYME_ACCOUNT_TYPE:Ljava/lang/String; = "com.meizu.account"

.field public static final SIM_ACCOUNT_TYPE:Ljava/lang/String; = "com.meizu.sim"

.field public static final SINA_ACCOUNT_TYPE:Ljava/lang/String; = "com.meizu.sns.sina"

.field public static final VENDER_ACCOUNT:Landroid/accounts/Account;

.field private static final VENDER_ACCOUNT_NAME:Ljava/lang/String; = "account.vender"

.field public static final VENDER_ACCOUNT_TYPE:Ljava/lang/String; = "account.vender"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1270
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "DeviceOnly"

    const-string/jumbo v2, "DeviceOnly"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    sput-object v0, Landroid/provider/MzContactsContract$MzAccounts;->DEVICES_ONLY_ACCOUNT:Landroid/accounts/Account;

    .line 1275
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "account.vender"

    const-string/jumbo v2, "account.vender"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    sput-object v0, Landroid/provider/MzContactsContract$MzAccounts;->VENDER_ACCOUNT:Landroid/accounts/Account;

    .line 1256
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDeviceOnlyAccount([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 6
    .param p0, "accounts"    # [Landroid/accounts/Account;

    .prologue
    const/4 v4, 0x0

    .line 1278
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    new-array v3, v5, [Landroid/accounts/Account;

    .line 1279
    .local v3, "newAccount":[Landroid/accounts/Account;
    sget-object v5, Landroid/provider/MzContactsContract$MzAccounts;->DEVICES_ONLY_ACCOUNT:Landroid/accounts/Account;

    aput-object v5, v3, v4

    .line 1280
    const/4 v1, 0x1

    .line 1281
    .local v1, "i":I
    array-length v5, p0

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, p0, v4

    .line 1282
    .local v0, "account":Landroid/accounts/Account;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-object v0, v3, v2

    .line 1281
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1284
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-object v3
.end method

.method public static isFlymeAccount(Landroid/accounts/Account;)Z
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1288
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v1, "com.meizu.account"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    const/4 v0, 0x1

    return v0

    .line 1291
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
