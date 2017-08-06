.class Lcom/meizu/findphone/FindPhoneService$1;
.super Ljava/lang/Object;
.source "FindPhoneService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/findphone/FindPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/findphone/FindPhoneService;


# direct methods
.method constructor <init>(Lcom/meizu/findphone/FindPhoneService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/findphone/FindPhoneService;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/findphone/FindPhoneService$1;->this$0:Lcom/meizu/findphone/FindPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 49
    iget-object v2, p0, Lcom/meizu/findphone/FindPhoneService$1;->this$0:Lcom/meizu/findphone/FindPhoneService;

    iget-object v3, v2, Lcom/meizu/findphone/FindPhoneService;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 50
    :try_start_0
    const-string/jumbo v2, "FindPhoneService"

    const-string/jumbo v4, "onServiceConnected-------------"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p2}, Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/flyme/service/find/IPhoneLocationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 53
    .local v1, "findPhoneService":Lcom/meizu/flyme/service/find/IPhoneLocationService;
    :try_start_1
    const-string/jumbo v2, "FindPhoneService"

    const-string/jumbo v4, "try findPhoneService.lockPhone();"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-interface {v1}, Lcom/meizu/flyme/service/find/IPhoneLocationService;->lockPhone()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/meizu/findphone/FindPhoneService$1;->this$0:Lcom/meizu/findphone/FindPhoneService;

    invoke-static {v2}, Lcom/meizu/findphone/FindPhoneService;->-get0(Lcom/meizu/findphone/FindPhoneService;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/meizu/findphone/FindPhoneService$1;->this$0:Lcom/meizu/findphone/FindPhoneService;

    iget-object v4, v4, Lcom/meizu/findphone/FindPhoneService;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 48
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 49
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "findPhoneService":Lcom/meizu/flyme/service/find/IPhoneLocationService;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 65
    const-string/jumbo v0, "FindPhoneService"

    const-string/jumbo v1, "onServiceDisconnected-------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method
