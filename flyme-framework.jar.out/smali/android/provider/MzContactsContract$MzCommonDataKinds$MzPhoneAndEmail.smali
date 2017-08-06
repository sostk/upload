.class public final Landroid/provider/MzContactsContract$MzCommonDataKinds$MzPhoneAndEmail;
.super Ljava/lang/Object;
.source "MzContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract$MzCommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzPhoneAndEmail"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_GROUP_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_email"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone_email"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 563
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 564
    const-string/jumbo v1, "phones_emails"

    .line 562
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzCommonDataKinds$MzPhoneAndEmail;->CONTENT_URI:Landroid/net/Uri;

    .line 575
    sget-object v0, Landroid/provider/MzContactsContract$MzCommonDataKinds$MzPhoneAndEmail;->CONTENT_URI:Landroid/net/Uri;

    .line 576
    const-string/jumbo v1, "filter"

    .line 575
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzCommonDataKinds$MzPhoneAndEmail;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 578
    sget-object v0, Landroid/provider/MzContactsContract$MzCommonDataKinds$MzPhoneAndEmail;->CONTENT_URI:Landroid/net/Uri;

    .line 579
    const-string/jumbo v1, "group"

    .line 578
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzCommonDataKinds$MzPhoneAndEmail;->CONTENT_GROUP_URI:Landroid/net/Uri;

    .line 552
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
