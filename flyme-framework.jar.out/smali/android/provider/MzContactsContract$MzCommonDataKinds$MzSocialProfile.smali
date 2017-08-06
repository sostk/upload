.class public final Landroid/provider/MzContactsContract$MzCommonDataKinds$MzSocialProfile;
.super Ljava/lang/Object;
.source "MzContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract$MzCommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzSocialProfile"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/social_profile"

.field public static final CONTENT_LOOKUP_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SCREEN_NAME:Ljava/lang/String; = "data1"

.field public static final TYPE_DEFAULT_SNS:I = 0x0

.field public static final TYPE_MULTI_SNS:I = -0x1

.field public static final TYPE_OTHER:I = 0x2

.field public static final TYPE_SINA_WEIBO:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 600
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 601
    const-string/jumbo v1, "social_profile"

    .line 599
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzCommonDataKinds$MzSocialProfile;->CONTENT_URI:Landroid/net/Uri;

    .line 604
    sget-object v0, Landroid/provider/MzContactsContract$MzCommonDataKinds$MzSocialProfile;->CONTENT_URI:Landroid/net/Uri;

    .line 605
    const-string/jumbo v1, "lookup"

    .line 604
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzCommonDataKinds$MzSocialProfile;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 608
    sget-object v0, Landroid/provider/MzContactsContract$MzCommonDataKinds$MzSocialProfile;->CONTENT_URI:Landroid/net/Uri;

    .line 609
    const-string/jumbo v1, "filter"

    .line 608
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzCommonDataKinds$MzSocialProfile;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 582
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSNSType(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "typeSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 666
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 667
    :cond_0
    return v1

    .line 668
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 669
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 675
    return v2

    .line 671
    :pswitch_0
    return v2

    .line 673
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 678
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 669
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 656
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    :cond_0
    invoke-static {p1}, Landroid/provider/MzContactsContract$MzCommonDataKinds$MzSocialProfile;->getTypeLabelResource(I)I

    move-result v0

    .line 660
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 657
    .end local v0    # "labelRes":I
    :cond_1
    return-object p2
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 638
    packed-switch p0, :pswitch_data_0

    .line 644
    sget v0, Lcom/flyme/internal/R$string;->socialProfileTypeCustom:I

    return v0

    .line 640
    :pswitch_0
    sget v0, Lcom/flyme/internal/R$string;->socialProfileTypeSinaWeibo:I

    return v0

    .line 642
    :pswitch_1
    sget v0, Lcom/flyme/internal/R$string;->socialProfileTypeOther:I

    return v0

    .line 638
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final isSnsEnable(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 684
    return v0
.end method
