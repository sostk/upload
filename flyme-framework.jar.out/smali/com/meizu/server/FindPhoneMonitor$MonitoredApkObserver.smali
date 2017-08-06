.class final Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;
.super Landroid/os/FileObserver;
.source "FindPhoneMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/FindPhoneMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MonitoredApkObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FindPhoneMonitor;


# direct methods
.method public constructor <init>(Lcom/meizu/server/FindPhoneMonitor;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/server/FindPhoneMonitor;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mask"    # I

    .prologue
    .line 214
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    .line 215
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 214
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 7
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->-get3(Lcom/meizu/server/FindPhoneMonitor;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->-get2(Lcom/meizu/server/FindPhoneMonitor;)I

    move-result v1

    or-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/meizu/server/FindPhoneMonitor;->-set0(Lcom/meizu/server/FindPhoneMonitor;I)I

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MonitoredApkObserver.onEvent(), event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->-wrap8(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->-get1(Lcom/meizu/server/FindPhoneMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    const-wide/16 v4, 0xbb8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/meizu/server/FindPhoneMonitor;->-wrap9(Lcom/meizu/server/FindPhoneMonitor;IILjava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 218
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method
