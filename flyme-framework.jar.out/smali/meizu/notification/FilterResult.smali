.class public Lmeizu/notification/FilterResult;
.super Ljava/lang/Object;
.source "FilterResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/notification/FilterResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmeizu/notification/FilterResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public category:Ljava/lang/String;

.field public categoryPriority:I

.field public correct_score:F

.field public extras:Landroid/os/Bundle;

.field public intercept:Z

.field public isValid:Z

.field public notificationPriority:I

.field public score:F

.field public shouldAffectIntercept:Z

.field public shouldAffectRanking:Z

.field public spamScoreUpperLimit:F

.field public tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lmeizu/notification/FilterResult$1;

    invoke-direct {v0}, Lmeizu/notification/FilterResult$1;-><init>()V

    sput-object v0, Lmeizu/notification/FilterResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeizu/notification/FilterResult;->category:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeizu/notification/FilterResult;->categoryPriority:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeizu/notification/FilterResult;->notificationPriority:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeizu/notification/FilterResult;->tag:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lmeizu/notification/FilterResult;->extras:Landroid/os/Bundle;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmeizu/notification/FilterResult;->isValid:Z

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lmeizu/notification/FilterResult;->intercept:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmeizu/notification/FilterResult;->score:F

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmeizu/notification/FilterResult;->correct_score:F

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lmeizu/notification/FilterResult;->shouldAffectRanking:Z

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lmeizu/notification/FilterResult;->shouldAffectIntercept:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmeizu/notification/FilterResult;->spamScoreUpperLimit:F

    .line 23
    return-void

    :cond_0
    move v0, v2

    .line 29
    goto :goto_0

    :cond_1
    move v0, v2

    .line 30
    goto :goto_1

    :cond_2
    move v0, v2

    .line 33
    goto :goto_2

    :cond_3
    move v1, v2

    .line 34
    goto :goto_3
.end method


# virtual methods
.method public copy()Lmeizu/notification/FilterResult;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lmeizu/notification/FilterResult;

    invoke-direct {v0}, Lmeizu/notification/FilterResult;-><init>()V

    .line 44
    .local v0, "filter":Lmeizu/notification/FilterResult;
    iget-object v1, p0, Lmeizu/notification/FilterResult;->category:Ljava/lang/String;

    iput-object v1, v0, Lmeizu/notification/FilterResult;->category:Ljava/lang/String;

    .line 45
    iget v1, p0, Lmeizu/notification/FilterResult;->categoryPriority:I

    iput v1, v0, Lmeizu/notification/FilterResult;->categoryPriority:I

    .line 46
    iget v1, p0, Lmeizu/notification/FilterResult;->notificationPriority:I

    iput v1, v0, Lmeizu/notification/FilterResult;->notificationPriority:I

    .line 47
    iget-object v1, p0, Lmeizu/notification/FilterResult;->tag:Ljava/lang/String;

    iput-object v1, v0, Lmeizu/notification/FilterResult;->tag:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lmeizu/notification/FilterResult;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lmeizu/notification/FilterResult;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, v0, Lmeizu/notification/FilterResult;->extras:Landroid/os/Bundle;

    .line 51
    :cond_0
    iget-boolean v1, p0, Lmeizu/notification/FilterResult;->isValid:Z

    iput-boolean v1, v0, Lmeizu/notification/FilterResult;->isValid:Z

    .line 52
    iget-boolean v1, p0, Lmeizu/notification/FilterResult;->intercept:Z

    iput-boolean v1, v0, Lmeizu/notification/FilterResult;->intercept:Z

    .line 53
    iget v1, p0, Lmeizu/notification/FilterResult;->score:F

    iput v1, v0, Lmeizu/notification/FilterResult;->score:F

    .line 54
    iget v1, p0, Lmeizu/notification/FilterResult;->correct_score:F

    iput v1, v0, Lmeizu/notification/FilterResult;->correct_score:F

    .line 55
    iget-boolean v1, p0, Lmeizu/notification/FilterResult;->shouldAffectRanking:Z

    iput-boolean v1, v0, Lmeizu/notification/FilterResult;->shouldAffectRanking:Z

    .line 56
    iget-boolean v1, p0, Lmeizu/notification/FilterResult;->shouldAffectIntercept:Z

    iput-boolean v1, v0, Lmeizu/notification/FilterResult;->shouldAffectIntercept:Z

    .line 57
    iget v1, p0, Lmeizu/notification/FilterResult;->spamScoreUpperLimit:F

    iput v1, v0, Lmeizu/notification/FilterResult;->spamScoreUpperLimit:F

    .line 58
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 98
    const-string/jumbo v2, "category=%s;categoryPriority=%d,notificationPriority=%d;tag=%s"

    .line 96
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 99
    iget-object v4, p0, Lmeizu/notification/FilterResult;->category:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lmeizu/notification/FilterResult;->categoryPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, p0, Lmeizu/notification/FilterResult;->notificationPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lmeizu/notification/FilterResult;->tag:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 96
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu/notification/FilterResult;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";isValid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmeizu/notification/FilterResult;->isValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";intercept="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    iget-boolean v2, p0, Lmeizu/notification/FilterResult;->intercept:Z

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    const-string/jumbo v2, ",score="

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    iget v2, p0, Lmeizu/notification/FilterResult;->score:F

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    const-string/jumbo v2, ",shouldAffectRanking ="

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    iget-boolean v2, p0, Lmeizu/notification/FilterResult;->shouldAffectRanking:Z

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    const-string/jumbo v2, ", shouldAffectIntercept="

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    iget-boolean v2, p0, Lmeizu/notification/FilterResult;->shouldAffectIntercept:Z

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    const-string/jumbo v2, ", spamScoreUpperLimit ="

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    iget v2, p0, Lmeizu/notification/FilterResult;->spamScoreUpperLimit:F

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    const-string/jumbo v2, ",correct_score="

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    iget v2, p0, Lmeizu/notification/FilterResult;->correct_score:F

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lmeizu/notification/FilterResult;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lmeizu/notification/FilterResult;->categoryPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lmeizu/notification/FilterResult;->notificationPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lmeizu/notification/FilterResult;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lmeizu/notification/FilterResult;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 85
    iget-boolean v0, p0, Lmeizu/notification/FilterResult;->isValid:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 86
    iget-boolean v0, p0, Lmeizu/notification/FilterResult;->intercept:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 87
    iget v0, p0, Lmeizu/notification/FilterResult;->score:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 88
    iget v0, p0, Lmeizu/notification/FilterResult;->correct_score:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 89
    iget-boolean v0, p0, Lmeizu/notification/FilterResult;->shouldAffectRanking:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 90
    iget-boolean v0, p0, Lmeizu/notification/FilterResult;->shouldAffectIntercept:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 91
    iget v0, p0, Lmeizu/notification/FilterResult;->spamScoreUpperLimit:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 79
    return-void

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    :cond_1
    move v0, v2

    .line 86
    goto :goto_1

    :cond_2
    move v0, v2

    .line 89
    goto :goto_2

    :cond_3
    move v1, v2

    .line 90
    goto :goto_3
.end method
