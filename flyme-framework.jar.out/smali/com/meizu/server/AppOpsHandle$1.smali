.class Lcom/meizu/server/AppOpsHandle$1;
.super Landroid/os/Handler;
.source "AppOpsHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/AppOpsHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/AppOpsHandle;


# direct methods
.method constructor <init>(Lcom/meizu/server/AppOpsHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/server/AppOpsHandle;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/meizu/server/AppOpsHandle$1;->this$0:Lcom/meizu/server/AppOpsHandle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "opString":Ljava/lang/String;
    sget-boolean v1, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v1, :cond_0

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

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/meizu/server/AppOpsHandle$1;->this$0:Lcom/meizu/server/AppOpsHandle;

    invoke-static {v1}, Lcom/meizu/server/AppOpsHandle;->-get0(Lcom/meizu/server/AppOpsHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 71
    const/4 v2, 0x2

    .line 70
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 74
    .end local v0    # "opString":Ljava/lang/String;
    :pswitch_1
    sget-boolean v1, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "FlymePermissionManager"

    const-string/jumbo v2, "SHOW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/meizu/server/AppOpsHandle$1;->this$0:Lcom/meizu/server/AppOpsHandle;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v2, v1}, Lcom/meizu/server/AppOpsHandle;->-wrap0(Lcom/meizu/server/AppOpsHandle;Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    :pswitch_2
    sget-boolean v1, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FlymePermissionManager"

    const-string/jumbo v2, "DISMISS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/meizu/server/AppOpsHandle$1;->this$0:Lcom/meizu/server/AppOpsHandle;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/meizu/server/AppOpsHandle$DialogItem;

    invoke-static {v2, v1}, Lcom/meizu/server/AppOpsHandle;->-wrap1(Lcom/meizu/server/AppOpsHandle;Lcom/meizu/server/AppOpsHandle$DialogItem;)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
