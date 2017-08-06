.class public abstract Landroid/provider/MzFeature$Feature;
.super Ljava/lang/Object;
.source "MzFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Feature"
.end annotation


# instance fields
.field public final value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Landroid/provider/MzFeature$Feature;->value:J

    .line 17
    return-void
.end method
