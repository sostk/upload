.class public Landroid/provider/MzCallLog$MzCalls;
.super Ljava/lang/Object;
.source "MzCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MzCalls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;
    }
.end annotation


# static fields
.field public static final AUTO_RECORD_FAIL_TYPE:I = 0x6

.field public static final AUTO_RECORD_TYPE:I = 0x5

.field public static final CACHED_CONTACTS_ID:Ljava/lang/String; = "contactsid"

.field public static final CACHED_MIN_MATCH:Ljava/lang/String; = "min_match"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CALL_LOG_GROUP_KEY:Ljava/lang/String; = "group_key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CALL_TYPE:Ljava/lang/String; = "calltype"

.field public static final CALL_TYPE_FREE_CALL:I = 0x64

.field public static final CALL_TYPE_NORMAL:I = 0x0

.field public static final CALL_TYPE_SIP:I = 0x1

.field public static final CALL_UUID:Ljava/lang/String; = "uuid"

.field public static final CONTENT_DISTINC_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_USAGE:Ljava/lang/String; = "data_usage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXT_TYPE:Ljava/lang/String; = "ext_type"

.field public static final EXT_TYPE_NORMAL:I = 0x0

.field public static final EXT_TYPE_SPAM:I = 0x1

.field public static final ICC_ID:Ljava/lang/String; = "iccid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field private static final MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS:I = 0x2710

.field public static final NET_TYPE:Ljava/lang/String; = "net_type"

.field public static final NET_TYPE_MOBILE:I = 0x2

.field public static final NET_TYPE_NORMAL:I = 0x0

.field public static final NET_TYPE_WIFI:I = 0x1

.field public static final NEW_SPAM_CALL:Ljava/lang/String; = "new_spam_call"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RECORD_UUID:Ljava/lang/String; = "record_uuid"

.field public static final REJECT_TYPE:Ljava/lang/String; = "rejecttype"

.field public static final REJECT_TYPE_BLACK:I = 0x3

.field public static final REJECT_TYPE_CLOUD_ADDRESS:I = 0x6

.field public static final REJECT_TYPE_CUSTOMER_ADDRESS:I = 0x5

.field public static final REJECT_TYPE_NORMAL:I = 0x1

.field public static final REJECT_TYPE_OUT_PHONEBOOK:I = 0x4

.field public static final REJECT_TYPE_USER:I = 0x2

.field public static final SIM_ID:Ljava/lang/String; = "simid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SPEED_DIAL_DELETED:Ljava/lang/String; = "speed_dial_delete"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "content://call_log/calls/distinc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzCallLog$MzCalls;->CONTENT_DISTINC_URI:Landroid/net/Uri;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/provider/MzCallLog$MzCalls$MzCalllogInfo;)Landroid/net/Uri;
    .locals 15
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "addForAllUsers"    # Z
    .param p12, "calllogInfo"    # Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;

    .prologue
    .line 220
    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v14, p12

    .line 219
    invoke-static/range {v1 .. v14}, Landroid/provider/MzCallLog$MzCalls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZZLandroid/provider/MzCallLog$MzCalls$MzCalllogInfo;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZZLandroid/provider/MzCallLog$MzCalls$MzCalllogInfo;)Landroid/net/Uri;
    .locals 37
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "addForAllUsers"    # Z
    .param p12, "is_read"    # Z
    .param p13, "calllogInfo"    # Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;

    .prologue
    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 254
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/16 v24, 0x1

    .line 256
    .local v24, "numberPresentation":I
    const/16 v27, 0x0

    .line 258
    .local v27, "tm":Landroid/telecom/TelecomManager;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v27

    .line 263
    .end local v27    # "tm":Landroid/telecom/TelecomManager;
    :goto_0
    const/4 v13, 0x0

    .line 264
    .local v13, "accountAddress":Ljava/lang/String;
    if-eqz v27, :cond_0

    if-eqz p6, :cond_0

    .line 265
    move-object/from16 v0, v27

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v12

    .line 266
    .local v12, "account":Landroid/telecom/PhoneAccount;
    if-eqz v12, :cond_0

    .line 267
    invoke-virtual {v12}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v16

    .line 268
    .local v16, "address":Landroid/net/Uri;
    if-eqz v16, :cond_0

    .line 269
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 279
    .end local v12    # "account":Landroid/telecom/PhoneAccount;
    .end local v13    # "accountAddress":Ljava/lang/String;
    .end local v16    # "address":Landroid/net/Uri;
    :cond_0
    const/4 v7, 0x2

    move/from16 v0, p3

    if-ne v0, v7, :cond_9

    .line 280
    const/16 v24, 0x2

    .line 287
    :cond_1
    :goto_1
    const/4 v7, 0x1

    move/from16 v0, v24

    if-eq v0, v7, :cond_2

    .line 288
    const-string/jumbo p2, ""

    .line 289
    if-eqz p0, :cond_2

    .line 290
    const-string/jumbo v7, ""

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 295
    :cond_2
    const/4 v14, 0x0

    .line 296
    .local v14, "accountComponentString":Ljava/lang/String;
    const/4 v15, 0x0

    .line 297
    .local v15, "accountId":Ljava/lang/String;
    if-eqz p6, :cond_3

    .line 298
    invoke-virtual/range {p6 .. p6}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    .line 299
    .local v14, "accountComponentString":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v15

    .line 302
    .end local v14    # "accountComponentString":Ljava/lang/String;
    .end local v15    # "accountId":Ljava/lang/String;
    :cond_3
    new-instance v33, Landroid/content/ContentValues;

    const/4 v7, 0x6

    move-object/from16 v0, v33

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 304
    .local v33, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v4, p13

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MzCallLog$MzCalls;->getMzContentValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;)Landroid/content/ContentValues;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 306
    const-string/jumbo v7, "number"

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string/jumbo v7, "presentation"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string/jumbo v7, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    const-string/jumbo v7, "features"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    const-string/jumbo v7, "date"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 311
    const-string/jumbo v7, "duration"

    move/from16 v0, p9

    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 312
    if-eqz p10, :cond_4

    .line 313
    const-string/jumbo v7, "data_usage"

    move-object/from16 v0, v33

    move-object/from16 v1, p10

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 315
    :cond_4
    const-string/jumbo v7, "subscription_component_name"

    move-object/from16 v0, v33

    invoke-virtual {v0, v7, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string/jumbo v7, "subscription_id"

    move-object/from16 v0, v33

    invoke-virtual {v0, v7, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v7, "phone_account_address"

    move-object/from16 v0, v33

    invoke-virtual {v0, v7, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string/jumbo v7, "new"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const/4 v7, 0x3

    move/from16 v0, p4

    if-ne v0, v7, :cond_5

    .line 320
    const-string/jumbo v8, "is_read"

    if-eqz p12, :cond_c

    const/4 v7, 0x1

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    :cond_5
    if-eqz p0, :cond_7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_7

    .line 332
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 334
    .local v23, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 335
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "_id"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 336
    const-string/jumbo v9, "contact_id =? AND data4 =?"

    .line 337
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/16 v34, 0x0

    aput-object v11, v10, v34

    .line 338
    const/4 v11, 0x1

    aput-object v23, v10, v11

    .line 339
    const/4 v11, 0x0

    .line 334
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 356
    .end local v23    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v19, "cursor":Landroid/database/Cursor;
    :goto_3
    if-eqz v19, :cond_7

    .line 358
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 359
    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 360
    .local v20, "dataId":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Landroid/provider/MzCallLog$MzCalls;->updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 361
    const/16 v7, 0x2710

    move/from16 v0, p9

    if-lt v0, v7, :cond_6

    .line 362
    const/4 v7, 0x2

    move/from16 v0, p4

    if-ne v0, v7, :cond_6

    .line 363
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 361
    if-eqz v7, :cond_6

    .line 364
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v6, v1, v2}, Landroid/provider/MzCallLog$MzCalls;->updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    .end local v20    # "dataId":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 373
    .end local v19    # "cursor":Landroid/database/Cursor;
    :cond_7
    const/16 v26, 0x0

    .line 375
    .local v26, "result":Landroid/net/Uri;
    if-eqz p11, :cond_10

    .line 379
    const-string/jumbo v7, "user"

    .line 378
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/UserManager;

    .line 380
    .local v31, "userManager":Landroid/os/UserManager;
    const/4 v7, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v32

    .line 381
    .local v32, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {v31 .. v31}, Landroid/os/UserManager;->getUserHandle()I

    move-result v18

    .line 382
    .local v18, "currentUserId":I
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v17

    .line 383
    .local v17, "count":I
    const/16 v22, 0x0

    .end local v26    # "result":Landroid/net/Uri;
    .local v22, "i":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_11

    .line 384
    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/pm/UserInfo;

    .line 385
    .local v29, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v30

    .line 386
    .local v30, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 387
    const-string/jumbo v7, "no_outgoing_calls"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 383
    :cond_8
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 259
    .end local v17    # "count":I
    .end local v18    # "currentUserId":I
    .end local v22    # "i":I
    .end local v29    # "user":Landroid/content/pm/UserInfo;
    .end local v30    # "userHandle":Landroid/os/UserHandle;
    .end local v31    # "userManager":Landroid/os/UserManager;
    .end local v32    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v33    # "values":Landroid/content/ContentValues;
    .restart local v27    # "tm":Landroid/telecom/TelecomManager;
    :catch_0
    move-exception v21

    .line 260
    .local v21, "e":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v7, "MzCallLog"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 281
    .end local v21    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v27    # "tm":Landroid/telecom/TelecomManager;
    :cond_9
    const/4 v7, 0x4

    move/from16 v0, p3

    if-ne v0, v7, :cond_a

    .line 282
    const/16 v24, 0x4

    goto/16 :goto_1

    .line 283
    :cond_a
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 284
    const/4 v7, 0x3

    move/from16 v0, p3

    if-ne v0, v7, :cond_1

    .line 285
    :cond_b
    const/16 v24, 0x3

    goto/16 :goto_1

    .line 320
    .restart local v33    # "values":Landroid/content/ContentValues;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 341
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 343
    .local v25, "phoneNumber":Ljava/lang/String;
    :goto_6
    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 346
    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 343
    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 347
    const-string/jumbo v8, "search_display_name"

    const-string/jumbo v9, "false"

    .line 343
    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 350
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "_id"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 351
    const-string/jumbo v9, "contact_id =?"

    .line 352
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/16 v34, 0x0

    aput-object v11, v10, v34

    .line 353
    const/4 v11, 0x0

    .line 342
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .restart local v19    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_3

    .line 341
    .end local v19    # "cursor":Landroid/database/Cursor;
    .end local v25    # "phoneNumber":Ljava/lang/String;
    :cond_e
    move-object/from16 v25, p2

    .restart local v25    # "phoneNumber":Ljava/lang/String;
    goto :goto_6

    .line 367
    .end local v25    # "phoneNumber":Ljava/lang/String;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v7

    .line 368
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 367
    throw v7

    .line 389
    .end local v19    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "count":I
    .restart local v18    # "currentUserId":I
    .restart local v22    # "i":I
    .restart local v29    # "user":Landroid/content/pm/UserInfo;
    .restart local v30    # "userHandle":Landroid/os/UserHandle;
    .restart local v31    # "userManager":Landroid/os/UserManager;
    .restart local v32    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_f
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_8

    .line 391
    sget-object v7, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    iget v8, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v8}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v7

    .line 390
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-static {v0, v7, v1}, Landroid/provider/MzCallLog$MzCalls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v28

    .line 392
    .local v28, "uri":Landroid/net/Uri;
    move-object/from16 v0, v29

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, v18

    if-ne v7, v0, :cond_8

    .line 393
    move-object/from16 v26, v28

    .local v26, "result":Landroid/net/Uri;
    goto/16 :goto_5

    .line 398
    .end local v17    # "count":I
    .end local v18    # "currentUserId":I
    .end local v22    # "i":I
    .end local v28    # "uri":Landroid/net/Uri;
    .end local v29    # "user":Landroid/content/pm/UserInfo;
    .end local v30    # "userHandle":Landroid/os/UserHandle;
    .end local v31    # "userManager":Landroid/os/UserManager;
    .end local v32    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v26, "result":Landroid/net/Uri;
    :cond_10
    sget-object v7, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-static {v0, v7, v1}, Landroid/provider/MzCallLog$MzCalls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v26

    .line 402
    .end local v26    # "result":Landroid/net/Uri;
    :cond_11
    const/4 v7, 0x3

    move/from16 v0, p4

    if-eq v0, v7, :cond_12

    if-lez p9, :cond_12

    if-eqz p0, :cond_12

    .line 403
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v8, v9, v1}, Landroid/provider/MzCallLog$MzCalls;->mzUpdatePrimaryNumber(Landroid/content/Context;JLjava/lang/String;)V

    .line 405
    :cond_12
    const-string/jumbo v7, "MzCallLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addCall()    result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "   number \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-object v26
.end method

.method private static addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 413
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 414
    .local v1, "result":Landroid/net/Uri;
    const-string/jumbo v2, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 5000)"

    .line 416
    const/4 v3, 0x0

    .line 414
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 417
    return-object v1
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    const/4 v1, 0x0

    .line 458
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "country_detector"

    .line 457
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 459
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 460
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 461
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 465
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static getMzContentValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;)Landroid/content/ContentValues;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p4, "mzCalllogInfo"    # Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;

    .prologue
    .line 504
    new-instance p1, Landroid/content/ContentValues;

    .end local p1    # "values":Landroid/content/ContentValues;
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 505
    .restart local p1    # "values":Landroid/content/ContentValues;
    const-wide/16 v8, 0x0

    .line 506
    .local v8, "contactIdOrZero":J
    const/4 v15, 0x1

    .line 507
    .local v15, "timeOut":Z
    const/4 v12, 0x1

    .line 508
    .local v12, "isEmergency":Z
    const/4 v13, 0x1

    .line 509
    .local v13, "isVoiceMailNumber":Z
    const/4 v11, 0x0

    .line 510
    .local v11, "geoLocation":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 511
    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    .line 512
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 513
    .local v11, "geoLocation":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v12

    .line 514
    .local v12, "isEmergency":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v13

    .line 516
    .end local v11    # "geoLocation":Ljava/lang/String;
    .end local v12    # "isEmergency":Z
    .end local v13    # "isVoiceMailNumber":Z
    :cond_0
    if-eqz p4, :cond_2

    .line 517
    const-string/jumbo v2, "rejecttype"

    move-object/from16 v0, p4

    iget v3, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->rejectType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    const-string/jumbo v2, "calltype"

    move-object/from16 v0, p4

    iget v3, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->sipType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string/jumbo v2, "ext_type"

    move-object/from16 v0, p4

    iget v3, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->tableType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    const-string/jumbo v2, "net_type"

    move-object/from16 v0, p4

    iget v3, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->netType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    const-string/jumbo v2, "record_uuid"

    move-object/from16 v0, p4

    iget-wide v4, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->recordUUID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 522
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->imsi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 523
    const-string/jumbo v2, "imsi"

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->imsi:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_1
    const-string/jumbo v2, "simid"

    move-object/from16 v0, p4

    iget v3, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->simId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    :cond_2
    const-string/jumbo v2, "geocoded_location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    if-nez v12, :cond_3

    if-nez v13, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-nez v2, :cond_6

    .line 531
    :cond_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 533
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 532
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 534
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 535
    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 536
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 531
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 537
    .local v14, "phonesCursor":Landroid/database/Cursor;
    if-eqz v14, :cond_5

    .line 538
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 539
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 541
    :cond_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v14    # "phonesCursor":Landroid/database/Cursor;
    :cond_5
    :goto_0
    const-string/jumbo v2, "MzCallLog"

    const-string/jumbo v3, "addCall:phone query timeOut"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_6
    const-string/jumbo v2, "contactsid"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 573
    return-object p1

    .line 543
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static isMobileNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string/jumbo v5, "country_detector"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 471
    .local v0, "countryDetector":Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "countryIso":Ljava/lang/String;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    .line 473
    .local v4, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v3, 0x0

    .line 475
    .local v3, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    invoke-virtual {v4, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 480
    .end local v3    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    if-eqz v3, :cond_0

    .line 481
    invoke-virtual {v4, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v5

    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v5, v6, :cond_0

    .line 482
    const/4 v5, 0x1

    return v5

    .line 476
    .restart local v3    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v2

    .line 477
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const-string/jumbo v5, "MzCallLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDescriptionForNumber: NumberParseException for incoming number \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 478
    const-string/jumbo v7, "\'"

    .line 477
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 485
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .end local v3    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    const/4 v5, 0x0

    return v5
.end method

.method private static mzUpdatePrimaryNumber(Landroid/content/Context;JLjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 489
    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 490
    :cond_0
    return-void

    .line 489
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    invoke-static {p0, p3}, Landroid/provider/MzCallLog$MzCalls;->isMobileNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 492
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 493
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "is_primary"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    const-string/jumbo v2, "is_super_primary"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 496
    const-string/jumbo v3, "data1"

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 496
    const-string/jumbo v3, "=\'"

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 497
    const-string/jumbo v3, "\' AND "

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 497
    const-string/jumbo v3, "mimetype"

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 497
    const-string/jumbo v3, "=\'"

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 497
    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 497
    const-string/jumbo v3, "\'"

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 488
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v1    # "where":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 421
    sget-object v1, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 423
    const-string/jumbo v2, "type"

    .line 424
    const-string/jumbo v3, "call"

    .line 421
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 426
    .local v0, "feedbackUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method private static updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 436
    :cond_0
    return-void

    .line 439
    :cond_1
    invoke-static {p0}, Landroid/provider/MzCallLog$MzCalls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 441
    return-void

    .line 445
    :cond_2
    invoke-static {p0}, Landroid/provider/MzCallLog$MzCalls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-static {p3, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "normalizedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 447
    return-void

    .line 450
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 451
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "data4"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 434
    return-void
.end method
