.class public final Lcom/flyme/internal/R$menu;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "menu"
.end annotation


# static fields
.field public static mz_systemlock_enter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4774
    const/high16 v0, 0x120000

    sput v0, Lcom/flyme/internal/R$menu;->mz_systemlock_enter:I

    .line 4773
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
