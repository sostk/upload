.class public final Landroid/provider/MzContactsContract$MzSpeedDial;
.super Ljava/lang/Object;
.source "MzContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumns;
.implements Landroid/provider/ContactsContract$RawContactsColumns;
.implements Landroid/provider/ContactsContract$ContactsColumns;
.implements Landroid/provider/ContactsContract$ContactNameColumns;
.implements Landroid/provider/ContactsContract$ContactOptionsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzSpeedDial"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.meizu.speed_dial"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ID:Ljava/lang/String; = "data_id"

.field public static final KEY_NUMBER:Ljava/lang/String; = "key_number"

.field public static final SHORTHAND_NAME:Ljava/lang/String; = "shorthand_name"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1302
    const-string/jumbo v0, "content://com.meizu.speed_dial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzSpeedDial;->AUTHORITY_URI:Landroid/net/Uri;

    .line 1303
    sget-object v0, Landroid/provider/MzContactsContract$MzSpeedDial;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "speed_dial"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzSpeedDial;->CONTENT_URI:Landroid/net/Uri;

    .line 1298
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
