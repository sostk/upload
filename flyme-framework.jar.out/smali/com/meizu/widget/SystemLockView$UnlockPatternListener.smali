.class Lcom/meizu/widget/SystemLockView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "SystemLockView.java"

# interfaces
.implements Lcom/meizu/widget/LockDigitView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/SystemLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/SystemLockView;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/SystemLockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/widget/SystemLockView;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/SystemLockView;Lcom/meizu/widget/SystemLockView$UnlockPatternListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/widget/SystemLockView;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;-><init>(Lcom/meizu/widget/SystemLockView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 393
    .local v2, "size":I
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$Cell;

    .line 394
    .local v0, "newCell":Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v3, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v3, v0}, Lcom/meizu/widget/SystemLockView;->-wrap0(Lcom/meizu/widget/SystemLockView;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "newNum":Ljava/lang/String;
    const-string/jumbo v3, "left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    iget-object v3, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v3}, Lcom/meizu/widget/SystemLockView;->-wrap4(Lcom/meizu/widget/SystemLockView;)V

    .line 391
    :goto_0
    return-void

    .line 397
    :cond_0
    const-string/jumbo v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    iget-object v3, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v3}, Lcom/meizu/widget/SystemLockView;->-wrap5(Lcom/meizu/widget/SystemLockView;)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v3, v1}, Lcom/meizu/widget/SystemLockView;->-wrap1(Lcom/meizu/widget/SystemLockView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v0}, Lcom/meizu/widget/SystemLockView;->-get1(Lcom/meizu/widget/SystemLockView;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v1}, Lcom/meizu/widget/SystemLockView;->-get5(Lcom/meizu/widget/SystemLockView;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v0}, Lcom/meizu/widget/SystemLockView;->-get4(Lcom/meizu/widget/SystemLockView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/widget/SystemLockView;->-set2(Lcom/meizu/widget/SystemLockView;Z)Z

    .line 410
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v0}, Lcom/meizu/widget/SystemLockView;->-wrap3(Lcom/meizu/widget/SystemLockView;)V

    .line 406
    :cond_0
    return-void
.end method

.method public onPatternStart()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method
