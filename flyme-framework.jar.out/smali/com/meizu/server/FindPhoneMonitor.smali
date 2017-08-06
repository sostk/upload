.class public Lcom/meizu/server/FindPhoneMonitor;
.super Ljava/lang/Object;
.source "FindPhoneMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;,
        Lcom/meizu/server/FindPhoneMonitor$ApkInfo;,
        Lcom/meizu/server/FindPhoneMonitor$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DELAY_TIME_CHECK_APK:I = 0xbb8

.field private static final DELAY_TIME_CLICK_DIALOG:I = 0x2710

.field private static final DIALOG_STYLE_APK_CHANGED:I = 0x0

.field private static final DIALOG_STYLE_APP_STATE_CHANGED:I = 0x1

.field private static final FIND_PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.meizu.flyme.service.find"

.field private static final MONITORED_APKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/server/FindPhoneMonitor$ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_CHECK_MONITORED_APK:I = 0x1

.field private static final MSG_CHECK_MONITORED_APP_STATE:I = 0x5

.field private static final MSG_CLICK_DIALOG:I = 0x4

.field private static final MSG_MONITORED_APK_CHANGED:I = 0x2

.field private static final MSG_MONITORED_APP_STATE_CHANGED:I = 0x6

.field private static final MSG_SHOW_DIALOG:I = 0x3

.field private static final MZ_ACCOUNT_PACKAGE_NAME:Ljava/lang/String; = "com.meizu.account"

.field private static final MZ_CLOUD_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.meizu.cloud"

.field private static final TAG:Ljava/lang/String; = "FindPhoneMonitor"

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsHandleApkChanged:Z

.field private mIsHandleAppStateChanged:Z

.field private mLastEvent:I

.field private mLock:Ljava/lang/Object;

.field private mMonitoredApkObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/server/FindPhoneMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/server/FindPhoneMonitor;)I
    .locals 1

    iget v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mLastEvent:I

    return v0
.end method

.method static synthetic -get3(Lcom/meizu/server/FindPhoneMonitor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/server/FindPhoneMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/server/FindPhoneMonitor;->mLastEvent:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/server/FindPhoneMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->checkMonitoredApkAsyn()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/meizu/server/FindPhoneMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->checkMonitoredApk()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/meizu/server/FindPhoneMonitor;IILjava/lang/Object;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/server/FindPhoneMonitor;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/server/FindPhoneMonitor;->showWarnmingDialog(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/meizu/server/FindPhoneMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->checkMonitoredAppStateAsyn()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/meizu/server/FindPhoneMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->checkMonitoredAppState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/server/FindPhoneMonitor;->clickDialogButton(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/meizu/server/FindPhoneMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->enableMonitoredApp()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/server/FindPhoneMonitor;->handleMonitoredApkChanged(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/server/FindPhoneMonitor;->handleMonitoredAppStateChanged(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap8(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/meizu/server/FindPhoneMonitor;IILjava/lang/Object;J)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/meizu/server/FindPhoneMonitor;->sendMessageDelay(IILjava/lang/Object;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    .line 51
    sget-object v0, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    new-instance v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    const-string/jumbo v2, "MzPhoneLocationService"

    const-string/jumbo v3, "MzPhoneLocationService.apk"

    const-string/jumbo v4, "com.meizu.flyme.service.find"

    invoke-direct {v1, v2, v3, v4}, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    new-instance v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    const-string/jumbo v2, "MzAccount"

    const-string/jumbo v3, "MzAccount.apk"

    const-string/jumbo v4, "com.meizu.account"

    invoke-direct {v1, v2, v3, v4}, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    new-instance v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    const-string/jumbo v2, "MzCloudService"

    const-string/jumbo v3, "MzCloudService.apk"

    const-string/jumbo v4, "com.meizu.cloud"

    invoke-direct {v1, v2, v3, v4}, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/server/FindPhoneMonitor;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/meizu/server/FindPhoneMonitor;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v6, Lcom/meizu/server/FindPhoneMonitor$1;

    invoke-direct {v6, p0}, Lcom/meizu/server/FindPhoneMonitor$1;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    iput-object v6, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    .line 94
    const-string/jumbo v6, "startFindPhoneWatch"

    invoke-static {v6}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    .line 96
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/meizu/server/FindPhoneMonitor;->mMonitoredApkObservers:Ljava/util/List;

    .line 97
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "app"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v5, "systemAppDir":Ljava/io/File;
    const/16 v2, 0xece

    .line 104
    .local v2, "mash":I
    sget-object v6, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    .line 105
    .local v0, "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    new-instance v3, Ljava/io/File;

    iget-object v6, v0, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->parentName:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v3, "monitoredDir":Ljava/io/File;
    new-instance v4, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v6, v2}, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;-><init>(Lcom/meizu/server/FindPhoneMonitor;Ljava/lang/String;I)V

    .line 107
    .local v4, "observer":Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;
    iget-object v6, p0, Lcom/meizu/server/FindPhoneMonitor;->mMonitoredApkObservers:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v4}, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;->startWatching()V

    goto :goto_0

    .line 111
    .end local v0    # "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    .end local v3    # "monitoredDir":Ljava/io/File;
    .end local v4    # "observer":Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;
    :cond_0
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->enableMonitoredAppAsyn()V

    .line 113
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->registerPackageChangedRecever()V

    .line 114
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->registerBootCompletedRecever()V

    .line 93
    return-void
.end method

.method private buildAlertDialog(Ljava/lang/String;I)Landroid/app/AlertDialog;
    .locals 11
    .param p1, "changedPackageName"    # Ljava/lang/String;
    .param p2, "dialogType"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 229
    invoke-direct {p0, p2}, Lcom/meizu/server/FindPhoneMonitor;->buildDialogClickListener(I)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 230
    .local v3, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    .line 231
    const/4 v8, 0x5

    .line 230
    invoke-direct {v0, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 232
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0, p1}, Lcom/meizu/server/FindPhoneMonitor;->getChangedAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "changedAppName":Ljava/lang/String;
    if-ne p2, v9, :cond_0

    sget v5, Lcom/flyme/internal/R$string;->find_phone_state_dialog_content:I

    .line 234
    .local v5, "contentTextId":I
    :goto_0
    iget-object v7, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "content":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 236
    if-ne p2, v9, :cond_1

    sget v1, Lcom/flyme/internal/R$string;->find_phone_state_dialog_button:I

    .line 237
    .local v1, "buttonTextId":I
    :goto_1
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 239
    .local v6, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7e0

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 240
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 241
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 242
    return-object v6

    .line 233
    .end local v1    # "buttonTextId":I
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "contentTextId":I
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    sget v5, Lcom/flyme/internal/R$string;->find_phone_dialog_content:I

    .restart local v5    # "contentTextId":I
    goto :goto_0

    .line 236
    .restart local v4    # "content":Ljava/lang/String;
    :cond_1
    sget v1, Lcom/flyme/internal/R$string;->find_phone_dialog_button:I

    .restart local v1    # "buttonTextId":I
    goto :goto_1
.end method

.method private buildDialogClickListener(I)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p1, "dialogType"    # I

    .prologue
    .line 246
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 247
    new-instance v0, Lcom/meizu/server/FindPhoneMonitor$5;

    invoke-direct {v0, p0}, Lcom/meizu/server/FindPhoneMonitor$5;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    return-object v0

    .line 254
    :cond_0
    new-instance v0, Lcom/meizu/server/FindPhoneMonitor$6;

    invoke-direct {v0, p0}, Lcom/meizu/server/FindPhoneMonitor$6;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    return-object v0
.end method

.method private declared-synchronized checkMonitoredApk()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 273
    const/4 v3, 0x0

    .line 274
    .local v3, "isApkModified":Z
    const/4 v0, 0x0

    .line 275
    .local v0, "changedPackageName":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    .line 276
    .local v1, "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    invoke-direct {p0, v1}, Lcom/meizu/server/FindPhoneMonitor;->isApkModified(Lcom/meizu/server/FindPhoneMonitor$ApkInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    const/4 v3, 0x1

    .line 278
    iget-object v0, v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->packageName:Ljava/lang/String;

    .line 282
    .end local v0    # "changedPackageName":Ljava/lang/String;
    .end local v1    # "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    :cond_1
    if-eqz v3, :cond_2

    .line 283
    iget-object v4, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v0}, Lcom/meizu/server/FindPhoneMonitor;->sendMessage(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 272
    return-void

    .end local v2    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private checkMonitoredApkAsyn()V
    .locals 2

    .prologue
    .line 344
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/server/FindPhoneMonitor$7;

    invoke-direct {v1, p0}, Lcom/meizu/server/FindPhoneMonitor$7;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 343
    return-void
.end method

.method private declared-synchronized checkMonitoredAppState()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 362
    const/4 v3, 0x0

    .line 363
    .local v3, "isAppDisable":Z
    const/4 v0, 0x0

    .line 364
    .local v0, "disablePackageName":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    .line 365
    .local v1, "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    iget-object v4, v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/meizu/server/FindPhoneMonitor;->isAppEnable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 366
    const/4 v3, 0x1

    .line 367
    iget-object v0, v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->packageName:Ljava/lang/String;

    .line 371
    .end local v0    # "disablePackageName":Ljava/lang/String;
    .end local v1    # "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    :cond_1
    if-eqz v3, :cond_2

    .line 372
    iget-object v4, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, v0}, Lcom/meizu/server/FindPhoneMonitor;->sendMessage(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 361
    return-void

    .end local v2    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private checkMonitoredAppStateAsyn()V
    .locals 2

    .prologue
    .line 353
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/server/FindPhoneMonitor$8;

    invoke-direct {v1, p0}, Lcom/meizu/server/FindPhoneMonitor$8;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 352
    return-void
.end method

.method private clickDialogButton(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 417
    iput-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    .line 419
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 421
    iput-boolean v2, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleAppStateChanged:Z

    .line 414
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->doRecovery()V

    .line 425
    iput-boolean v2, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleApkChanged:Z

    goto :goto_0
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v4, 0x0

    .line 459
    if-nez p0, :cond_1

    .line 460
    if-nez p1, :cond_0

    .line 461
    const/4 v3, 0x1

    .line 460
    :goto_0
    return v3

    .line 462
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 464
    :cond_1
    if-nez p1, :cond_2

    .line 465
    const/4 v3, -0x2

    return v3

    .line 467
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 468
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p0

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, p0, v3

    .line 469
    .local v2, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 471
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 472
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_4

    aget-object v2, p1, v3

    .line 473
    .restart local v2    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 476
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 477
    return v4

    .line 479
    :cond_5
    const/4 v3, -0x3

    return v3
.end method

.method private doRecovery()V
    .locals 3

    .prologue
    .line 430
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 431
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "recovery"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method private enableApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v3, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 135
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 136
    .local v2, "state":I
    invoke-direct {p0, v2}, Lcom/meizu/server/FindPhoneMonitor;->isEnableState(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enableApp.setApplicationEnabledSetting()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v2    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enableApp.setApplicationEnabledSetting, Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableMonitoredApp()V
    .locals 3

    .prologue
    .line 127
    sget-object v2, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    .line 128
    .local v0, "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    iget-object v2, v0, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/meizu/server/FindPhoneMonitor;->enableApp(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v0    # "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    :cond_0
    return-void
.end method

.method private enableMonitoredAppAsyn()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/server/FindPhoneMonitor$2;

    invoke-direct {v1, p0}, Lcom/meizu/server/FindPhoneMonitor$2;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method

.method private getChangedAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "changedPackageName"    # Ljava/lang/String;

    .prologue
    .line 264
    const-string/jumbo v0, "com.meizu.account"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    sget v1, Lcom/flyme/internal/R$string;->find_phone_app_name_mzaccount:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 266
    :cond_0
    const-string/jumbo v0, "com.meizu.cloud"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    sget v1, Lcom/flyme/internal/R$string;->find_phone_app_name_mzcloud:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    sget v1, Lcom/flyme/internal/R$string;->find_phone_app_name_find_phone:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleMonitoredApkChanged(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 378
    iget-object v6, p0, Lcom/meizu/server/FindPhoneMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 379
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleApkChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v6

    .line 380
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleApkChanged:Z

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMonitoredApkChanged, mLastEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mLastEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mLastEvent:I

    .line 385
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/meizu/server/FindPhoneMonitor;->sendMessage(IILjava/lang/Object;)V

    .line 386
    const-wide/16 v4, 0x2710

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/server/FindPhoneMonitor;->sendMessageDelay(IILjava/lang/Object;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 377
    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private handleMonitoredAppStateChanged(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 391
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleAppStateChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 393
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleAppStateChanged:Z

    .line 396
    iget-boolean v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleApkChanged:Z

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/meizu/server/FindPhoneMonitor;->sendMessage(IILjava/lang/Object;)V

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->enableMonitoredAppAsyn()V

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleAppStateChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 390
    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isApkModified(Lcom/meizu/server/FindPhoneMonitor$ApkInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    .prologue
    .line 294
    const-string/jumbo v0, "app"

    invoke-direct {p0, p1, v0}, Lcom/meizu/server/FindPhoneMonitor;->isApkModified(Lcom/meizu/server/FindPhoneMonitor$ApkInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x0

    return v0

    .line 297
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isApkModified(Lcom/meizu/server/FindPhoneMonitor$ApkInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "info"    # Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    .param p2, "systemDirName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 307
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 308
    .local v2, "systemAppDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->parentName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    .local v0, "apkDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v3, p1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 310
    .local v1, "apkFile":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/meizu/server/FindPhoneMonitor;->verifyApkExist(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 312
    return v5

    .line 313
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/meizu/server/FindPhoneMonitor;->verifyApkContent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 314
    return v5

    .line 316
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private isAppEnable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v3, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 148
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 149
    .local v2, "state":I
    invoke-direct {p0, v2}, Lcom/meizu/server/FindPhoneMonitor;->isEnableState(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 150
    .end local v2    # "state":I
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isAppEnable.getApplicationEnabledSetting, Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 153
    const/4 v3, 0x0

    return v3
.end method

.method private isEnableState(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 157
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isFindPhoneMonitorEnable()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 488
    sget-object v0, Landroid/os/BuildExt;->IS_M95:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    return v1

    .line 492
    :cond_0
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    const-string/jumbo v0, "Monitor disable for isProductInternational"

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 495
    return v1

    .line 497
    :cond_1
    invoke-static {}, Landroid/os/BuildExt;->isFlymeRom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    const-string/jumbo v0, "Monitor disable for isFlymeRom"

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 500
    return v1

    .line 502
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static isSystemSignatures([Landroid/content/pm/Signature;)Z
    .locals 6
    .param p0, "signature"    # [Landroid/content/pm/Signature;

    .prologue
    .line 441
    const/4 v2, 0x0

    .line 442
    .local v2, "isSystemSignaturesFlag":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 443
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 444
    .local v3, "pm":Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/meizu/server/FindPhoneMonitor;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v4, :cond_0

    .line 446
    :try_start_0
    const-string/jumbo v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    sput-object v4, Lcom/meizu/server/FindPhoneMonitor;->sSystemSignature:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :cond_0
    :goto_0
    sget-object v4, Lcom/meizu/server/FindPhoneMonitor;->sSystemSignature:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_1

    .line 451
    sget-object v4, Lcom/meizu/server/FindPhoneMonitor;->sSystemSignature:[Landroid/content/pm/Signature;

    invoke-static {v4, p0}, Lcom/meizu/server/FindPhoneMonitor;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v4

    if-nez v4, :cond_1

    .line 452
    const/4 v2, 0x1

    .line 455
    :cond_1
    return v2

    .line 447
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 436
    const-string/jumbo v0, "FindPhoneMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void
.end method

.method private registerBootCompletedRecever()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/meizu/server/FindPhoneMonitor$3;

    invoke-direct {v2, p0}, Lcom/meizu/server/FindPhoneMonitor$3;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method private registerPackageChangedRecever()V
    .locals 3

    .prologue
    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/meizu/server/FindPhoneMonitor$4;

    invoke-direct {v2, p0}, Lcom/meizu/server/FindPhoneMonitor$4;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 199
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 200
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    return-void
.end method

.method private sendMessageDelay(IILjava/lang/Object;J)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .prologue
    .line 205
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 206
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 207
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 208
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 204
    return-void
.end method

.method private showWarnmingDialog(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 406
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 409
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 410
    .local v0, "changedPackageName":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/server/FindPhoneMonitor;->buildAlertDialog(Ljava/lang/String;I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    .line 411
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 405
    return-void
.end method

.method private verifyApkContent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 324
    iget-object v2, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 325
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 326
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " packageInfo is null! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 328
    return v4

    .line 330
    :cond_0
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v2}, Lcom/meizu/server/FindPhoneMonitor;->isSystemSignatures([Landroid/content/pm/Signature;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " systemSignature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/meizu/server/FindPhoneMonitor;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v2, :cond_1

    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " apkSignatures = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v2, :cond_2

    const-string/jumbo v2, "null"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 333
    return v4

    .line 331
    :cond_1
    sget-object v2, Lcom/meizu/server/FindPhoneMonitor;->sSystemSignature:[Landroid/content/pm/Signature;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 332
    :cond_2
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 335
    :cond_3
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "apk packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 338
    return v4

    .line 340
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private verifyApkExist(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 320
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
