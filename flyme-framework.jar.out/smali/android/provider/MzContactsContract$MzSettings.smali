.class public final Landroid/provider/MzContactsContract$MzSettings;
.super Ljava/lang/Object;
.source "MzContactsContract.java"

# interfaces
.implements Landroid/provider/MzContactsContract$MzSettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzSettings"
.end annotation


# static fields
.field public static final CONTENT_NOTIFY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 892
    sget-object v0, Landroid/provider/MzContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    .line 893
    const-string/jumbo v1, "settings"

    .line 892
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzSettings;->CONTENT_NOTIFY_URI:Landroid/net/Uri;

    .line 881
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
