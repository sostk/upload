.class public Landroid/provider/MzCallLog;
.super Landroid/provider/CallLog;
.source "MzCallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MzCallLog$MzCallsSync;,
        Landroid/provider/MzCallLog$MzCalls;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MzCallLog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/provider/CallLog;-><init>()V

    return-void
.end method
