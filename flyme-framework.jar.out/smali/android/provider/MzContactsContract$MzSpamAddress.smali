.class public final Landroid/provider/MzContactsContract$MzSpamAddress;
.super Ljava/lang/Object;
.source "MzContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$BaseSyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzSpamAddress"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final CLOUD_VERSION:Ljava/lang/String; = "cloud_version"

.field public static final CONTENT_CLOUD_VERSION_URI:Landroid/net/Uri;

.field public static final CONTENT_CUSTOMER_URI:Landroid/net/Uri;

.field public static final CONTENT_NOTIFY_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GENERATED_BY_CLOUD:I = 0x2

.field public static final GENERATED_BY_CUSTOMER:I = 0x1

.field public static final NOTIFY_CLOUD_VERSION_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final STANDARD_NUMBER:Ljava/lang/String; = "standard_number"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UUID:Ljava/lang/String; = "uuid"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1220
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 1221
    const-string/jumbo v1, "spam_address"

    .line 1220
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzSpamAddress;->CONTENT_URI:Landroid/net/Uri;

    .line 1223
    sget-object v0, Landroid/provider/MzContactsContract$MzSpamAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "customer"

    .line 1222
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzSpamAddress;->CONTENT_CUSTOMER_URI:Landroid/net/Uri;

    .line 1226
    sget-object v0, Landroid/provider/MzContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    .line 1227
    const-string/jumbo v1, "spam_address"

    .line 1226
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzSpamAddress;->CONTENT_NOTIFY_URI:Landroid/net/Uri;

    .line 1229
    sget-object v0, Landroid/provider/MzContactsContract$MzSpamAddress;->CONTENT_URI:Landroid/net/Uri;

    .line 1230
    const-string/jumbo v1, "cloud_version"

    .line 1229
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzSpamAddress;->CONTENT_CLOUD_VERSION_URI:Landroid/net/Uri;

    .line 1234
    sget-object v0, Landroid/provider/MzContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    const-string/jumbo v1, "cloud_version"

    .line 1233
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzSpamAddress;->NOTIFY_CLOUD_VERSION_URI:Landroid/net/Uri;

    .line 1243
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1244
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "address"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1243
    sput-object v0, Landroid/provider/MzContactsContract$MzSpamAddress;->PROJECTION:[Ljava/lang/String;

    .line 1218
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
