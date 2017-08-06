.class public Lcom/meizu/server/FlymePermissionService;
.super Lmeizu/security/IFlymePermissionService$Stub;
.source "FlymePermissionService.java"


# static fields
.field public static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PermissionControl"


# instance fields
.field appOpsHandle:Lcom/meizu/server/AppOpsHandle;

.field appOpsHandleCTA:Lcom/meizu/server/AppOpsHandleCTA;

.field findPhoneMonitor:Lcom/meizu/server/FindPhoneMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Lmeizu/security/IFlymePermissionService$Stub;-><init>()V

    .line 30
    sget-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PermissionControl"

    const-string/jumbo v1, "PermissionControlService construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    new-instance v0, Lcom/meizu/server/AppOpsHandle;

    invoke-direct {v0, p1}, Lcom/meizu/server/AppOpsHandle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/server/FlymePermissionService;->appOpsHandle:Lcom/meizu/server/AppOpsHandle;

    .line 32
    sget-boolean v0, Lmeizu/security/FlymePermissionManager;->IS_CTA_TESTER:Z

    if-eqz v0, :cond_1

    .line 33
    new-instance v0, Lcom/meizu/server/AppOpsHandleCTA;

    invoke-direct {v0, p1}, Lcom/meizu/server/AppOpsHandleCTA;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/server/FlymePermissionService;->appOpsHandleCTA:Lcom/meizu/server/AppOpsHandleCTA;

    .line 35
    :cond_1
    invoke-static {}, Lcom/meizu/server/FindPhoneMonitor;->isFindPhoneMonitorEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    new-instance v0, Lcom/meizu/server/FindPhoneMonitor;

    invoke-direct {v0, p1}, Lcom/meizu/server/FindPhoneMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/server/FlymePermissionService;->findPhoneMonitor:Lcom/meizu/server/FindPhoneMonitor;

    .line 29
    :cond_2
    return-void
.end method


# virtual methods
.method checkComponentPermission(Ljava/lang/String;)I
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 97
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 99
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 100
    const/4 v2, 0x0

    return v2

    .line 104
    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 103
    invoke-static {p1, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v2

    return v2
.end method

.method public connectSocketService(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    sget-boolean v1, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PermissionControl"

    const-string/jumbo v2, "connectSocketService in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    new-instance v0, Lcom/meizu/server/SocketService;

    invoke-direct {v0}, Lcom/meizu/server/SocketService;-><init>()V

    .line 83
    .local v0, "service":Lcom/meizu/server/SocketService;
    invoke-virtual {v0, p1}, Lcom/meizu/server/SocketService;->handleMessage(Landroid/os/Message;)V

    .line 80
    return-void
.end method

.method public forceKillProcess(I)V
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 66
    const-string/jumbo v1, "android.permission.FORCE_KILL_PROCESS"

    invoke-virtual {p0, v1}, Lcom/meizu/server/FlymePermissionService;->checkComponentPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: forceStopPackage() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    const-string/jumbo v2, ", uid="

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    const-string/jumbo v2, " requires android.permission.FORCE_KILL_PROCESS"

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "PermissionControl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "PermissionControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Force kill process pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " by AMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 65
    return-void
.end method

.method public noteIntentOperation(IILjava/lang/String;Landroid/content/Intent;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    sget-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PermissionControl"

    const-string/jumbo v1, "noteIntentOperation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    sget-boolean v0, Lmeizu/security/FlymePermissionManager;->IS_CTA_TESTER:Z

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->appOpsHandleCTA:Lcom/meizu/server/AppOpsHandleCTA;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/server/AppOpsHandleCTA;->handleIntentOperation(IILjava/lang/String;Lcom/meizu/server/FlymePermissionService;Landroid/content/Intent;)I

    move-result v0

    return v0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->appOpsHandle:Lcom/meizu/server/AppOpsHandle;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/server/AppOpsHandle;->handleIntentOperation(IILjava/lang/String;Lcom/meizu/server/FlymePermissionService;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public noteIntentPidOperation(IIILandroid/content/Intent;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    sget-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PermissionControl"

    const-string/jumbo v1, "noteIntentOperation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    sget-boolean v0, Lmeizu/security/FlymePermissionManager;->IS_CTA_TESTER:Z

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->appOpsHandleCTA:Lcom/meizu/server/AppOpsHandleCTA;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/server/AppOpsHandleCTA;->handleIntentPidOperation(IIILcom/meizu/server/FlymePermissionService;Landroid/content/Intent;)I

    move-result v0

    return v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->appOpsHandle:Lcom/meizu/server/AppOpsHandle;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/server/AppOpsHandle;->handleIntentPidOperation(IIILcom/meizu/server/FlymePermissionService;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public setCtsRunning(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 88
    sget-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PermissionControl"

    const-string/jumbo v1, "setCtsRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->appOpsHandle:Lcom/meizu/server/AppOpsHandle;

    invoke-virtual {v0, p1}, Lcom/meizu/server/AppOpsHandle;->setCtsRunning(Z)V

    .line 87
    return-void
.end method
