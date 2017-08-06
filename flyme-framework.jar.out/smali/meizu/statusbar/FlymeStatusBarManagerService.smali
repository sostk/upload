.class public Lmeizu/statusbar/FlymeStatusBarManagerService;
.super Lmeizu/statusbar/IFlymeStatusBarService$Stub;
.source "FlymeStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlymeStatusBarManagerService"


# instance fields
.field private volatile mBar:Lmeizu/statusbar/IFlymeStatusBar;

.field private final mNotificationReplyClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lmeizu/statusbar/FlymeStatusBarManagerService;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lmeizu/statusbar/FlymeStatusBarManagerService;->setNotificationReplyingInfoLocked(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mNotificationReplyClients:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method private setNotificationReplyingInfoLocked(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 78
    if-eqz p2, :cond_2

    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    iget-object v3, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mNotificationReplyClients:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;

    .line 85
    .local v0, "client":Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;

    .end local v0    # "client":Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;
    invoke-direct {v0, p0, p1, p2}, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;-><init>(Lmeizu/statusbar/FlymeStatusBarManagerService;Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 88
    .restart local v0    # "client":Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iget-object v3, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mNotificationReplyClients:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    :goto_0
    iget-object v3, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    if-eqz v3, :cond_1

    .line 100
    :try_start_1
    iget-object v3, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    invoke-interface {v3, p2}, Lmeizu/statusbar/IFlymeStatusBar;->setNotificationReplyingInfo(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :cond_1
    :goto_1
    return-void

    .line 79
    .end local v0    # "client":Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;
    :cond_2
    iget-object v3, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mNotificationReplyClients:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;

    .line 80
    .restart local v0    # "client":Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;
    if-eqz v0, :cond_0

    .line 81
    iget-object v3, v0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;->token:Landroid/os/IBinder;

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "ex":Landroid/os/RemoteException;
    return-void

    .line 101
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public hideAlwaysTextAndIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    if-eqz v1, :cond_0

    .line 122
    :try_start_0
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    invoke-interface {v1, p1}, Lmeizu/statusbar/IFlymeStatusBar;->hideAlwaysTextAndIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerStatusBar(Lmeizu/statusbar/IFlymeStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lmeizu/statusbar/IFlymeStatusBar;

    .prologue
    .line 35
    iput-object p1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    .line 34
    return-void
.end method

.method public releaseAndCloseHeadsUp()V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    invoke-interface {v1}, Lmeizu/statusbar/IFlymeStatusBar;->releaseAndCloseHeadsUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setNotificationReplyingInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/os/Bundle;

    .prologue
    .line 71
    iget-object v0, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mNotificationReplyClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-direct {p0, p1, p2}, Lmeizu/statusbar/FlymeStatusBarManagerService;->setNotificationReplyingInfoLocked(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setStatusBarColorTheme(IZ)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 49
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    if-eqz v1, :cond_0

    .line 51
    :try_start_0
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    invoke-interface {v1, p1, p2}, Lmeizu/statusbar/IFlymeStatusBar;->setStatusBarColorTheme(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setStatusBarDarkTheme(ZZ)V
    .locals 2
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 38
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    invoke-interface {v1, p1, p2}, Lmeizu/statusbar/IFlymeStatusBar;->setStatusBarDarkTheme(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showAlwaysTextAndIcon(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    .line 109
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    invoke-interface {v1, p1}, Lmeizu/statusbar/IFlymeStatusBar;->showAlwaysTextAndIcon(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
