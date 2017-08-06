.class Lcom/meizu/server/AppOpsHandleCTA$1;
.super Landroid/os/Handler;
.source "AppOpsHandleCTA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/AppOpsHandleCTA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/AppOpsHandleCTA;


# direct methods
.method constructor <init>(Lcom/meizu/server/AppOpsHandleCTA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/server/AppOpsHandleCTA;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/server/AppOpsHandleCTA$1;->this$0:Lcom/meizu/server/AppOpsHandleCTA;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 90
    .local v0, "opString":Ljava/lang/String;
    sget-boolean v1, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 91
    const-string/jumbo v1, "FlymePermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UPDATE_DEFUAT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/meizu/server/AppOpsHandleCTA$1;->this$0:Lcom/meizu/server/AppOpsHandleCTA;

    invoke-static {v1}, Lcom/meizu/server/AppOpsHandleCTA;->-get0(Lcom/meizu/server/AppOpsHandleCTA;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 93
    const/4 v2, 0x2

    .line 92
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 96
    .end local v0    # "opString":Ljava/lang/String;
    :pswitch_1
    sget-boolean v1, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 97
    const-string/jumbo v1, "FlymePermissionManager"

    const-string/jumbo v2, "SHOW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/meizu/server/AppOpsHandleCTA$1;->this$0:Lcom/meizu/server/AppOpsHandleCTA;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v2, v1}, Lcom/meizu/server/AppOpsHandleCTA;->-wrap0(Lcom/meizu/server/AppOpsHandleCTA;Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :pswitch_2
    sget-boolean v1, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 102
    const-string/jumbo v1, "FlymePermissionManager"

    const-string/jumbo v2, "DISMISS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/meizu/server/AppOpsHandleCTA$1;->this$0:Lcom/meizu/server/AppOpsHandleCTA;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;

    invoke-static {v2, v1}, Lcom/meizu/server/AppOpsHandleCTA;->-wrap1(Lcom/meizu/server/AppOpsHandleCTA;Lcom/meizu/server/AppOpsHandleCTA$DialogItem;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
