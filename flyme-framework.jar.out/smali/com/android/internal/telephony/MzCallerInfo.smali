.class public Lcom/android/internal/telephony/MzCallerInfo;
.super Lcom/android/internal/telephony/CallerInfo;
.source "MzCallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MzCallerInfo$UpdateLocationListener;,
        Lcom/android/internal/telephony/MzCallerInfo$1;
    }
.end annotation


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final QUERY_LOCATION_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MzCallerInfo"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field private static final VDBG:Z = true

.field private static mCurrentCountryIso:Ljava/lang/String;


# instance fields
.field public PhotoId:J

.field public PhotoUri:Ljava/lang/String;

.field public contactType:I

.field public extAttributes:I

.field public firstName:Ljava/lang/String;

.field public isDirectoryContact:Z

.field public isTimeoutRet:Z

.field private final mHandler:Landroid/os/Handler;

.field public orgTag:Ljava/lang/String;

.field public recordType:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/MzCallerInfo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MzCallerInfo;->queryGeocodeLocationForNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/MzCallerInfo;->mCurrentCountryIso:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/telephony/MzCallerInfo;->isDirectoryContact:Z

    .line 65
    iput v1, p0, Lcom/android/internal/telephony/MzCallerInfo;->contactType:I

    .line 67
    iput v1, p0, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    .line 762
    new-instance v0, Lcom/android/internal/telephony/MzCallerInfo$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/MzCallerInfo$1;-><init>(Lcom/android/internal/telephony/MzCallerInfo;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MzCallerInfo;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/internal/telephony/MzCallerInfo;

    .prologue
    const/4 v2, 0x0

    .line 696
    iget-boolean v0, p2, Lcom/android/internal/telephony/MzCallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    .line 697
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    .line 696
    if-eqz v0, :cond_0

    .line 698
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 699
    .local v6, "username":Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 701
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 700
    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 702
    .local v1, "contactRef":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/MzCallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object p2

    .line 703
    const-string/jumbo v0, "MzCallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "contactRef :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "previousResult"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .end local v1    # "contactRef":Landroid/net/Uri;
    .end local v6    # "username":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method private static getAllowMemberCIs(Ljava/util/ArrayList;[J)Ljava/util/ArrayList;
    .locals 10
    .param p1, "allowedMemIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MzCallerInfo;",
            ">;[J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MzCallerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "ciArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v0, "allowedMemberCIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "curCI$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/MzCallerInfo;

    .line 514
    .local v1, "curCI":Lcom/android/internal/telephony/MzCallerInfo;
    const/4 v3, 0x0

    array-length v6, p1

    :goto_0
    if-ge v3, v6, :cond_0

    aget-wide v4, p1, v3

    .line 515
    .local v4, "pid":J
    iget-wide v8, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    cmp-long v7, v8, v4

    if-nez v7, :cond_1

    .line 516
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 520
    .end local v1    # "curCI":Lcom/android/internal/telephony/MzCallerInfo;
    .end local v4    # "pid":J
    :cond_2
    const-string/jumbo v3, "MzCallerInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "allowedMemberCIs :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-object v0
.end method

.method private static getCallInfosDistinctPersionId(Landroid/net/Uri;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 25
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MzCallerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    const-string/jumbo v22, "MzCallerInfo"

    const-string/jumbo v23, "construct callerInfo array from cursor"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v4, "ciArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    if-nez p1, :cond_0

    return-object v4

    .line 568
    :cond_0
    :try_start_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 569
    .local v9, "idSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 570
    .local v7, "count":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v7, v0, :cond_1

    const-string/jumbo v22, "MzCallerInfo"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "cursor count = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_1
    const-string/jumbo v22, "display_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 573
    .local v13, "nameIndex":I
    invoke-static/range {p0 .. p1}, Lcom/android/internal/telephony/MzCallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v18

    .line 574
    .local v18, "personIdIndex":I
    const-string/jumbo v22, "number"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 575
    .local v19, "phoneNumberIndex":I
    const-string/jumbo v22, "label"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 576
    .local v15, "numberLabelIndex":I
    const-string/jumbo v22, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 577
    .local v16, "numberTypeIndex":I
    const-string/jumbo v22, "custom_ringtone"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 578
    .local v5, "contactRingtoneUriIndex":I
    const-string/jumbo v22, "send_to_voicemail"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 579
    .local v21, "shouldSendToVoicemailIndex":I
    const-string/jumbo v22, "normalized_number"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 580
    .local v14, "normalizeNumIndex":I
    const-string/jumbo v22, "organization_note"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 581
    .local v17, "orgTagIndex":I
    const-string/jumbo v22, "photo_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 582
    .local v2, "PhotoId":I
    const-string/jumbo v22, "photo_uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 583
    .local v3, "PhotoUri":I
    const-string/jumbo v22, "record_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 584
    .local v20, "recordTypeindex":I
    const-string/jumbo v22, "contact_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 585
    .local v6, "contactTypeindex":I
    const-string/jumbo v22, "in_visible_group"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 587
    .local v10, "inVisibleGroupIndex":I
    const-string/jumbo v22, "lookup"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 590
    .local v12, "lookupkeyIndex":I
    :cond_2
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 591
    new-instance v11, Lcom/android/internal/telephony/MzCallerInfo;

    invoke-direct {v11}, Lcom/android/internal/telephony/MzCallerInfo;-><init>()V

    .line 593
    .local v11, "info":Lcom/android/internal/telephony/MzCallerInfo;
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v13, v0, :cond_3

    .line 594
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    .line 597
    :cond_3
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_4

    .line 598
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->PhotoId:J

    .line 601
    :cond_4
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v3, v0, :cond_5

    .line 602
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->PhotoUri:Ljava/lang/String;

    .line 606
    :cond_5
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v14, v0, :cond_6

    .line 607
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 610
    :cond_6
    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 611
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    .line 612
    iget-wide v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 615
    iget-wide v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 620
    :goto_1
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 621
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 624
    :cond_7
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v5, v0, :cond_f

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_f

    .line 625
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 630
    :goto_2
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 631
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->orgTag:Ljava/lang/String;

    .line 633
    :cond_8
    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 634
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    .line 636
    :cond_9
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_a

    .line 637
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->contactType:I

    .line 640
    :cond_a
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v12, v0, :cond_b

    .line 641
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->lookupKey:Ljava/lang/String;

    .line 647
    :cond_b
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    const/16 v22, 0x1

    :goto_3
    move/from16 v0, v22

    iput-boolean v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->shouldSendToVoicemail:Z

    .line 649
    const/16 v22, 0x1

    move/from16 v0, v22

    iput-boolean v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->contactExists:Z

    .line 651
    const/16 v22, 0x0

    move/from16 v0, v22

    iput-boolean v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->needUpdate:Z

    .line 652
    iget-object v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/MzCallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    .line 653
    move-object/from16 v0, p0

    iput-object v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 655
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 658
    .end local v2    # "PhotoId":I
    .end local v3    # "PhotoUri":I
    .end local v5    # "contactRingtoneUriIndex":I
    .end local v6    # "contactTypeindex":I
    .end local v7    # "count":I
    .end local v9    # "idSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v10    # "inVisibleGroupIndex":I
    .end local v11    # "info":Lcom/android/internal/telephony/MzCallerInfo;
    .end local v12    # "lookupkeyIndex":I
    .end local v13    # "nameIndex":I
    .end local v14    # "normalizeNumIndex":I
    .end local v15    # "numberLabelIndex":I
    .end local v16    # "numberTypeIndex":I
    .end local v17    # "orgTagIndex":I
    .end local v18    # "personIdIndex":I
    .end local v19    # "phoneNumberIndex":I
    .end local v20    # "recordTypeindex":I
    .end local v21    # "shouldSendToVoicemailIndex":I
    :catch_0
    move-exception v8

    .line 659
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    if-eqz p1, :cond_c

    .line 662
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 665
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_4
    return-object v4

    .line 617
    .restart local v2    # "PhotoId":I
    .restart local v3    # "PhotoUri":I
    .restart local v5    # "contactRingtoneUriIndex":I
    .restart local v6    # "contactTypeindex":I
    .restart local v7    # "count":I
    .restart local v9    # "idSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v10    # "inVisibleGroupIndex":I
    .restart local v11    # "info":Lcom/android/internal/telephony/MzCallerInfo;
    .restart local v12    # "lookupkeyIndex":I
    .restart local v13    # "nameIndex":I
    .restart local v14    # "normalizeNumIndex":I
    .restart local v15    # "numberLabelIndex":I
    .restart local v16    # "numberTypeIndex":I
    .restart local v17    # "orgTagIndex":I
    .restart local v18    # "personIdIndex":I
    .restart local v19    # "phoneNumberIndex":I
    .restart local v20    # "recordTypeindex":I
    .restart local v21    # "shouldSendToVoicemailIndex":I
    :cond_d
    :try_start_2
    const-string/jumbo v22, "MzCallerInfo"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "person_id column missing for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 660
    .end local v2    # "PhotoId":I
    .end local v3    # "PhotoUri":I
    .end local v5    # "contactRingtoneUriIndex":I
    .end local v6    # "contactTypeindex":I
    .end local v7    # "count":I
    .end local v9    # "idSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v10    # "inVisibleGroupIndex":I
    .end local v11    # "info":Lcom/android/internal/telephony/MzCallerInfo;
    .end local v12    # "lookupkeyIndex":I
    .end local v13    # "nameIndex":I
    .end local v14    # "normalizeNumIndex":I
    .end local v15    # "numberLabelIndex":I
    .end local v16    # "numberTypeIndex":I
    .end local v17    # "orgTagIndex":I
    .end local v18    # "personIdIndex":I
    .end local v19    # "phoneNumberIndex":I
    .end local v20    # "recordTypeindex":I
    .end local v21    # "shouldSendToVoicemailIndex":I
    :catchall_0
    move-exception v22

    .line 661
    if-eqz p1, :cond_e

    .line 662
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 660
    :cond_e
    throw v22

    .line 627
    .restart local v2    # "PhotoId":I
    .restart local v3    # "PhotoUri":I
    .restart local v5    # "contactRingtoneUriIndex":I
    .restart local v6    # "contactTypeindex":I
    .restart local v7    # "count":I
    .restart local v9    # "idSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v10    # "inVisibleGroupIndex":I
    .restart local v11    # "info":Lcom/android/internal/telephony/MzCallerInfo;
    .restart local v12    # "lookupkeyIndex":I
    .restart local v13    # "nameIndex":I
    .restart local v14    # "normalizeNumIndex":I
    .restart local v15    # "numberLabelIndex":I
    .restart local v16    # "numberTypeIndex":I
    .restart local v17    # "orgTagIndex":I
    .restart local v18    # "personIdIndex":I
    .restart local v19    # "phoneNumberIndex":I
    .restart local v20    # "recordTypeindex":I
    .restart local v21    # "shouldSendToVoicemailIndex":I
    :cond_f
    const/16 v22, 0x0

    :try_start_3
    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/internal/telephony/MzCallerInfo;->contactRingtoneUri:Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 647
    :cond_10
    const/16 v22, 0x0

    goto :goto_3

    .line 661
    .end local v11    # "info":Lcom/android/internal/telephony/MzCallerInfo;
    :cond_11
    if-eqz p1, :cond_c

    .line 662
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 87
    new-instance v1, Lcom/android/internal/telephony/MzCallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/MzCallerInfo;-><init>()V

    .line 88
    .local v1, "info":Lcom/android/internal/telephony/MzCallerInfo;
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->photoResource:I

    .line 89
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->phoneLabel:Ljava/lang/String;

    .line 90
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->numberType:I

    .line 91
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->numberLabel:Ljava/lang/String;

    .line 92
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 93
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->isCachedPhotoCurrent:Z

    .line 94
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactExists:Z

    .line 96
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    .line 97
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactType:I

    .line 98
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->isDirectoryContact:Z

    .line 101
    const-string/jumbo v5, "MzCallerInfo"

    const-string/jumbo v6, "getCallerInfo() based on cursor..."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz p2, :cond_8

    .line 104
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 112
    const-string/jumbo v5, "display_name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "columnIndex":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 114
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    .line 118
    :cond_0
    const-string/jumbo v5, "number"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 119
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 120
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 124
    :cond_1
    const-string/jumbo v5, "normalized_number"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 125
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 126
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 130
    :cond_2
    const-string/jumbo v5, "label"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 131
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 132
    const-string/jumbo v5, "type"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 133
    .local v4, "typeColumnIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 134
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->numberType:I

    .line 135
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->numberLabel:Ljava/lang/String;

    .line 137
    iget v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->numberType:I

    iget-object v6, v1, Lcom/android/internal/telephony/MzCallerInfo;->numberLabel:Ljava/lang/String;

    .line 136
    invoke-static {p0, v5, v6}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->phoneLabel:Ljava/lang/String;

    .line 143
    .end local v4    # "typeColumnIndex":I
    :cond_3
    invoke-static {p1, p2}, Lcom/android/internal/telephony/MzCallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    .line 144
    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    .line 145
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 146
    .local v2, "contactId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_4

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 161
    .end local v2    # "contactId":J
    :cond_4
    :goto_0
    const-string/jumbo v5, "lookup"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 162
    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    .line 163
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->lookupKey:Ljava/lang/String;

    .line 167
    :cond_5
    const-string/jumbo v5, "photo_uri"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 168
    const/4 v5, -0x1

    if-eq v0, v5, :cond_b

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 169
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 176
    :goto_1
    const-string/jumbo v5, "custom_ringtone"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 177
    const/4 v5, -0x1

    if-eq v0, v5, :cond_c

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 178
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 185
    :goto_2
    const-string/jumbo v5, "send_to_voicemail"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 186
    const/4 v5, -0x1

    if-eq v0, v5, :cond_e

    .line 187
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    const/4 v5, 0x1

    .line 186
    :goto_3
    iput-boolean v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->shouldSendToVoicemail:Z

    .line 188
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactExists:Z

    .line 190
    const-string/jumbo v5, "record_type"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 191
    const/4 v5, -0x1

    if-eq v0, v5, :cond_6

    .line 192
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    .line 194
    :cond_6
    const-string/jumbo v5, "contact_type"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 195
    const/4 v5, -0x1

    if-eq v0, v5, :cond_7

    .line 196
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactType:I

    .line 200
    .end local v0    # "columnIndex":I
    :cond_7
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 201
    const/4 p2, 0x0

    .line 204
    .end local p2    # "cursor":Landroid/database/Cursor;
    :cond_8
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->needUpdate:Z

    .line 205
    iget-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/MzCallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    .line 206
    iput-object p1, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 208
    return-object v1

    .line 147
    .restart local v0    # "columnIndex":I
    .restart local v2    # "contactId":J
    .restart local p2    # "cursor":Landroid/database/Cursor;
    :cond_9
    iput-wide v2, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    .line 149
    const-string/jumbo v5, "MzCallerInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "==> got info.contactIdOrZero: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 154
    .end local v2    # "contactId":J
    :cond_a
    const-string/jumbo v5, "MzCallerInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t find contact_id column for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 171
    :cond_b
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 180
    :cond_c
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto/16 :goto_2

    .line 187
    :cond_d
    const/4 v5, 0x0

    goto :goto_3

    .line 186
    :cond_e
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public static getCallerInfoViaNumber(Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 9
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 466
    const/4 v0, 0x0

    .line 482
    .local v0, "allowedMemIds":[J
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MzCallerInfo;->getCallInfosDistinctPersionId(Landroid/net/Uri;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    .line 483
    .local v1, "candidateArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    const-string/jumbo v4, "MzCallerInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "candidateArray :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 485
    new-instance v2, Lcom/android/internal/telephony/MzCallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/MzCallerInfo;-><init>()V

    .line 486
    .local v2, "ci":Lcom/android/internal/telephony/MzCallerInfo;
    iput v7, v2, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    .line 487
    return-object v2

    .line 498
    .end local v2    # "ci":Lcom/android/internal/telephony/MzCallerInfo;
    :cond_0
    invoke-static {v1, p2}, Lcom/android/internal/telephony/MzCallerInfo;->getPerfectMatchCallerInfos(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 499
    .local v3, "perfectMatchArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 500
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MzCallerInfo;

    .line 501
    .restart local v2    # "ci":Lcom/android/internal/telephony/MzCallerInfo;
    iget-object v4, v2, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/internal/telephony/MzCallerInfo;->firstName:Ljava/lang/String;

    .line 507
    :goto_0
    iput v7, v2, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    .line 508
    return-object v2

    .line 502
    .end local v2    # "ci":Lcom/android/internal/telephony/MzCallerInfo;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v8, :cond_2

    .line 503
    invoke-static {v3}, Lcom/android/internal/telephony/MzCallerInfo;->processCallerInfos(Ljava/util/ArrayList;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object v2

    .restart local v2    # "ci":Lcom/android/internal/telephony/MzCallerInfo;
    goto :goto_0

    .line 505
    .end local v2    # "ci":Lcom/android/internal/telephony/MzCallerInfo;
    :cond_2
    invoke-static {v1}, Lcom/android/internal/telephony/MzCallerInfo;->processCallerInfos(Ljava/util/ArrayList;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object v2

    .restart local v2    # "ci":Lcom/android/internal/telephony/MzCallerInfo;
    goto :goto_0
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 309
    const-string/jumbo v3, "MzCallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 310
    const-string/jumbo v5, "\'..."

    .line 309
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 317
    .local v1, "columnName":Ljava/lang/String;
    const-string/jumbo v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    const-string/jumbo v3, "MzCallerInfo"

    const-string/jumbo v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string/jumbo v1, "contact_id"

    .line 343
    .end local v1    # "columnName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 344
    .local v0, "columnIndex":I
    :goto_1
    const-string/jumbo v3, "MzCallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "==> Using column \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 345
    const-string/jumbo v5, "\' (columnIndex = "

    .line 344
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 345
    const-string/jumbo v5, ") for person_id lookup..."

    .line 344
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return v0

    .line 323
    .end local v0    # "columnIndex":I
    .restart local v1    # "columnName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "content://com.android.contacts/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    const-string/jumbo v3, "MzCallerInfo"

    .line 325
    const-string/jumbo v4, "URL path starts with \'contacts\' using contacts._ID"

    .line 324
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string/jumbo v1, "_id"

    .local v1, "columnName":Ljava/lang/String;
    goto :goto_0

    .line 328
    .local v1, "columnName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 331
    const-string/jumbo v3, "MzCallerInfo"

    const-string/jumbo v4, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string/jumbo v1, "contact_id"

    .local v1, "columnName":Ljava/lang/String;
    goto :goto_0

    .line 334
    .local v1, "columnName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 338
    const-string/jumbo v3, "MzCallerInfo"

    const-string/jumbo v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string/jumbo v1, "_id"

    .local v1, "columnName":Ljava/lang/String;
    goto :goto_0

    .line 341
    .local v1, "columnName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "MzCallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 343
    .end local v1    # "columnName":Ljava/lang/String;
    :cond_4
    const/4 v0, -0x1

    .restart local v0    # "columnIndex":I
    goto/16 :goto_1
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 411
    const/4 v1, 0x0

    .line 413
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "country_detector"

    .line 412
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 414
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 415
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 416
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 422
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 423
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "MzCallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 419
    .restart local v0    # "country":Landroid/location/Country;
    .local v1, "countryIso":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "MzCallerInfo"

    const-string/jumbo v4, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 371
    const-string/jumbo v8, "MzCallerInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getGeoDescription(\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\')..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 374
    return-object v11

    .line 377
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v7

    .line 378
    .local v7, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v4

    .line 380
    .local v4, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v5, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 381
    .local v5, "locale":Ljava/util/Locale;
    invoke-static {p0, v5}, Lcom/android/internal/telephony/MzCallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "countryIso":Ljava/lang/String;
    const/4 v6, 0x0

    .line 384
    .local v6, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    const-string/jumbo v8, "MzCallerInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parsing \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 385
    const-string/jumbo v10, "\' for countryIso \'"

    .line 384
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 385
    const-string/jumbo v10, "\'..."

    .line 384
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v7, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v6

    .line 387
    .local v6, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const-string/jumbo v8, "MzCallerInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "- parsed number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v6    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    if-eqz v6, :cond_1

    .line 394
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_1
    invoke-static {p1, v0, v5, v8, v9}, Landroid/telephony/MzPhoneNumberUtils;->getDescriptionForNumber(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "description":Ljava/lang/String;
    const-string/jumbo v8, "MzCallerInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "- got description: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",countryIso: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",locale:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 396
    return-object v1

    .line 388
    .end local v1    # "description":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const-string/jumbo v8, "MzCallerInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :catch_1
    move-exception v3

    .line 398
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    return-object v11

    .line 402
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    return-object v11
.end method

.method private static getPerfectMatchCallerInfos(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MzCallerInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MzCallerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "ciArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v1, "perfectMatchCIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 527
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MzCallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MzCallerInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_1
    const-string/jumbo v2, "MzCallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "perfectMatchCIs :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-object v1
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 212
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 213
    :cond_0
    return-object p0

    .line 215
    :cond_1
    return-object v1
.end method

.method private static processCallerInfos(Ljava/util/ArrayList;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MzCallerInfo;",
            ">;)",
            "Lcom/android/internal/telephony/MzCallerInfo;"
        }
    .end annotation

    .prologue
    .local p0, "ciArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    const/4 v6, 0x0

    .line 537
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 538
    :cond_0
    const-string/jumbo v3, "MzCallerInfo"

    new-instance v4, Ljava/lang/Throwable;

    const-string/jumbo v5, "ciArray should not be empty here"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_1
    const/4 v0, 0x0

    .line 540
    .local v0, "i":I
    const/4 v1, 0x0

    .line 541
    .local v1, "index":I
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MzCallerInfo;

    .line 542
    .local v2, "info":Lcom/android/internal/telephony/MzCallerInfo;
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 543
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MzCallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 544
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Lcom/android/internal/telephony/MzCallerInfo;
    check-cast v2, Lcom/android/internal/telephony/MzCallerInfo;

    .line 545
    .restart local v2    # "info":Lcom/android/internal/telephony/MzCallerInfo;
    move v1, v0

    .line 549
    :cond_2
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MzCallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/MzCallerInfo;->firstName:Ljava/lang/String;

    .line 550
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 551
    if-ne v0, v1, :cond_4

    .line 550
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 542
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_4
    iget-object v3, v2, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_5

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MzCallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    :goto_3
    iput-object v3, v2, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    goto :goto_2

    .line 555
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MzCallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 557
    :cond_6
    const-string/jumbo v3, "MzCallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processCallerInfos info :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-object v2
.end method

.method private static queryGeocodeLocationForNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 737
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 738
    :cond_0
    return-object v10

    .line 740
    :cond_1
    const-string/jumbo v9, "content://mzgeocoded_location/number"

    .line 741
    .local v9, "uriString":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 742
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 743
    const/4 v6, 0x0

    .line 745
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 746
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 745
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 747
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 748
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 749
    .local v8, "location":Ljava/lang/String;
    const-string/jumbo v0, "MzCallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryGeocodeLocationForNumber get description: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    if-eqz v6, :cond_2

    .line 756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 750
    :cond_2
    return-object v8

    .line 755
    .end local v8    # "location":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 759
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_0
    return-object v10

    .line 752
    :catch_0
    move-exception v7

    .line 753
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 755
    if-eqz v6, :cond_4

    .line 756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 754
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 755
    if-eqz v6, :cond_5

    .line 756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 754
    :cond_5
    throw v0
.end method


# virtual methods
.method copyFrom(Lcom/android/internal/telephony/MzCallerInfo;)V
    .locals 2
    .param p1, "ci"    # Lcom/android/internal/telephony/MzCallerInfo;

    .prologue
    .line 431
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    .line 432
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 433
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->normalizedNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 434
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->geoDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->geoDescription:Ljava/lang/String;

    .line 435
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->cnapName:Ljava/lang/String;

    .line 436
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->numberPresentation:I

    .line 437
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->namePresentation:I

    .line 438
    iget-boolean v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->contactExists:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->contactExists:Z

    .line 439
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->phoneLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneLabel:Ljava/lang/String;

    .line 440
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->numberType:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->numberType:I

    .line 441
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->numberLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->numberLabel:Ljava/lang/String;

    .line 442
    iget-wide v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->PhotoId:J

    iput-wide v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->PhotoId:J

    .line 443
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->PhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->PhotoUri:Ljava/lang/String;

    .line 444
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->photoResource:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->photoResource:I

    .line 445
    iget-wide v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    iput-wide v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    .line 446
    iget-boolean v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->needUpdate:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->needUpdate:Z

    .line 447
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->contactRefUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 449
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 450
    iget-boolean v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->shouldSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->shouldSendToVoicemail:Z

    .line 451
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    .line 453
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 454
    iget-boolean v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->isCachedPhotoCurrent:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->isCachedPhotoCurrent:Z

    .line 456
    iget-boolean v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->isTimeoutRet:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->isTimeoutRet:Z

    .line 457
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    .line 458
    iget-boolean v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->isDirectoryContact:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->isDirectoryContact:Z

    .line 459
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->contactType:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->contactType:I

    .line 460
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->firstName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->firstName:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public getRejectReason()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    return v0
.end method

.method public isBlackMember()Z
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->shouldSendToVoicemail:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method bridge synthetic markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 676
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MzCallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object v0

    return-object v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 678
    const v0, 0x10402ea

    .line 677
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 679
    const v0, 0x1080545

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->photoResource:I

    .line 680
    invoke-super {p0}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergencyMz()V

    .line 681
    return-object p0
.end method

.method markAsVoiceMail(ILandroid/database/Cursor;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMailMz()V

    .line 238
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "voiceMailLabel":Ljava/lang/String;
    iput-object v2, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 242
    if-eqz p2, :cond_1

    .line 243
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    const-string/jumbo v3, "record_type"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 245
    .local v0, "columnIndex":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 246
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    .line 249
    .end local v0    # "columnIndex":I
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v2    # "voiceMailLabel":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 252
    :catch_0
    move-exception v1

    .line 258
    .local v1, "se":Ljava/lang/SecurityException;
    const-string/jumbo v3, "MzCallerInfo"

    const-string/jumbo v4, "Cannot access VoiceMail."

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method markAsVoiceMail(Landroid/database/Cursor;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 230
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    .line 231
    .local v0, "subId":I
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/MzCallerInfo;->markAsVoiceMail(ILandroid/database/Cursor;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object v1

    return-object v1
.end method

.method public updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackNumber"    # Ljava/lang/String;

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 363
    .local v0, "number":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/MzCallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/MzCallerInfo;->geoDescription:Ljava/lang/String;

    .line 361
    return-void

    .line 362
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    .restart local v0    # "number":Ljava/lang/String;
    goto :goto_0
.end method

.method public updateGeoDescriptionFromDB(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MzCallerInfo$UpdateLocationListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackNumber"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/internal/telephony/MzCallerInfo$UpdateLocationListener;

    .prologue
    .line 716
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 717
    const-string/jumbo v1, "+"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    const-string/jumbo v1, "00"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 717
    if-nez v1, :cond_0

    .line 719
    const-string/jumbo v1, "011"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 716
    if-eqz v1, :cond_1

    .line 720
    :cond_0
    move-object v0, p2

    .line 725
    .local v0, "number":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "MzCallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGeoDescription() phoneNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", fallbackNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/telephony/MzCallerInfo$2;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/android/internal/telephony/MzCallerInfo$2;-><init>(Lcom/android/internal/telephony/MzCallerInfo;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MzCallerInfo$UpdateLocationListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 714
    return-void

    .line 722
    .end local v0    # "number":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p2

    .restart local v0    # "number":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "number":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    .restart local v0    # "number":Ljava/lang/String;
    goto :goto_0
.end method
