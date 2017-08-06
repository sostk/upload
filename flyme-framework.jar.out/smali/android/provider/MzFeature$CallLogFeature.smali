.class public final Landroid/provider/MzFeature$CallLogFeature;
.super Landroid/provider/MzFeature;
.source "MzFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallLogFeature"
.end annotation


# static fields
.field public static final FEATURE_MZ_CALLS_SYNC:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_PLACE_HOLDER:Landroid/provider/MzFeature$Feature;

.field private static feature_max:J

.field private static sInstance:Landroid/provider/MzFeature$CallLogFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 106
    const-wide/16 v0, 0x1

    sput-wide v0, Landroid/provider/MzFeature$CallLogFeature;->feature_max:J

    .line 107
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$CallLogFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$CallLogFeature;->FEATURE_MZ_CALLS_SYNC:Landroid/provider/MzFeature$Feature;

    .line 108
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$CallLogFeature;->feature_max:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$CallLogFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$CallLogFeature;->FEATURE_PLACE_HOLDER:Landroid/provider/MzFeature$Feature;

    .line 105
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/provider/MzFeature;-><init>()V

    .line 123
    sget-object v0, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/provider/MzFeature;->-wrap0(Landroid/content/Context;Landroid/net/Uri;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/provider/MzFeature$CallLogFeature;->mFeatures:[J

    .line 122
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/provider/MzFeature$CallLogFeature;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-class v1, Landroid/provider/MzFeature$CallLogFeature;

    monitor-enter v1

    .line 113
    if-nez p0, :cond_0

    monitor-exit v1

    .line 114
    return-object v0

    .line 116
    :cond_0
    :try_start_0
    sget-object v0, Landroid/provider/MzFeature$CallLogFeature;->sInstance:Landroid/provider/MzFeature$CallLogFeature;

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Landroid/provider/MzFeature$CallLogFeature;

    invoke-direct {v0, p0}, Landroid/provider/MzFeature$CallLogFeature;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/provider/MzFeature$CallLogFeature;->sInstance:Landroid/provider/MzFeature$CallLogFeature;

    .line 119
    :cond_1
    sget-object v0, Landroid/provider/MzFeature$CallLogFeature;->sInstance:Landroid/provider/MzFeature$CallLogFeature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
