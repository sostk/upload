.class final Lmeizu/notification/RankingDaily$1;
.super Ljava/lang/Object;
.source "RankingDaily.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/notification/RankingDaily;
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
        "Lmeizu/notification/RankingDaily;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lmeizu/notification/RankingDaily$1;->createFromParcel(Landroid/os/Parcel;)Lmeizu/notification/RankingDaily;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmeizu/notification/RankingDaily;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    new-instance v0, Lmeizu/notification/RankingDaily;

    invoke-direct {v0, p1}, Lmeizu/notification/RankingDaily;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lmeizu/notification/RankingDaily$1;->newArray(I)[Lmeizu/notification/RankingDaily;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmeizu/notification/RankingDaily;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 55
    new-array v0, p1, [Lmeizu/notification/RankingDaily;

    return-object v0
.end method
