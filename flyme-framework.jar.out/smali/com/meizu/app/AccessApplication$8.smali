.class Lcom/meizu/app/AccessApplication$8;
.super Ljava/lang/Object;
.source "AccessApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication;->verifyThePassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/app/AccessApplication;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/app/AccessApplication;
    .param p2, "val$password"    # Ljava/lang/String;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    iput-object p2, p0, Lcom/meizu/app/AccessApplication$8;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 548
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$8;->val$password:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/app/AccessApplication;->-wrap0(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0, v2}, Lcom/meizu/app/AccessApplication;->-set2(Lcom/meizu/app/AccessApplication;Z)Z

    .line 550
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->-get2(Lcom/meizu/app/AccessApplication;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->-wrap7(Lcom/meizu/app/AccessApplication;)V

    .line 547
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->-wrap6(Lcom/meizu/app/AccessApplication;)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->-wrap3(Lcom/meizu/app/AccessApplication;)V

    .line 557
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->-get3(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 558
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->-get3(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v1}, Lcom/meizu/app/AccessApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 559
    sget v2, Lcom/flyme/internal/R$string;->confirm_password_error:I

    .line 558
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->setTipAnimShake(Ljava/lang/String;)V

    goto :goto_0
.end method
