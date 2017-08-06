.class public Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;
.super Ljava/lang/Object;
.source "MzCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzCallLog$MzCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MzCalllogInfo"
.end annotation


# instance fields
.field public imsi:Ljava/lang/String;

.field public netType:I

.field public recordUUID:J

.field public rejectType:I

.field public simId:I

.field public sipType:I

.field public tableType:I


# direct methods
.method public constructor <init>(IIIJILjava/lang/String;)V
    .locals 2
    .param p1, "rejectType"    # I
    .param p2, "sipType"    # I
    .param p3, "netType"    # I
    .param p4, "recordUUID"    # J
    .param p6, "simId"    # I
    .param p7, "imsi"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p1, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->rejectType:I

    .line 171
    iput p2, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->sipType:I

    .line 172
    iput p3, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->netType:I

    .line 173
    iput-wide p4, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->recordUUID:J

    .line 174
    iput p6, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->simId:I

    .line 175
    iput-object p7, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->imsi:Ljava/lang/String;

    .line 176
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 177
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 178
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->tableType:I

    .line 169
    :goto_0
    return-void

    .line 180
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->tableType:I

    goto :goto_0
.end method

.method public constructor <init>(IJILjava/lang/String;)V
    .locals 8
    .param p1, "rejectType"    # I
    .param p2, "recordUUID"    # J
    .param p4, "simId"    # I
    .param p5, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    .line 164
    invoke-direct/range {v0 .. v7}, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;-><init>(IIIJILjava/lang/String;)V

    .line 163
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "imsi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " rejectType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->rejectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " sipType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->sipType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    const-string/jumbo v1, " netType:"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    iget v1, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->netType:I

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    const-string/jumbo v1, " recordUUID:"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    iget-wide v2, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->recordUUID:J

    .line 185
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    const-string/jumbo v1, " simId:"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    iget v1, p0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->simId:I

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
