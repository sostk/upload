.class public Lmeizu/space/MSpaceControllerImpl;
.super Ljava/lang/Object;
.source "MSpaceControllerImpl.java"

# interfaces
.implements Lmeizu/space/MSpaceController;


# static fields
.field private static synthetic -meizu_space_MSpaceController$MSpaceModeSwitchesValues:[I

.field private static PRIVATE_PKG_LIST:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mSpaceController:Lmeizu/space/MSpaceController;


# instance fields
.field private CHILDREN_MODE_URI:Landroid/net/Uri;

.field private PRIVATE_MODE_ENABLE_URI:Landroid/net/Uri;

.field private PRIVATE_MODE_RUNNING_URI:Landroid/net/Uri;

.field private PRIVATE_PKGS_URI:Landroid/net/Uri;

.field private mChildrenModeState:Lmeizu/space/MSpaceController$MSpaceState;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mListens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmeizu/space/MSpaceController$OnChangeListen;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrivateModeState:Lmeizu/space/MSpaceController$MSpaceState;

.field private mPrivatePkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivatePkgString:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0(Lmeizu/space/MSpaceControllerImpl;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->CHILDREN_MODE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lmeizu/space/MSpaceControllerImpl;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->PRIVATE_MODE_ENABLE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get2(Lmeizu/space/MSpaceControllerImpl;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->PRIVATE_MODE_RUNNING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get3(Lmeizu/space/MSpaceControllerImpl;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->PRIVATE_PKGS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private static synthetic -getmeizu_space_MSpaceController$MSpaceModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmeizu/space/MSpaceControllerImpl;->-meizu_space_MSpaceController$MSpaceModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmeizu/space/MSpaceControllerImpl;->-meizu_space_MSpaceController$MSpaceModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmeizu/space/MSpaceController$MSpaceMode;->values()[Lmeizu/space/MSpaceController$MSpaceMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmeizu/space/MSpaceController$MSpaceMode;->CHILDREN:Lmeizu/space/MSpaceController$MSpaceMode;

    invoke-virtual {v1}, Lmeizu/space/MSpaceController$MSpaceMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lmeizu/space/MSpaceController$MSpaceMode;->PRIVACY:Lmeizu/space/MSpaceController$MSpaceMode;

    invoke-virtual {v1}, Lmeizu/space/MSpaceController$MSpaceMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lmeizu/space/MSpaceControllerImpl;->-meizu_space_MSpaceController$MSpaceModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lmeizu/space/MSpaceControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lmeizu/space/MSpaceControllerImpl;->loadChildrenModeSetting()V

    return-void
.end method

.method static synthetic -wrap1(Lmeizu/space/MSpaceControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lmeizu/space/MSpaceControllerImpl;->loadPrivateModeSetting()V

    return-void
.end method

.method static synthetic -wrap2(Lmeizu/space/MSpaceControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lmeizu/space/MSpaceControllerImpl;->loadPrivatePkgSetting()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "MSpaceControllerImpl"

    sput-object v0, Lmeizu/space/MSpaceControllerImpl;->TAG:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "private_pkg_list"

    sput-object v0, Lmeizu/space/MSpaceControllerImpl;->PRIVATE_PKG_LIST:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lmeizu/space/MSpaceController$MSpaceState;->CLOSED:Lmeizu/space/MSpaceController$MSpaceState;

    iput-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivateModeState:Lmeizu/space/MSpaceController$MSpaceState;

    .line 27
    sget-object v0, Lmeizu/space/MSpaceController$MSpaceState;->CLOSED:Lmeizu/space/MSpaceController$MSpaceState;

    iput-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mChildrenModeState:Lmeizu/space/MSpaceController$MSpaceState;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mListens:Ljava/util/List;

    .line 34
    sget-object v0, Lmeizu/space/MSpaceControllerImpl;->PRIVATE_PKG_LIST:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->PRIVATE_PKGS_URI:Landroid/net/Uri;

    .line 35
    const-string/jumbo v0, "mz_private_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->PRIVATE_MODE_ENABLE_URI:Landroid/net/Uri;

    .line 36
    const-string/jumbo v0, "mz_private_mode_running"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->PRIVATE_MODE_RUNNING_URI:Landroid/net/Uri;

    .line 37
    const-string/jumbo v0, "children_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->CHILDREN_MODE_URI:Landroid/net/Uri;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivatePkgList:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lmeizu/space/MSpaceControllerImpl;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mResolver:Landroid/content/ContentResolver;

    .line 45
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 46
    new-instance v0, Lmeizu/space/MSpaceControllerImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lmeizu/space/MSpaceControllerImpl$1;-><init>(Lmeizu/space/MSpaceControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    .line 62
    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmeizu/space/MSpaceControllerImpl;->PRIVATE_MODE_ENABLE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmeizu/space/MSpaceControllerImpl;->PRIVATE_MODE_RUNNING_URI:Landroid/net/Uri;

    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmeizu/space/MSpaceControllerImpl;->CHILDREN_MODE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmeizu/space/MSpaceControllerImpl;->PRIVATE_PKGS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 66
    invoke-direct {p0}, Lmeizu/space/MSpaceControllerImpl;->loadPrivateModeSetting()V

    .line 67
    invoke-direct {p0}, Lmeizu/space/MSpaceControllerImpl;->loadChildrenModeSetting()V

    .line 68
    invoke-direct {p0}, Lmeizu/space/MSpaceControllerImpl;->loadPrivatePkgSetting()V

    .line 42
    return-void
.end method

.method private callOnModeChange(Lmeizu/space/MSpaceController$MSpaceMode;Lmeizu/space/MSpaceController$MSpaceState;)V
    .locals 4
    .param p1, "mode"    # Lmeizu/space/MSpaceController$MSpaceMode;
    .param p2, "state"    # Lmeizu/space/MSpaceController$MSpaceState;

    .prologue
    .line 203
    iget-object v3, p0, Lmeizu/space/MSpaceControllerImpl;->mListens:Ljava/util/List;

    monitor-enter v3

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mListens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 205
    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mListens:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/space/MSpaceController$OnChangeListen;

    .line 206
    .local v1, "listen":Lmeizu/space/MSpaceController$OnChangeListen;
    if-eqz v1, :cond_0

    .line 207
    invoke-interface {v1, p1, p2}, Lmeizu/space/MSpaceController$OnChangeListen;->onPrivacyModeChange(Lmeizu/space/MSpaceController$MSpaceMode;Lmeizu/space/MSpaceController$MSpaceState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "listen":Lmeizu/space/MSpaceController$OnChangeListen;
    :cond_1
    monitor-exit v3

    .line 202
    return-void

    .line 203
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private callOnPackageChange(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "privacy"    # Z

    .prologue
    .line 214
    iget-object v3, p0, Lmeizu/space/MSpaceControllerImpl;->mListens:Ljava/util/List;

    monitor-enter v3

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mListens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 216
    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mListens:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/space/MSpaceController$OnChangeListen;

    .line 217
    .local v1, "listen":Lmeizu/space/MSpaceController$OnChangeListen;
    if-eqz v1, :cond_0

    .line 218
    invoke-interface {v1, p1, p2}, Lmeizu/space/MSpaceController$OnChangeListen;->omPackageModeChange(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "listen":Lmeizu/space/MSpaceController$OnChangeListen;
    :cond_1
    monitor-exit v3

    .line 213
    return-void

    .line 214
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private findListenIndex(Lmeizu/space/MSpaceController$OnChangeListen;)I
    .locals 3
    .param p1, "listen"    # Lmeizu/space/MSpaceController$OnChangeListen;

    .prologue
    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mListens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 194
    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mListens:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/space/MSpaceController$OnChangeListen;

    .line 195
    .local v1, "listen1":Lmeizu/space/MSpaceController$OnChangeListen;
    if-eqz v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 196
    return v0

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "listen1":Lmeizu/space/MSpaceController$OnChangeListen;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public static getController(Landroid/content/Context;)Lmeizu/space/MSpaceController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const-class v1, Lmeizu/space/MSpaceController;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lmeizu/space/MSpaceControllerImpl;->mSpaceController:Lmeizu/space/MSpaceController;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lmeizu/space/MSpaceControllerImpl;

    invoke-direct {v0, p0}, Lmeizu/space/MSpaceControllerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmeizu/space/MSpaceControllerImpl;->mSpaceController:Lmeizu/space/MSpaceController;

    .line 76
    :cond_0
    sget-object v0, Lmeizu/space/MSpaceControllerImpl;->mSpaceController:Lmeizu/space/MSpaceController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isPrivacyContact(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "flyme.privacy.contact"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 176
    .local v0, "privacyContact":Z
    :goto_0
    sget-object v1, Lmeizu/space/MSpaceControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",privacyContact="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v0

    .line 175
    .end local v0    # "privacyContact":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "privacyContact":Z
    goto :goto_0
.end method

.method private loadChildrenModeSetting()V
    .locals 5

    .prologue
    .line 94
    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "children_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 95
    .local v0, "childMode":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lmeizu/space/MSpaceController$MSpaceState;->RUNNING:Lmeizu/space/MSpaceController$MSpaceState;

    .line 96
    .local v1, "modeState":Lmeizu/space/MSpaceController$MSpaceState;
    :goto_1
    sget-object v2, Lmeizu/space/MSpaceControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadChildrenModeSetting childMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mChildrenModeState:Lmeizu/space/MSpaceController$MSpaceState;

    if-eq v1, v2, :cond_0

    .line 98
    iput-object v1, p0, Lmeizu/space/MSpaceControllerImpl;->mChildrenModeState:Lmeizu/space/MSpaceController$MSpaceState;

    .line 99
    sget-object v2, Lmeizu/space/MSpaceController$MSpaceMode;->CHILDREN:Lmeizu/space/MSpaceController$MSpaceMode;

    iget-object v3, p0, Lmeizu/space/MSpaceControllerImpl;->mChildrenModeState:Lmeizu/space/MSpaceController$MSpaceState;

    invoke-direct {p0, v2, v3}, Lmeizu/space/MSpaceControllerImpl;->callOnModeChange(Lmeizu/space/MSpaceController$MSpaceMode;Lmeizu/space/MSpaceController$MSpaceState;)V

    .line 93
    :cond_0
    return-void

    .line 94
    .end local v0    # "childMode":Z
    .end local v1    # "modeState":Lmeizu/space/MSpaceController$MSpaceState;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "childMode":Z
    goto :goto_0

    .line 95
    :cond_2
    sget-object v1, Lmeizu/space/MSpaceController$MSpaceState;->CLOSED:Lmeizu/space/MSpaceController$MSpaceState;

    .restart local v1    # "modeState":Lmeizu/space/MSpaceController$MSpaceState;
    goto :goto_1
.end method

.method private loadPrivateModeSetting()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 81
    iget-object v3, p0, Lmeizu/space/MSpaceControllerImpl;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "mz_private_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    const/4 v1, 0x1

    .line 82
    .local v1, "privateModeOn":Z
    :goto_0
    iget-object v3, p0, Lmeizu/space/MSpaceControllerImpl;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "mz_private_mode_running"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_2

    const/4 v2, 0x1

    .line 83
    .local v2, "privateModeRunning":Z
    :goto_1
    sget-object v3, Lmeizu/space/MSpaceControllerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadPrivateModeSetting privateModeOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",privateModeRunning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz v1, :cond_0

    .line 85
    if-eqz v2, :cond_3

    sget-object v0, Lmeizu/space/MSpaceController$MSpaceState;->RUNNING:Lmeizu/space/MSpaceController$MSpaceState;

    .line 86
    .local v0, "modeState":Lmeizu/space/MSpaceController$MSpaceState;
    :goto_2
    iget-object v3, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivateModeState:Lmeizu/space/MSpaceController$MSpaceState;

    if-eq v0, v3, :cond_0

    .line 87
    iput-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivateModeState:Lmeizu/space/MSpaceController$MSpaceState;

    .line 88
    sget-object v3, Lmeizu/space/MSpaceController$MSpaceMode;->PRIVACY:Lmeizu/space/MSpaceController$MSpaceMode;

    iget-object v4, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivateModeState:Lmeizu/space/MSpaceController$MSpaceState;

    invoke-direct {p0, v3, v4}, Lmeizu/space/MSpaceControllerImpl;->callOnModeChange(Lmeizu/space/MSpaceController$MSpaceMode;Lmeizu/space/MSpaceController$MSpaceState;)V

    .line 80
    .end local v0    # "modeState":Lmeizu/space/MSpaceController$MSpaceState;
    :cond_0
    return-void

    .line 81
    .end local v1    # "privateModeOn":Z
    .end local v2    # "privateModeRunning":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "privateModeOn":Z
    goto :goto_0

    .line 82
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "privateModeRunning":Z
    goto :goto_1

    .line 85
    :cond_3
    sget-object v0, Lmeizu/space/MSpaceController$MSpaceState;->ENABLE:Lmeizu/space/MSpaceController$MSpaceState;

    .restart local v0    # "modeState":Lmeizu/space/MSpaceController$MSpaceState;
    goto :goto_2
.end method

.method private loadPrivatePkgSetting()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-object v5, p0, Lmeizu/space/MSpaceControllerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lmeizu/space/MSpaceControllerImpl;->PRIVATE_PKG_LIST:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "pkgs":Ljava/lang/String;
    sget-object v5, Lmeizu/space/MSpaceControllerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadPrivatePkgSetting private_pkg_list="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz v3, :cond_4

    .line 107
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "list":[Ljava/lang/String;
    iget-object v5, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivatePkgList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 110
    invoke-direct {p0, v1, v4}, Lmeizu/space/MSpaceControllerImpl;->callOnPackageChange(Ljava/lang/String;Z)V

    goto :goto_0

    .line 113
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    array-length v6, v0

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v1, v0, v5

    .line 114
    .restart local v1    # "pkg":Ljava/lang/String;
    iget-object v7, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivatePkgList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 115
    const/4 v7, 0x1

    invoke-direct {p0, v1, v7}, Lmeizu/space/MSpaceControllerImpl;->callOnPackageChange(Ljava/lang/String;Z)V

    .line 113
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 118
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_3
    iput-object v3, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivatePkgString:Ljava/lang/String;

    .line 119
    iget-object v5, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivatePkgList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 120
    array-length v5, v0

    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v1, v0, v4

    .line 121
    .restart local v1    # "pkg":Ljava/lang/String;
    iget-object v6, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivatePkgList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 124
    .end local v0    # "list":[Ljava/lang/String;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "pkg$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v5, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivatePkgString:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivatePkgList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 125
    iget-object v5, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivatePkgList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "pkg$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    .restart local v1    # "pkg":Ljava/lang/String;
    invoke-direct {p0, v1, v4}, Lmeizu/space/MSpaceControllerImpl;->callOnPackageChange(Ljava/lang/String;Z)V

    goto :goto_3

    .line 129
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "pkg$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v4, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivatePkgList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 103
    :cond_6
    return-void
.end method


# virtual methods
.method public addOnChangeListen(Lmeizu/space/MSpaceController$OnChangeListen;)V
    .locals 4
    .param p1, "listen"    # Lmeizu/space/MSpaceController$OnChangeListen;

    .prologue
    .line 182
    if-eqz p1, :cond_1

    .line 183
    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mListens:Ljava/util/List;

    monitor-enter v2

    .line 184
    :try_start_0
    invoke-direct {p0, p1}, Lmeizu/space/MSpaceControllerImpl;->findListenIndex(Lmeizu/space/MSpaceController$OnChangeListen;)I

    move-result v0

    .line 185
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 186
    iget-object v1, p0, Lmeizu/space/MSpaceControllerImpl;->mListens:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 181
    .end local v0    # "index":I
    :cond_1
    return-void

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getMSpaceModeState(Lmeizu/space/MSpaceController$MSpaceMode;)Lmeizu/space/MSpaceController$MSpaceState;
    .locals 2
    .param p1, "mode"    # Lmeizu/space/MSpaceController$MSpaceMode;

    .prologue
    .line 135
    invoke-static {}, Lmeizu/space/MSpaceControllerImpl;->-getmeizu_space_MSpaceController$MSpaceModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lmeizu/space/MSpaceController$MSpaceMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    sget-object v0, Lmeizu/space/MSpaceController$MSpaceState;->CLOSED:Lmeizu/space/MSpaceController$MSpaceState;

    return-object v0

    .line 137
    :pswitch_0
    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivateModeState:Lmeizu/space/MSpaceController$MSpaceState;

    return-object v0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mChildrenModeState:Lmeizu/space/MSpaceController$MSpaceState;

    return-object v0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isChildrenMode()Z
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lmeizu/space/MSpaceController$MSpaceMode;->CHILDREN:Lmeizu/space/MSpaceController$MSpaceMode;

    invoke-virtual {p0, v0}, Lmeizu/space/MSpaceControllerImpl;->getMSpaceModeState(Lmeizu/space/MSpaceController$MSpaceMode;)Lmeizu/space/MSpaceController$MSpaceState;

    move-result-object v0

    sget-object v1, Lmeizu/space/MSpaceController$MSpaceState;->RUNNING:Lmeizu/space/MSpaceController$MSpaceState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivacyPackage(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl;->mPrivatePkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSilenceNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 151
    iget-object v1, p0, Lmeizu/space/MSpaceControllerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 152
    .local v0, "onKeyguard":Z
    sget-object v1, Lmeizu/space/MSpaceControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyguard="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0, p1, v0}, Lmeizu/space/MSpaceControllerImpl;->isSilenceNotification(Landroid/service/notification/StatusBarNotification;Z)Z

    move-result v1

    return v1
.end method

.method public isSilenceNotification(Landroid/service/notification/StatusBarNotification;Z)Z
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "onKeyguard"    # Z

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, "silence":Z
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    .line 160
    .local v3, "uid":I
    sget-object v4, Lmeizu/space/MSpaceController$MSpaceMode;->PRIVACY:Lmeizu/space/MSpaceController$MSpaceMode;

    invoke-virtual {p0, v4}, Lmeizu/space/MSpaceControllerImpl;->getMSpaceModeState(Lmeizu/space/MSpaceController$MSpaceMode;)Lmeizu/space/MSpaceController$MSpaceState;

    move-result-object v2

    .line 161
    .local v2, "state":Lmeizu/space/MSpaceController$MSpaceState;
    if-eqz p2, :cond_2

    sget-object v4, Lmeizu/space/MSpaceController$MSpaceState;->CLOSED:Lmeizu/space/MSpaceController$MSpaceState;

    if-eq v2, v4, :cond_1

    :goto_0
    const/4 v0, 0x1

    .line 162
    .local v0, "privacyMode":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lmeizu/space/MSpaceControllerImpl;->isPrivacyPackage(Ljava/lang/String;I)Z

    move-result v1

    .line 164
    .local v1, "silence":Z
    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lmeizu/space/MSpaceControllerImpl;->isPrivacyContact(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    .line 166
    .end local v1    # "silence":Z
    :cond_0
    :goto_2
    return v1

    .line 161
    .end local v0    # "privacyMode":Z
    .local v1, "silence":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "privacyMode":Z
    goto :goto_1

    .end local v0    # "privacyMode":Z
    :cond_2
    sget-object v4, Lmeizu/space/MSpaceController$MSpaceState;->ENABLE:Lmeizu/space/MSpaceController$MSpaceState;

    if-ne v2, v4, :cond_1

    goto :goto_0

    .line 164
    .restart local v0    # "privacyMode":Z
    .local v1, "silence":Z
    :cond_3
    const/4 v1, 0x1

    .local v1, "silence":Z
    goto :goto_2
.end method

.method public removeOnChangeListen(Lmeizu/space/MSpaceController$OnChangeListen;)V
    .locals 3
    .param p1, "listen"    # Lmeizu/space/MSpaceController$OnChangeListen;

    .prologue
    .line 226
    if-eqz p1, :cond_1

    .line 227
    iget-object v2, p0, Lmeizu/space/MSpaceControllerImpl;->mListens:Ljava/util/List;

    monitor-enter v2

    .line 228
    :try_start_0
    invoke-direct {p0, p1}, Lmeizu/space/MSpaceControllerImpl;->findListenIndex(Lmeizu/space/MSpaceController$OnChangeListen;)I

    move-result v0

    .line 229
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 230
    iget-object v1, p0, Lmeizu/space/MSpaceControllerImpl;->mListens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 225
    .end local v0    # "index":I
    :cond_1
    return-void

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
