.class public final Landroid/provider/MzContactsContract$MzCommonDataKinds$MzPhone;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract$MzCommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzPhone"
.end annotation


# static fields
.field public static final CONTENT_GROUP_URI:Landroid/net/Uri;

.field public static final CONVERT_LETTERS:Ljava/lang/String; = "convert_letters"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 453
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 454
    const-string/jumbo v1, "group"

    .line 453
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzCommonDataKinds$MzPhone;->CONTENT_GROUP_URI:Landroid/net/Uri;

    .line 441
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
