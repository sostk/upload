.class Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;
.super Ljava/lang/Object;
.source "ViewPagerOverScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/ViewPagerOverScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizonalFlingRunnable"
.end annotation


# instance fields
.field private final mScroller:Landroid/widget/OverScroller;

.field start:Z

.field final synthetic this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;


# direct methods
.method constructor <init>(Lcom/meizu/widget/ViewPagerOverScrollLayout;)V
    .locals 2
    .param p1, "this$0"    # Lcom/meizu/widget/ViewPagerOverScrollLayout;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->start:Z

    .line 248
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 247
    return-void
.end method


# virtual methods
.method endFling()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 262
    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 260
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v11, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 268
    .local v11, "scroller":Landroid/widget/OverScroller;
    invoke-virtual {v11}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v3

    .line 270
    .local v3, "scrollX":I
    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 271
    .local v10, "currX":I
    sub-int v1, v10, v3

    .line 272
    .local v1, "deltaX":I
    iput-boolean v2, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->start:Z

    .line 273
    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    .line 274
    iget-object v4, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    iget v7, v4, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mOverscrollDistance:I

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    .line 273
    invoke-static/range {v0 .. v9}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->-wrap0(Lcom/meizu/widget/ViewPagerOverScrollLayout;IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    if-gtz v3, :cond_1

    if-lez v10, :cond_1

    .line 277
    :cond_0
    invoke-virtual {v11}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 266
    .end local v1    # "deltaX":I
    .end local v3    # "scrollX":I
    .end local v10    # "currX":I
    :goto_0
    return-void

    .line 275
    .restart local v1    # "deltaX":I
    .restart local v3    # "scrollX":I
    .restart local v10    # "currX":I
    :cond_1
    if-ltz v3, :cond_2

    if-ltz v10, :cond_0

    .line 279
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->startSpringback()V

    goto :goto_0

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->invalidate()V

    .line 283
    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 286
    .end local v1    # "deltaX":I
    .end local v3    # "scrollX":I
    .end local v10    # "currX":I
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->endFling()V

    goto :goto_0
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v1}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->start:Z

    .line 254
    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->invalidate()V

    .line 255
    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 251
    :cond_0
    return-void
.end method
