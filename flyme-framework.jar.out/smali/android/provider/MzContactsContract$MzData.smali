.class public final Landroid/provider/MzContactsContract$MzData;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzData"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 264
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 265
    const-string/jumbo v1, "filter"

    .line 263
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzData;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 257
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUriWithRequestMimetypes(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "baseUri"    # Landroid/net/Uri;
    .param p1, "requestMimes"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 278
    if-eqz p1, :cond_0

    array-length v3, p1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 279
    :cond_0
    return-object p0

    .line 281
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v0, p1, v2

    .line 283
    .local v0, "mimeType":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 284
    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    :cond_2
    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 287
    const-string/jumbo v4, "phone"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_4
    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 289
    const-string/jumbo v4, "email"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 290
    :cond_5
    const-string/jumbo v4, "vnd.android.cursor.item/social_profile"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 291
    const-string/jumbo v4, "social_profile"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 296
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 297
    const-string/jumbo v3, "request_mimes"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 300
    :cond_7
    return-object p0
.end method
