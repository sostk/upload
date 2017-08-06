.class final Lmeizu/notification/RankingResult$1;
.super Ljava/lang/Object;
.source "RankingResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/notification/RankingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmeizu/notification/RankingResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lmeizu/notification/RankingResult$1;->createFromParcel(Landroid/os/Parcel;)Lmeizu/notification/RankingResult;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmeizu/notification/RankingResult;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    new-instance v0, Lmeizu/notification/RankingResult;

    invoke-direct {v0, p1}, Lmeizu/notification/RankingResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lmeizu/notification/RankingResult$1;->newArray(I)[Lmeizu/notification/RankingResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmeizu/notification/RankingResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 64
    new-array v0, p1, [Lmeizu/notification/RankingResult;

    return-object v0
.end method
