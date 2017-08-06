.class public final Landroid/provider/MzContactsContract$MzPhoneLookup;
.super Ljava/lang/Object;
.source "MzContactsContract.java"

# interfaces
.implements Landroid/provider/MzContactsContract$MzContactOptionsColumns;
.implements Landroid/provider/MzContactsContract$MzContactColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzPhoneLookup"
.end annotation


# static fields
.field public static final CALL_ALLOWED_CONTACT_IDS:Ljava/lang/String; = "call_allowed_contact_ids"

.field public static final CALL_REJECTED_CONTACT_IDS:Ljava/lang/String; = "call_rejected_contact_ids"

.field public static final CALL_REJECTED_EXTRAS:Ljava/lang/String; = "call_rejected_extras"

.field public static final CALL_REJECTED_TYPE:Ljava/lang/String; = "call_rejected_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildRejectedExtrasUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 352
    const-string/jumbo v1, "call_rejected_extras"

    const-string/jumbo v2, "true"

    .line 351
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isPhoneNumberInContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 360
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v9

    .line 361
    :cond_1
    const/4 v7, 0x0

    .line 363
    .local v7, "phonesCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 364
    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 366
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 367
    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 368
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 363
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 369
    .local v7, "phonesCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 370
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    move v0, v8

    .line 375
    :goto_0
    if-eqz v7, :cond_2

    .line 376
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_2
    return v0

    :cond_3
    move v0, v9

    goto :goto_0

    .line 375
    :cond_4
    if-eqz v7, :cond_5

    .line 376
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 379
    .end local v7    # "phonesCursor":Landroid/database/Cursor;
    :cond_5
    :goto_1
    return v9

    .line 372
    :catch_0
    move-exception v6

    .line 375
    .local v6, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_5

    .line 376
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 374
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 375
    if-eqz v7, :cond_6

    .line 376
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_6
    throw v0
.end method
