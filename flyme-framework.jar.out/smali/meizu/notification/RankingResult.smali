.class public Lmeizu/notification/RankingResult;
.super Ljava/lang/Object;
.source "RankingResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/notification/RankingResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmeizu/notification/RankingResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allNum:I

.field public category:Ljava/lang/String;

.field public category_priority:I

.field public clickNum:I

.field public key:J

.field public notification_priority:I

.field public packageName:Ljava/lang/String;

.field public removeNum:I

.field public score:F

.field public score_adjust:I

.field public updateDate:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lmeizu/notification/RankingResult$1;

    invoke-direct {v0}, Lmeizu/notification/RankingResult$1;-><init>()V

    sput-object v0, Lmeizu/notification/RankingResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmeizu/notification/RankingResult;->key:J

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeizu/notification/RankingResult;->packageName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmeizu/notification/RankingResult;->updateDate:J

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmeizu/notification/RankingResult;->score:F

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeizu/notification/RankingResult;->clickNum:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeizu/notification/RankingResult;->allNum:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeizu/notification/RankingResult;->removeNum:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeizu/notification/RankingResult;->category:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeizu/notification/RankingResult;->score_adjust:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeizu/notification/RankingResult;->notification_priority:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeizu/notification/RankingResult;->category_priority:I

    .line 22
    return-void
.end method


# virtual methods
.method public copy()Lmeizu/notification/RankingResult;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lmeizu/notification/RankingResult;

    invoke-direct {v0}, Lmeizu/notification/RankingResult;-><init>()V

    .line 42
    .local v0, "result":Lmeizu/notification/RankingResult;
    iget-wide v2, p0, Lmeizu/notification/RankingResult;->key:J

    iput-wide v2, v0, Lmeizu/notification/RankingResult;->key:J

    .line 43
    iget-object v1, p0, Lmeizu/notification/RankingResult;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lmeizu/notification/RankingResult;->packageName:Ljava/lang/String;

    .line 44
    iget-wide v2, p0, Lmeizu/notification/RankingResult;->updateDate:J

    iput-wide v2, v0, Lmeizu/notification/RankingResult;->updateDate:J

    .line 45
    iget v1, p0, Lmeizu/notification/RankingResult;->score:F

    iput v1, v0, Lmeizu/notification/RankingResult;->score:F

    .line 46
    iget v1, p0, Lmeizu/notification/RankingResult;->clickNum:I

    iput v1, v0, Lmeizu/notification/RankingResult;->clickNum:I

    .line 47
    iget v1, p0, Lmeizu/notification/RankingResult;->allNum:I

    iput v1, v0, Lmeizu/notification/RankingResult;->allNum:I

    .line 48
    iget v1, p0, Lmeizu/notification/RankingResult;->removeNum:I

    iput v1, v0, Lmeizu/notification/RankingResult;->removeNum:I

    .line 49
    iget-object v1, p0, Lmeizu/notification/RankingResult;->category:Ljava/lang/String;

    iput-object v1, v0, Lmeizu/notification/RankingResult;->category:Ljava/lang/String;

    .line 50
    iget v1, p0, Lmeizu/notification/RankingResult;->score_adjust:I

    iput v1, v0, Lmeizu/notification/RankingResult;->score_adjust:I

    .line 51
    iget v1, p0, Lmeizu/notification/RankingResult;->notification_priority:I

    iput v1, v0, Lmeizu/notification/RankingResult;->notification_priority:I

    .line 52
    iget v1, p0, Lmeizu/notification/RankingResult;->category_priority:I

    iput v1, v0, Lmeizu/notification/RankingResult;->category_priority:I

    .line 53
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-wide v2, p0, Lmeizu/notification/RankingResult;->key:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v1, "\n packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lmeizu/notification/RankingResult;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string/jumbo v1, "\n updateDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-wide v2, p0, Lmeizu/notification/RankingResult;->updateDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v1, "\n score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Lmeizu/notification/RankingResult;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v1, "\n clickNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Lmeizu/notification/RankingResult;->clickNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v1, "\n allNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Lmeizu/notification/RankingResult;->allNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v1, "\n removeNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lmeizu/notification/RankingResult;->removeNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v1, "\n category ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lmeizu/notification/RankingResult;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v1, "\n score_adjust ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Lmeizu/notification/RankingResult;->score_adjust:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, "\n notification_priority ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Lmeizu/notification/RankingResult;->notification_priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v1, "\n category_priority ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v1, p0, Lmeizu/notification/RankingResult;->category_priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 75
    iget-wide v0, p0, Lmeizu/notification/RankingResult;->key:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-object v0, p0, Lmeizu/notification/RankingResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-wide v0, p0, Lmeizu/notification/RankingResult;->updateDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget v0, p0, Lmeizu/notification/RankingResult;->score:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 79
    iget v0, p0, Lmeizu/notification/RankingResult;->clickNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lmeizu/notification/RankingResult;->allNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lmeizu/notification/RankingResult;->removeNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lmeizu/notification/RankingResult;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lmeizu/notification/RankingResult;->score_adjust:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lmeizu/notification/RankingResult;->notification_priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lmeizu/notification/RankingResult;->category_priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
