.class public Lcom/meizu/server/AccessControlService;
.super Lmeizu/security/IAccessControlManager$Stub;
.source "AccessControlService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "AccessControlManager"

.field private static mVideoActivityClass:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mVideoActivityPkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z

.field private mAccessControlGuardEnable:Z

.field private mAccessControlPassPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessControlPasswordEnable:Z

.field final mContext:Landroid/content/Context;

.field private mControlGuardPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlOpenPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlPasswordPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPolicy:Landroid/view/WindowManagerPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/server/AccessControlService;->mVideoActivityPkg:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/server/AccessControlService;->mVideoActivityClass:Ljava/util/ArrayList;

    .line 84
    sget-object v0, Lcom/meizu/server/AccessControlService;->mVideoActivityPkg:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/meizu/server/AccessControlService;->mVideoActivityPkg:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/meizu/server/AccessControlService;->mVideoActivityClass:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/meizu/server/AccessControlService;->mVideoActivityClass:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.av.ui.VideoInviteFull"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/meizu/server/AccessControlService;->mVideoActivityClass:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.av.ui.VideoInviteLock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/meizu/server/AccessControlService;->mVideoActivityClass:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.av.ui.AVActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/meizu/server/AccessControlService;->mVideoActivityClass:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.av.ui.VChatActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lmeizu/security/IAccessControlManager$Stub;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/meizu/server/AccessControlService;->DEBUG:Z

    .line 62
    iput-boolean v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    .line 64
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    .line 72
    iput-boolean v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlGuardEnable:Z

    .line 102
    iput-object p1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 103
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/server/AccessControlService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 109
    iput-object p2, p0, Lcom/meizu/server/AccessControlService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 111
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 112
    const-string/jumbo v3, "mz_app_lock_control"

    .line 110
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/meizu/server/AccessControlService$1;

    invoke-direct {v2, p0}, Lcom/meizu/server/AccessControlService$1;-><init>(Lcom/meizu/server/AccessControlService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method protected static deleteLock(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 810
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "uriStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    const/4 v2, 0x1

    return v2

    .line 813
    .end local v1    # "uriStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v2, "AccessControlManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t delete key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    const/4 v2, 0x0

    return v2
.end method

.method private dumpPackageName(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 793
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 794
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 797
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 792
    return-void
.end method

.method public static getControlPackages(Landroid/content/ContentResolver;)Ljava/util/HashMap;
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 200
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 203
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v7, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v7}, Lcom/meizu/server/AccessControlService;->getControlPackagesLock(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 204
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-gtz v7, :cond_2

    .line 228
    :cond_0
    if-eqz v0, :cond_1

    .line 229
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_1
    return-object v10

    .line 207
    :cond_2
    :try_start_1
    const-string/jumbo v7, "name"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 208
    .local v4, "nameIndex":I
    const-string/jumbo v7, "value"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 214
    .local v6, "valueIndex":I
    :cond_3
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 215
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v7, "access_control_"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 218
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 223
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameIndex":I
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "valueIndex":I
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    const-string/jumbo v7, "AccessControlManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SQLiteException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    if-eqz v0, :cond_4

    .line 229
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_4
    return-object v10

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "nameIndex":I
    .restart local v6    # "valueIndex":I
    :cond_5
    if-eqz v0, :cond_6

    .line 229
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_6
    return-object v2

    .line 227
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v4    # "nameIndex":I
    .end local v6    # "valueIndex":I
    :catchall_0
    move-exception v7

    .line 228
    if-eqz v0, :cond_7

    .line 229
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_7
    throw v7
.end method

.method protected static getControlPackagesLock(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 248
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    .line 249
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 250
    const-string/jumbo v0, "value"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 252
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 248
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 253
    :catch_0
    move-exception v6

    .line 254
    .local v6, "e":Landroid/database/SQLException;
    invoke-virtual {v6}, Landroid/database/SQLException;->printStackTrace()V

    .line 255
    const-string/jumbo v0, "AccessControlManager"

    const-string/jumbo v1, "Can\'t query"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    return-object v7
.end method

.method private getTopActivitComponentName()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 685
    const/4 v2, 0x0

    .line 686
    .local v2, "ret":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 687
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 688
    const/4 v4, 0x0

    .line 687
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 689
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    .line 690
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 693
    .end local v2    # "ret":Landroid/content/ComponentName;
    :cond_0
    return-object v2
.end method

.method private isVideoActivityRunning()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 835
    iget-object v7, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 836
    const-string/jumbo v8, "activity"

    .line 835
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 837
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 838
    .local v6, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v6, :cond_0

    .line 839
    return v9

    .line 841
    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "runningInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 842
    .local v4, "runningInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v4, :cond_1

    .line 843
    iget-object v0, v4, Landroid/app/ActivityManager$RunningTaskInfo;->allActivitiesClass:Ljava/util/ArrayList;

    .line 844
    .local v0, "allActivitiesClass":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 845
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "runningClass$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 846
    .local v2, "runningClass":Ljava/lang/String;
    sget-object v7, Lcom/meizu/server/AccessControlService;->mVideoActivityClass:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 847
    const/4 v7, 0x1

    return v7

    .line 853
    .end local v0    # "allActivitiesClass":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "runningClass":Ljava/lang/String;
    .end local v3    # "runningClass$iterator":Ljava/util/Iterator;
    .end local v4    # "runningInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    return v9
.end method

.method private loadControlPackages()V
    .locals 8

    .prologue
    .line 159
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/meizu/server/AccessControlService;->getControlPackages(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v3

    .line 160
    .local v3, "pkg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v3, :cond_0

    .line 163
    return-void

    .line 167
    :cond_0
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 168
    .local v4, "set":Ljava/util/Set;
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 169
    .local v1, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 173
    .local v5, "type":Ljava/lang/Integer;
    const-string/jumbo v6, "access_control_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 174
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 173
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 178
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 179
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 182
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 183
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 186
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 187
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/Integer;
    :cond_4
    return-void
.end method

.method private sendAccessControlBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 346
    iget-object v1, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1, p1}, Landroid/content/IntentExt;->setAccessPackageName(Ljava/lang/String;)V

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 341
    return-void
.end method

.method private sendAccessControlBroadcast(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkgString"    # Ljava/lang/String;
    .param p2, "fromNotification"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 360
    iget-object v1, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1, p1}, Landroid/content/IntentExt;->setAccessPackageName(Ljava/lang/String;)V

    .line 362
    :cond_0
    const-string/jumbo v1, "fromNotification"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 355
    return-void
.end method

.method private showAccessControl(Landroid/content/pm/PackageInfo;)V
    .locals 12
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 699
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 700
    .local v6, "time":J
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 701
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/meizu/server/AccessControlService;->checkAccessControl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 702
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 704
    .local v4, "tempCharSequence":Ljava/lang/CharSequence;
    if-eqz v4, :cond_1

    move-object v1, v4

    .line 705
    .local v1, "label":Ljava/lang/CharSequence;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.content.pm.CONFIRM_ACCESS_APPCATONS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v2, "mAccessApp":Landroid/content/Intent;
    iget-object v5, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v5, v3}, Landroid/content/IntentExt;->setAccessPackageName(Ljava/lang/String;)V

    .line 707
    iget-object v5, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/IntentExt;->setAccessPackageLabel(Ljava/lang/String;)V

    .line 708
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 709
    const v5, 0x8000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 710
    iget-object v5, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/16 v8, 0x40

    invoke-virtual {v5, v8}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 711
    iget-object v5, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 713
    .end local v1    # "label":Ljava/lang/CharSequence;
    .end local v2    # "mAccessApp":Landroid/content/Intent;
    .end local v4    # "tempCharSequence":Ljava/lang/CharSequence;
    :cond_0
    const-string/jumbo v5, "AccessControlManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkAccessControl "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v6    # "time":J
    :goto_1
    return-void

    .line 704
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "tempCharSequence":Ljava/lang/CharSequence;
    .restart local v6    # "time":J
    :cond_1
    move-object v1, v3

    .restart local v1    # "label":Ljava/lang/CharSequence;
    goto :goto_0

    .line 714
    .end local v1    # "label":Ljava/lang/CharSequence;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "tempCharSequence":Ljava/lang/CharSequence;
    .end local v6    # "time":J
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AccessControlManager"

    const-string/jumbo v8, "accseeApp error !"

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private startAccessApplication()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 618
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 623
    .local v4, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 624
    :cond_0
    return-void

    .line 619
    .end local v4    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/Exception;
    return-void

    .line 626
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 627
    .local v5, "topComponentName":Landroid/content/ComponentName;
    if-nez v5, :cond_2

    .line 628
    return-void

    .line 630
    :cond_2
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v6, "com.meizu.flyme.launcher"

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, v3}, Lcom/meizu/server/AccessControlService;->checkAccessControl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 632
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v6, "android"

    const-string/jumbo v7, "com.meizu.app.AccessApplication"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    .local v1, "newComponentName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 634
    .local v2, "newIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 635
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 636
    iget-object v6, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v6, v3}, Landroid/content/IntentExt;->setAccessPackageName(Ljava/lang/String;)V

    .line 637
    iget-object v6, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 638
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 615
    .end local v1    # "newComponentName":Landroid/content/ComponentName;
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_3
    return-void
.end method


# virtual methods
.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 373
    const-string/jumbo v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    .line 374
    const/4 v2, 0x0

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 378
    invoke-direct {p0, p1}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 369
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addAccessControlPassMz(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "fromNotification"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 389
    const-string/jumbo v3, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    .line 390
    const/4 v4, 0x0

    .line 388
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v3

    .line 392
    :try_start_0
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 394
    const-string/jumbo v1, "com.android.settings"

    .line 395
    .local v1, "originalSettings":Ljava/lang/String;
    const-string/jumbo v0, "com.meizu.connectivitysettings"

    .line 396
    .local v0, "connectivitySettings":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-direct {p0, v0, p2}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;Z)V

    .line 385
    return-void

    .line 400
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-direct {p0, v1, p2}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 391
    .end local v0    # "connectivitySettings":Ljava/lang/String;
    .end local v1    # "originalSettings":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public addControlPackage(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 467
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 468
    const-string/jumbo v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    .line 469
    const/4 v2, 0x0

    .line 467
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    if-ne p2, v3, :cond_2

    .line 471
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "access_control_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    const/4 v3, 0x1

    .line 474
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 464
    :cond_1
    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 479
    :cond_2
    if-ne p2, v4, :cond_3

    .line 480
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 481
    :try_start_1
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "access_control_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    const/4 v3, 0x2

    .line 483
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 480
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 488
    :cond_3
    if-ne p2, v5, :cond_1

    .line 489
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 490
    :try_start_2
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "access_control_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 494
    const/4 v3, 0x3

    .line 492
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 489
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addTopAppAccessControlPass()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 646
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 647
    const-string/jumbo v2, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    .line 646
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 650
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/server/AccessControlService;->getTopActivitComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 651
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 655
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 645
    return-void

    .line 649
    .end local v0    # "component":Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public checkAccessControl(Ljava/lang/String;)Z
    .locals 8
    .param p1, "mPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 729
    iget-object v3, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 730
    const-string/jumbo v4, "mz_app_lock_control"

    const/4 v5, -0x3

    .line 729
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 732
    .local v1, "appAccessControl":I
    if-nez v1, :cond_0

    .line 733
    return v6

    .line 735
    :cond_0
    iget-object v3, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 736
    const-string/jumbo v4, "access_control"

    .line 735
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/security/AccessControlManager;

    .line 737
    .local v0, "acm":Lmeizu/security/AccessControlManager;
    if-eqz p1, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_2

    .line 739
    :cond_1
    return v6

    .line 738
    :cond_2
    invoke-virtual {v0, p1}, Lmeizu/security/AccessControlManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v3

    .line 737
    if-nez v3, :cond_1

    .line 741
    invoke-virtual {v0, p1}, Lmeizu/security/AccessControlManager;->checkControlPackageType(Ljava/lang/String;)I

    move-result v2

    .line 743
    .local v2, "mControlType":I
    if-nez v2, :cond_3

    .line 744
    return v6

    .line 745
    :cond_3
    if-ne v2, v7, :cond_6

    .line 746
    invoke-virtual {v0}, Lmeizu/security/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 747
    invoke-virtual {v0}, Lmeizu/security/AccessControlManager;->isAccessControlGuardEnable()Z

    move-result v3

    .line 746
    if-eqz v3, :cond_5

    .line 748
    :cond_4
    return v7

    .line 750
    :cond_5
    return v6

    .line 752
    :cond_6
    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 753
    invoke-virtual {v0}, Lmeizu/security/AccessControlManager;->isAccessControlGuardEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 754
    return v7

    .line 756
    :cond_7
    return v6

    .line 759
    :cond_8
    return v6
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "bool":Z
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "bool":Z
    monitor-exit v2

    .line 453
    if-nez v0, :cond_0

    sget-object v1, Lcom/meizu/server/AccessControlService;->mVideoActivityPkg:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/meizu/server/AccessControlService;->isVideoActivityRunning()Z

    move-result v1

    return v1

    .line 446
    .local v0, "bool":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 457
    .local v0, "bool":Z
    :cond_0
    return v0
.end method

.method public checkControlPackageType(Ljava/lang/String;)I
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "type":I
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    const/4 v0, 0x2

    .line 560
    :goto_0
    return v0

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    const/4 v0, 0x1

    goto :goto_0

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 553
    const/4 v0, 0x3

    goto :goto_0

    .line 555
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkVideoActivity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 824
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 825
    :cond_0
    return v1

    .line 827
    :cond_1
    sget-object v0, Lcom/meizu/server/AccessControlService;->mVideoActivityPkg:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 828
    sget-object v0, Lcom/meizu/server/AccessControlService;->mVideoActivityClass:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 827
    if-eqz v0, :cond_2

    .line 829
    const/4 v0, 0x1

    return v0

    .line 831
    :cond_2
    return v1
.end method

.method public clearAccessControlPass()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 431
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 432
    const-string/jumbo v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    .line 431
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 437
    invoke-direct {p0, v2}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 428
    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 766
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 769
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 768
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 770
    const-string/jumbo v2, ", uid="

    .line 768
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 770
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 768
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 771
    const-string/jumbo v2, " without permission "

    .line 768
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 772
    const-string/jumbo v2, "android.permission.DUMP"

    .line 768
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    return-void

    .line 775
    :cond_0
    const-string/jumbo v0, "     "

    .line 776
    .local v0, "prefix":Ljava/lang/String;
    const-string/jumbo v1, "ACCESS_CONTROL MANAGER (dumpsys access_control)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    const-string/jumbo v1, "mAccessControlPasswordEnable="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    iget-boolean v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 780
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 781
    const-string/jumbo v1, "mAccessControlGuardEnable="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 782
    iget-boolean v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlGuardEnable:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 783
    const-string/jumbo v1, "control password  package"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2, v1}, Lcom/meizu/server/AccessControlService;->dumpPackageName(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 785
    const-string/jumbo v1, "control guard package"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2, v1}, Lcom/meizu/server/AccessControlService;->dumpPackageName(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 787
    const-string/jumbo v1, "control open package"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2, v1}, Lcom/meizu/server/AccessControlService;->dumpPackageName(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 764
    return-void
.end method

.method public getControlGuardPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 584
    const-string/jumbo v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    .line 585
    const/4 v2, 0x0

    .line 583
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 587
    :try_start_0
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 586
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getControlOpenPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 598
    const-string/jumbo v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    .line 599
    const/4 v2, 0x0

    .line 597
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 600
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getControlPasswordPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 570
    const-string/jumbo v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    .line 571
    const/4 v2, 0x0

    .line 569
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 572
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isAccessControlGuardEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlGuardEnable:Z

    return v0
.end method

.method public isAccessControlPasswordEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    return v0
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 417
    const-string/jumbo v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    .line 418
    const/4 v2, 0x0

    .line 416
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 422
    invoke-direct {p0, p1}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 413
    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeControlPackage(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 507
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 508
    const-string/jumbo v2, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    .line 509
    const/4 v3, 0x0

    .line 507
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 511
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    monitor-enter v2

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 513
    .local v0, "index":I
    if-eq v0, v4, :cond_0

    .line 514
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 515
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "access_control_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 515
    invoke-static {v1, v3, v4}, Lcom/meizu/server/AccessControlService;->deleteLock(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 517
    invoke-virtual {p0, p1}, Lcom/meizu/server/AccessControlService;->removeAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 504
    .end local v0    # "index":I
    :cond_1
    return-void

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 520
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 521
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    monitor-enter v2

    .line 522
    :try_start_1
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 523
    .restart local v0    # "index":I
    if-eq v0, v4, :cond_0

    .line 524
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 525
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "access_control_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 525
    invoke-static {v1, v3, v4}, Lcom/meizu/server/AccessControlService;->deleteLock(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 527
    invoke-virtual {p0, p1}, Lcom/meizu/server/AccessControlService;->removeAccessControlPass(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 521
    .end local v0    # "index":I
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 530
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 531
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    monitor-enter v2

    .line 532
    :try_start_2
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 533
    .restart local v0    # "index":I
    if-eq v0, v4, :cond_0

    .line 534
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 535
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "access_control_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 535
    invoke-static {v1, v3, v4}, Lcom/meizu/server/AccessControlService;->deleteLock(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 537
    invoke-virtual {p0, p1}, Lcom/meizu/server/AccessControlService;->removeAccessControlPass(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 531
    .end local v0    # "index":I
    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public screenTurnedOff(I)V
    .locals 1
    .param p1, "why"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/meizu/server/AccessControlService;->clearAccessControlPass()V

    .line 610
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/server/AccessControlService;->setAccessControlGuardEnable(Z)V

    .line 612
    invoke-direct {p0}, Lcom/meizu/server/AccessControlService;->startAccessApplication()V

    .line 608
    return-void
.end method

.method public screenTurnedOn()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 664
    invoke-direct {p0}, Lcom/meizu/server/AccessControlService;->getTopActivitComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 665
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 666
    iget-object v7, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 668
    .local v3, "pManager":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v3, v1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 669
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 670
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v7, v7, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    if-eqz v7, :cond_0

    .line 671
    iget-object v7, p0, Lcom/meizu/server/AccessControlService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/meizu/server/AccessControlService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 673
    iget-object v7, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 674
    const-string/jumbo v8, "meizu_keyguard_lock"

    const/4 v9, 0x1

    .line 671
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_1

    :goto_0
    if-nez v5, :cond_0

    .line 675
    invoke-direct {p0, v4}, Lcom/meizu/server/AccessControlService;->showAccessControl(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "pManager":Landroid/content/pm/PackageManager;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "pManager":Landroid/content/pm/PackageManager;
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    move v5, v6

    .line 671
    goto :goto_0

    .line 678
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 679
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public setAccessControlGuardEnable(Z)V
    .locals 3
    .param p1, "paramBoolean"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 299
    const-string/jumbo v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-boolean v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlGuardEnable:Z

    if-eq v0, p1, :cond_0

    .line 302
    iput-boolean p1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlGuardEnable:Z

    .line 304
    :cond_0
    invoke-direct {p0, v2}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public setAccessControlPasswordEnable(Z)V
    .locals 4
    .param p1, "paramBoolean"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 269
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 270
    const-string/jumbo v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    .line 269
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-boolean v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    if-eq v0, p1, :cond_0

    .line 273
    iput-boolean p1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    .line 277
    iget-boolean v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    const-string/jumbo v1, "mz_app_lock_control"

    const/4 v2, 0x1

    .line 278
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 265
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 282
    const-string/jumbo v1, "mz_app_lock_control"

    const/4 v2, 0x0

    .line 281
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/meizu/server/AccessControlService;->loadControlPackages()V

    .line 152
    return-void
.end method
