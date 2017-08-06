.class Lcom/meizu/app/AccessApplication$1;
.super Landroid/os/Handler;
.source "AccessApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/app/AccessApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/app/AccessApplication;


# direct methods
.method constructor <init>(Lcom/meizu/app/AccessApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/app/AccessApplication;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 708
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 707
    :goto_0
    :pswitch_0
    return-void

    .line 710
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 711
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2, v5}, Lcom/meizu/app/AccessApplication;->-set2(Lcom/meizu/app/AccessApplication;Z)Z

    .line 712
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->-get2(Lcom/meizu/app/AccessApplication;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 713
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->-wrap7(Lcom/meizu/app/AccessApplication;)V

    goto :goto_0

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->-wrap6(Lcom/meizu/app/AccessApplication;)V

    goto :goto_0

    .line 718
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 719
    return-void

    .line 722
    :cond_2
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->-get3(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v3}, Lcom/meizu/app/AccessApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 723
    sget v4, Lcom/flyme/internal/R$string;->mz_fp_verify_failed:I

    .line 722
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 724
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    iget-object v3, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v3}, Lcom/meizu/app/AccessApplication;->-get3(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v3

    .line 725
    sget v4, Lcom/flyme/internal/R$id;->inputTips:I

    .line 724
    invoke-virtual {v3, v4}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/app/AccessApplication;->-wrap9(Lcom/meizu/app/AccessApplication;Landroid/view/View;)V

    goto :goto_0

    .line 737
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 738
    .local v0, "timeout":I
    if-gtz v0, :cond_4

    .line 739
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->-get3(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v3}, Lcom/meizu/app/AccessApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 740
    sget v4, Lcom/flyme/internal/R$string;->confirm_access_password_tip:I

    .line 739
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 742
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->-get0(Lcom/meizu/app/AccessApplication;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 743
    const/4 v1, 0x0

    .line 744
    .local v1, "token":[B
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->-get0(Lcom/meizu/app/AccessApplication;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/fingerprint/FingerprintManager;->resetTimeout([B)V

    .line 746
    .end local v1    # "token":[B
    :cond_3
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->-wrap8(Lcom/meizu/app/AccessApplication;)V

    goto :goto_0

    .line 749
    :cond_4
    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 750
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->-get3(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    .line 751
    sget v4, Lcom/flyme/internal/R$string;->mz_fp_lockout:I

    .line 750
    new-array v5, v5, [Ljava/lang/Object;

    .line 751
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 750
    invoke-virtual {v3, v4, v5}, Lcom/meizu/app/AccessApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 754
    add-int/lit8 v0, v0, -0x1

    .line 755
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->-get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v3}, Lcom/meizu/app/AccessApplication;->-get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 759
    :cond_5
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->-get3(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    .line 760
    sget v4, Lcom/flyme/internal/R$string;->mz_fp_lockout:I

    .line 759
    new-array v5, v5, [Ljava/lang/Object;

    .line 760
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 759
    invoke-virtual {v3, v4, v5}, Lcom/meizu/app/AccessApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 761
    add-int/lit8 v0, v0, -0x1

    .line 762
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->-get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v3}, Lcom/meizu/app/AccessApplication;->-get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 708
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
