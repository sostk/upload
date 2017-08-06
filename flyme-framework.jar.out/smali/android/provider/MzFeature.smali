.class public abstract Landroid/provider/MzFeature;
.super Ljava/lang/Object;
.source "MzFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MzFeature$Feature;,
        Landroid/provider/MzFeature$Feature0;,
        Landroid/provider/MzFeature$Feature1;,
        Landroid/provider/MzFeature$ContactsFeature;,
        Landroid/provider/MzFeature$CallLogFeature;
    }
.end annotation


# static fields
.field public static final MZ_FEATURE_KEY:Ljava/lang/String; = "mz_feature_key"

.field public static final MZ_FEATURE_METHOD:Ljava/lang/String; = "mz_feature_method"


# instance fields
.field protected mFeatures:[J


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Landroid/net/Uri;)[J
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-static {p0, p1}, Landroid/provider/MzFeature;->getAllFeature(Landroid/content/Context;Landroid/net/Uri;)[J

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllFeature(Landroid/content/Context;Landroid/net/Uri;)[J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 42
    const-string/jumbo v3, "mz_feature_method"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 41
    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "allFeature":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v2, "mz_feature_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 46
    .end local v0    # "allFeature":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v6
.end method


# virtual methods
.method public hasFeature(Landroid/provider/MzFeature$Feature;)Z
    .locals 6
    .param p1, "feature"    # Landroid/provider/MzFeature$Feature;

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "offset":I
    instance-of v2, p1, Landroid/provider/MzFeature$Feature0;

    if-eqz v2, :cond_2

    .line 55
    const/4 v0, 0x0

    .line 59
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/provider/MzFeature;->mFeatures:[J

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/provider/MzFeature;->mFeatures:[J

    array-length v2, v2

    if-le v2, v0, :cond_1

    .line 60
    iget-object v2, p0, Landroid/provider/MzFeature;->mFeatures:[J

    aget-wide v2, v2, v0

    iget-wide v4, p1, Landroid/provider/MzFeature$Feature;->value:J

    and-long/2addr v2, v4

    iget-wide v4, p1, Landroid/provider/MzFeature$Feature;->value:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 59
    :cond_1
    return v1

    .line 56
    :cond_2
    instance-of v2, p1, Landroid/provider/MzFeature$Feature1;

    if-eqz v2, :cond_0

    .line 57
    const/4 v0, 0x1

    goto :goto_0
.end method
