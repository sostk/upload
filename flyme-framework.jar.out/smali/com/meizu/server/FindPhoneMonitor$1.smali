.class Lcom/meizu/server/FindPhoneMonitor$1;
.super Landroid/os/Handler;
.source "FindPhoneMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/FindPhoneMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FindPhoneMonitor;


# direct methods
.method constructor <init>(Lcom/meizu/server/FindPhoneMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/server/FindPhoneMonitor;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->-wrap0(Lcom/meizu/server/FindPhoneMonitor;)V

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0, p1}, Lcom/meizu/server/FindPhoneMonitor;->-wrap6(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0, p1}, Lcom/meizu/server/FindPhoneMonitor;->-wrap11(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V

    goto :goto_0

    .line 81
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0, p1}, Lcom/meizu/server/FindPhoneMonitor;->-wrap4(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V

    goto :goto_0

    .line 84
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->-wrap2(Lcom/meizu/server/FindPhoneMonitor;)V

    goto :goto_0

    .line 87
    :pswitch_5
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0, p1}, Lcom/meizu/server/FindPhoneMonitor;->-wrap7(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
