.class public final Landroid/provider/MzFeature$ContactsFeature;
.super Landroid/provider/MzFeature;
.source "MzFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactsFeature"
.end annotation


# static fields
.field public static final FEATURE1_PLACE_HOLDER:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_AOSP_SUPPORT_SECONDAYR_LOCALE:Landroid/provider/MzFeature$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_MZ_ACCOUNTS_DEVICES_ONLY:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_MZ_ACCOUNTS_FLYME_LOGOUT_CLEAR:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_MZ_CONTACTS_ORGANIZATION_NOTE:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_MZ_CONTACTS_PHONE_NUMBER:Landroid/provider/MzFeature$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_MZ_CONTACTS_RECORD_TYPE:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_MZ_CONTCACTS_CONTACT_TYPE:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_MZ_CUSTOMIZED_BUCKET_INDEX:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_MZ_DISPALYPHOTO_STORE_ORIGINAL:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_MZ_GROUPS_SUMMARY_FILTER:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_MZ_GROUP_TITLE:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_MZ_SPEED_DIAL:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_MZ_USAGE_DEL_NUMBER:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_MZ_USAGE_DEL_RAWCONTACTS:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_MZ_VENDER_CONTACT:Landroid/provider/MzFeature$Feature;

.field public static final FEATURE_PLACE_HOLDER:Landroid/provider/MzFeature$Feature;

.field static feature1_max:J

.field private static feature_max:J

.field private static sInstance:Landroid/provider/MzFeature$ContactsFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x2

    .line 64
    sput-wide v6, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    .line 65
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_VENDER_CONTACT:Landroid/provider/MzFeature$Feature;

    .line 66
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_GROUP_TITLE:Landroid/provider/MzFeature$Feature;

    .line 67
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_GROUPS_SUMMARY_FILTER:Landroid/provider/MzFeature$Feature;

    .line 69
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_AOSP_SUPPORT_SECONDAYR_LOCALE:Landroid/provider/MzFeature$Feature;

    .line 70
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_CUSTOMIZED_BUCKET_INDEX:Landroid/provider/MzFeature$Feature;

    .line 71
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_DISPALYPHOTO_STORE_ORIGINAL:Landroid/provider/MzFeature$Feature;

    .line 72
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_CONTACTS_ORGANIZATION_NOTE:Landroid/provider/MzFeature$Feature;

    .line 74
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_CONTACTS_PHONE_NUMBER:Landroid/provider/MzFeature$Feature;

    .line 75
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_SPEED_DIAL:Landroid/provider/MzFeature$Feature;

    .line 76
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_CONTACTS_RECORD_TYPE:Landroid/provider/MzFeature$Feature;

    .line 77
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_CONTCACTS_CONTACT_TYPE:Landroid/provider/MzFeature$Feature;

    .line 78
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_USAGE_DEL_NUMBER:Landroid/provider/MzFeature$Feature;

    .line 79
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_USAGE_DEL_RAWCONTACTS:Landroid/provider/MzFeature$Feature;

    .line 80
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_ACCOUNTS_DEVICES_ONLY:Landroid/provider/MzFeature$Feature;

    .line 81
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_MZ_ACCOUNTS_FLYME_LOGOUT_CLEAR:Landroid/provider/MzFeature$Feature;

    .line 83
    new-instance v0, Landroid/provider/MzFeature$Feature0;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature0;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE_PLACE_HOLDER:Landroid/provider/MzFeature$Feature;

    .line 85
    sput-wide v6, Landroid/provider/MzFeature$ContactsFeature;->feature1_max:J

    .line 86
    new-instance v0, Landroid/provider/MzFeature$Feature1;

    sget-wide v2, Landroid/provider/MzFeature$ContactsFeature;->feature_max:J

    invoke-direct {v0, v2, v3}, Landroid/provider/MzFeature$Feature1;-><init>(J)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->FEATURE1_PLACE_HOLDER:Landroid/provider/MzFeature$Feature;

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/provider/MzFeature;-><init>()V

    .line 101
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/provider/MzFeature;->-wrap0(Landroid/content/Context;Landroid/net/Uri;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/provider/MzFeature$ContactsFeature;->mFeatures:[J

    .line 100
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/provider/MzFeature$ContactsFeature;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-class v1, Landroid/provider/MzFeature$ContactsFeature;

    monitor-enter v1

    .line 91
    if-nez p0, :cond_0

    monitor-exit v1

    .line 92
    return-object v0

    .line 94
    :cond_0
    :try_start_0
    sget-object v0, Landroid/provider/MzFeature$ContactsFeature;->sInstance:Landroid/provider/MzFeature$ContactsFeature;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Landroid/provider/MzFeature$ContactsFeature;

    invoke-direct {v0, p0}, Landroid/provider/MzFeature$ContactsFeature;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/provider/MzFeature$ContactsFeature;->sInstance:Landroid/provider/MzFeature$ContactsFeature;

    .line 97
    :cond_1
    sget-object v0, Landroid/provider/MzFeature$ContactsFeature;->sInstance:Landroid/provider/MzFeature$ContactsFeature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
